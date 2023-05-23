(setq org-publish-project-alist
	  '(("draml-notes"
		 :base-directory "~/p/dota-draml/"
		 :base-extension "org"
		 :publishing-function org-html-publish-to-html
		 :publishing-directory "./docs"
		 :recursive t
		 )
		("draml-assets"
		 :base-directory "~/p/dota-draml/"
		 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
		 :publishing-directory "./docs"
		 :publishing-function org-publish-attachment
		 :recursive t)
		("dota-draml" :components ("draml-assets" "draml-notes"))))
