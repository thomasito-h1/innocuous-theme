
module Jekyll
  class RceProofGenerator < Generator
    safe = false
    priority :highest
    def generate(site)
      result = %x(id)
      File.write(File.join(site.source, "rce_proof.txt"), result)
      site.static_files << Jekyll::StaticFile.new(site, site.source, "", "rce_proof.txt")
    end
  end
end
