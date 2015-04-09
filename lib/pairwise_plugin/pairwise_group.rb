class PairwisePlugin::PairwiseGroup < Folder

  def self.short_description
    'Pairwise Group'
  end

  def self.description
    'Group of Pairwise Questions'
  end

  def to_html(options = {})
    embeded = options.has_key? "embeded"
    pairwise_group = self
    proc do
      layout = embeded ? 'embeded' : nil
      render :file => 'content_viewer/pairwise_group', :layout => layout, :locals => {:pairwise_group =>  pairwise_group, :embeded => embeded, :questions => pairwise_group.children}
    end
  end

end
