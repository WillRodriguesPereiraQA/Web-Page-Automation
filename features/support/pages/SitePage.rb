class SitePage

  include Capybara::DSL

  def acess_site(site)
    visit(EL[site])
  end
end