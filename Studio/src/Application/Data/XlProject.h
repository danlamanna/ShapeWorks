#include <string>
#include <vector>

#include <xlnt/xlnt.hpp>

class XlProject {

public:

  XlProject();

  bool load(std::string filename);

  bool save(std::string filename);

  std::vector<std::string> get_original_files();
  void set_original_files(std::vector<std::string> files);
  std::vector<std::string> get_distance_transform_files();
  void set_distance_transform_files(std::vector<std::string> files);
  std::vector<std::string> get_local_point_files();
  void set_local_point_files(std::vector<std::string> files);
  std::vector<std::string> get_global_point_files();
  void set_global_point_files(std::vector<std::string> files);

private:

  std::vector<std::string> original_files_;
  std::vector<std::string> distance_transform_files_;
  std::vector<std::string> local_point_files_;
  std::vector<std::string> global_point_files_;

  int get_index_for_column(std::string name, bool create_if_not_found = false);

  std::vector<std::string> get_string_column(std::string name);
  void save_string_column(std::string name, std::vector<std::string> items);

  xlnt::workbook wb_;

  bool loaded_ = false;
};
