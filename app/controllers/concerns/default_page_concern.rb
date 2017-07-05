module DefaultPageConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end
    
    def set_page_defaults
        @page_title = "Isaac Johnsen's Portfolio | Home"
        @seo_keywords = "Isaac Johnsen's Portfolio"
    end
end
