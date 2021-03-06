<?php
class ControllerInformationCategory extends Controller {
	public function index() {
		$data['breadcrumbs'] 	= array();
		$data['breadcrumbs'][]  = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->language->get('common/home')
		);
		if (isset($this->request->get['path'])) {
			$url = '';

			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['limit'])) {
				$url .= '&limit=' . $this->request->get['limit'];
			}

			$path = '';

			$parts = explode('_', (string)$this->request->get['path']);
			//$category_id = (int)array_pop($parts);

			foreach ($parts as $path_id) {
				if (!$path) {
					$path = (int)$path_id;
					
				} else {
					$path .= '_' . (int)$path_id;

				}
				$this->load->model('catalog/category');
				$category_info = $this->model_catalog_category->getCategory($path_id);

				if ($category_info) {
					$data['breadcrumbs'][] = array(
						'text' => $category_info['name'],
						'href' => $this->url->link('product/category', 'path=' . $path . $url)
					);
				}
			}
		} else {
			$category_id = 0;
		}
		//读取栏目信息
		$this->load->model('catalog/information');
		
		$data['informations'] = array();
		//从请求取得当前页数
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		$parent_id = (int)$this->request->get['path'];
		$start=($page - 1) * $this->config->get('config_limit_catalog');
		$limit=$this->config->get('config_limit_catalog');
		$filter_data = array(
			'start' 	=> ($page - 1) * $this->config->get('config_limit_catalog'),
			'limit' 	=> $this->config->get('config_limit_catalog'),
			'parent_id' => $parent_id
		);
		foreach ($this->model_catalog_information->getInformations($parent_id,$start,$limit) as $result) {
				/*//测试代码
				foreach ($result as $key => $value) {
					echo $key.'————>'.$value.'<br>';
				}
				//测试代码结束*/
				$soImages="/<img (.*?)>/";/*"/<img (.*?) src=\"(.+?)\".*?>/" */
				$str=htmlspecialchars_decode($result['description']);
				preg_match($soImages, $str, $ereg);
				if(isset($ereg[0])){
					$thumimg=$ereg[0];
				}else{
					$thumimg='';
				}
				$data['informations'][] = array(
					'title' 		=> $result['title'],
					'href'  		=> $this->url->link('information/information', 'information_id=' . $result['information_id']),
					'description'   => mb_substr(strip_tags(htmlspecialchars_decode($result['description'])), 0,170,'UTF-8').'...',
					'thumimg'		=> $thumimg,
					'createtime' => $result['createtime']
				);
			
		}//information
		//分页
		//总页数
		$information_total = $this->model_catalog_information->getTotalInformations($parent_id);
		$pagination = new Pagination();
		$pagination->total = $information_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_limit_catalog');//自己添加的值
		$pagination->url = $this->url->link('information/category', $url . '&path=' . $parent_id . '&page={page}', true);

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($information_total) ? (($page - 1) * $this->config->get('config_limit_catalog')) + 1 : 0, ((($page - 1) * $this->config->get('config_limit_catalog')) > ($information_total - $this->config->get('config_limit_catalog'))) ? $information_total : ((($page - 1) * $this->config->get('config_limit_catalog')) + $this->config->get('config_limit_catalog')), $information_total, ceil($information_total / $this->config->get('config_limit_catalog')));


			$data['column_left'] = $this->load->controller('common/column_left');
            $data['column_right'] = $this->load->controller('common/column_right');
            $data['content_top'] = $this->load->controller('common/content_top');
            $data['content_bottom'] = $this->load->controller('common/content_bottom');
            $data['footer'] = $this->load->controller('common/footer');
            $data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('information/category', $data));
	}//index()
}//class