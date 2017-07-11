module DefaultPageConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end
    
    def set_page_defaults
        @page_title = "Portfolio | Thor Madsen "
        @seo_keywords = "Thor Madsen's Portfolio"
    end
end
