class BloggersLicense < CanTango::License
  def initialize name
    super
  end

  def permit_rules
    can(:create, Article)
    can(:update, Blog)
     # use any licenses here
  end
end
