Dir["#{Rails.root}/lib/hotfixes/*.rb"].each do |hotfix|
  Rails.logger.info(%{HOTIFX: Applying patch file #{hotfix}})
  load hotfix
end
