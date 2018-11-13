After do |scenario|
scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        print(scenario_name.downcase!, 'Falhou')
    else
        print(scenario_name.downcase!, 'Passou')
    end

end