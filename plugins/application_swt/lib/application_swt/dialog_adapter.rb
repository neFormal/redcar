module Redcar
  class ApplicationSWT
    class DialogAdapter
      def open_file(window, options)
        file_dialog(window, Swt::SWT::OPEN, options)
      end
      
      def save_file(window, options)
        file_dialog(window, Swt::SWT::SAVE, options)
      end
      
      private
      
      def file_dialog(window, type, options)
        dialog = Swt::Widgets::FileDialog.new(window.controller.shell, type)
        if options[:filter_path]
          dialog.set_filter_path(options[:filter_path])
        end
        dialog.open
      end
    end
  end
end