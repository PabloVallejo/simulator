namespace :importation do
  desc "Task related to importation of spreadsheets into database."

  task private_cloud_ii: :environment do
    @columns = {
      code: 'Código',

      ut_private_cloud: 'UT NUBE PRIVADA (SYNAPSIS COL Y PER)',
      colsoft: 'COLSOFT',
      ifx: 'IFX',
      colombia_telecomunications: 'COLOMBIA TELECOMUNICACIONES',
      une: 'UNE',
      level_3: 'LEVEL 3',
      ut_cf_pl_iv: 'UT CF-PL-IV',

      ut_private_cloud_i: 'UT NUBE PRIVADA (SYNAPSIS COL Y PER) I',
      colsoft_i: 'COLSOFT I',
      ifx_i: 'IFX I',
      colombia_telecomunications_i: 'COLOMBIA TELECOMUNICACIONES I',
      une_i: 'UNE I',
      level_3_i: 'LEVEL 3 I',
      ut_cf_pl_iv_i: 'UT CF-PL-IV I'
    }

    xlsx = Roo::Spreadsheet.open("./app/assets/spreadsheets/catalogo.xlsx")
    sheet = xlsx.sheet(0)

    sheet.each_with_index(@columns) do |hash, index|
      next if index == 0

      puts ''
      puts '--------'
      puts hash
      puts '--------'
      puts ''

      next if index > 1

      private_cloud_ii = PrivateCloudIi.find_by_code(hash[:code])
      providers = {
        ut_private_cloud: Provider.find_by_name('UT NUBE PRIVADA (SYNAPSIS COL Y PER)'),
        colsoft: Provider.find_by_name('COLSOFT'),
        ifx: Provider.find_by_name('IFX'),
        colombia_telecomunications: Provider.find_by_name('COLOMBIA TELECOMUNICACIONES'),
        une: Provider.find_by_name('UNE'),
        level_3: Provider.find_by_name('LEVEL 3'),
        ut_cf_pl_iv: Provider.find_by_name('UT CF-PL-IV')
      }

      keys = [
        'ut_private_cloud',
        'colsoft',
        'ifx',
        'colombia_telecomunications',
        'une',
        'level_3',
        'ut_cf_pl_iv'
      ]

      keys.each_with_index do |name|
        puts ' >> '
        puts name
        puts providers[name.to_sym]

        sp = ServicePrice.create(
          provider: providers[name.to_sym],
          private_cloud_ii: private_cloud_ii,
          price: hash[name]
        )

        puts sp.errors.inspect
        puts '<<'
        puts ''
      end

      puts this.not.exist
      # Installation
      return;

    end

  end

end
