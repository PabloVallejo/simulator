namespace :importation do
  desc "Task related to importation of spreadsheets into database."

  task private_cloud_ii: :environment do
    @columns = {
      code: 'Código',
      category: 'Categoría',
      service_name: 'Nombre del servicio',
      service_level: 'Nivel de servicio',
      elasticity: 'Elasticidad',
      server: 'Servidor',
      deliver_mode: 'Modalidad de entrega del servicio',
      version: 'Versión',

      physical_cores: 'Cantidad core físico',
      virtual_cpus: 'Cantidad VirtualCPU',
      operative_system: 'Sistema Operativo',
      processor_speed: 'Velocidad Procesador',
      memory_ram: 'Memoria RAM (GB)',
      storage: 'Almacenamiento (GB)',

      characteristic_1: 'Característica 1',
      characteristic_2: 'Característica 2',
      characteristic_3: 'Característica 3',
      characteristic_4: 'Característica 4',
      billing_unit: 'Unidad de facturación'
    }

    xlsx = Roo::Spreadsheet.open("./app/assets/spreadsheets/catalogo.xlsx")
    sheet = xlsx.sheet(0)

    sheet.each_with_index(@columns) do |hash, index|
      next if index == 0

      # Create private cloud II.
      PrivateCloudIi.create(hash)
    end

  end

end
