module Pod
  class Installer
    def _set_permissions(permissions)
      installer = installer_rep
      for pod in installer.pods
        # if the pod is actually in Pods/, and not a :path linked pod
        if pod.root.parent == installer.sandbox_root
          for file in pod.source_files
            File.chmod(permissions, file)
          end
        end
      end
    end
    
    alias_method :real_perform_post_install_actions, :perform_post_install_actions
    def perform_post_install_actions
      real_perform_post_install_actions
      _set_permissions(0444)
    end
    
    alias_method :real_run_pre_install_hooks, :run_pre_install_hooks
    def run_pre_install_hooks
      real_run_pre_install_hooks
      _set_permissions(0644)
    end
  end
end