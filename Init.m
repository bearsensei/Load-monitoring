tic;
file_path = 'E:\PhD\REFIT_CLEANED';
file_format = '*.csv';
file_name = fullfile (file_path,file_format);
file_list = dir(file_name);
file_list_table = struct2table(file_list);
file_size = size(file_list_table);
file_length = file_size(1);

file_list = file_list_table(:,1);
file_list.data = file_list.name;

file_count = 0;
file_read = cell2table({});
 
for i = 1: file_length
    

        file_list.data{i} = readtable(fullfile(file_list_table.folder{i},file_list.name{i}));
        file_list.size{i} = size(file_list.data{i});
        file_list.length{i} = file_list.size{i}(1);

 
end
toc