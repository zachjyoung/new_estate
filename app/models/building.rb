class Building < ActiveRecord::Base
  validates_presence_of :street_address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :postal_code
  validates_presence_of :description
  
  validates_format_of :street_address, :without => /foo/
  validates_format_of :city, :without => /foo/
  validates_format_of :state, :with => /(?-i:A[LKSZRAEP]|C[AOT]|D[EC]|F[LM]|G[AU]|HI|I[ADLN]|K[SY]|LA|M[ADEHINOPST]|N[CDEHJMVY]|O[HKR]|P[ARW]|RI|S[CD]|T[NX]|UT|V[AIT]|W[AIVY])/
  validates_format_of :postal_code, :without => /foo/
end

