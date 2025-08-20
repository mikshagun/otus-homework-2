package user_service.mapper;

import org.mapstruct.*;
import user_service.dto.UserDTO;
import user_service.entity.User;

@Mapper(componentModel = "spring", nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface UserMapper {

    @Mapping(target = "id", ignore = true)
    @BeanMapping(resultType = User.class)
    User toEntity(UserDTO userDTO);

    UserDTO toDto(User user);

    @BeanMapping(resultType = User.class)
    void updateEntityFromDto(UserDTO userDTO, @MappingTarget User user);
}
