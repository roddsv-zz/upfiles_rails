class FileUploader < CarrierWave::Uploader::Base
 
  storage :file
 
  # Local onde serão guardado os arquivos
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 
  # Tipos de extensão aceitas
  def extension_whitelist
     %w(txt)
  end
end