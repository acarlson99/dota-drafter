;; This file configures org mode's publish functionality to generate the gh-pages site for this project.
;; Load this file/buffer, evaluate it, and then execute: M-x org-publish-project RET gh-pages RET

(defvar proj-dir (file-name-directory (buffer-file-name)))

(setq org-publish-project-alist
	  `(("gh-notes"
		 :base-directory ,proj-dir
		 :base-extension "org"
		 :publishing-function org-html-publish-to-html
		 :publishing-directory ,(string-join `(,proj-dir "docs"))
		 :recursive t)
		("gh-assets"
		 :base-directory ,proj-dir
		 :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
		 :publishing-directory ,(string-join `(,proj-dir "docs"))
		 :publishing-function org-publish-attachment)
		("gh-pages" :components ("gh-assets" "gh-notes"))))
