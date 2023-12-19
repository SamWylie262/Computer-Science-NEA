// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum CardsScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('card_id')
  cardId(r'card_id'),
  @JsonValue('deck_id')
  deckId(r'deck_id'),
  question,
  answer,
  due,
  @JsonValue('tag_id')
  tagId(r'tag_id');

  const CardsScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum CustomStudyScalarFieldEnum implements _i1.PrismaEnum {
  customid,
  @JsonValue('custom_due')
  customDue(r'custom_due');

  const CustomStudyScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum DecksScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('deck_id')
  deckId(r'deck_id'),
  @JsonValue('user_id')
  userId(r'user_id'),
  title,
  datecreated;

  const DecksScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum TagsScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('tag_id')
  tagId(r'tag_id'),
  @JsonValue('tag_name')
  tagName(r'tag_name');

  const TagsScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum UsersScalarFieldEnum implements _i1.PrismaEnum {
  @JsonValue('user_id')
  userId(r'user_id'),
  username,
  @JsonValue('password_hash')
  passwordHash(r'password_hash');

  const UsersScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class CardsWhereInput implements _i1.JsonSerializable {
  const CardsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
    this.decks,
    this.tags,
  });

  factory CardsWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CardsWhereInputFromJson(json);

  final Iterable<CardsWhereInput>? AND;

  final Iterable<CardsWhereInput>? OR;

  final Iterable<CardsWhereInput>? NOT;

  @JsonKey(name: r'card_id')
  final IntFilter? cardId;

  @JsonKey(name: r'deck_id')
  final IntNullableFilter? deckId;

  final StringNullableFilter? question;

  final StringNullableFilter? answer;

  final IntNullableFilter? due;

  @JsonKey(name: r'tag_id')
  final IntNullableFilter? tagId;

  final DecksNullableRelationFilter? decks;

  final TagsNullableRelationFilter? tags;

  @override
  Map<String, dynamic> toJson() => _$CardsWhereInputToJson(this);
}

@_i1.jsonSerializable
class CardsOrderByWithRelationInput implements _i1.JsonSerializable {
  const CardsOrderByWithRelationInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
    this.decks,
    this.tags,
  });

  factory CardsOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$CardsOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'card_id')
  final SortOrder? cardId;

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  final SortOrder? question;

  final SortOrder? answer;

  final SortOrder? due;

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  final DecksOrderByWithRelationInput? decks;

  final TagsOrderByWithRelationInput? tags;

  @override
  Map<String, dynamic> toJson() => _$CardsOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class CardsWhereUniqueInput implements _i1.JsonSerializable {
  const CardsWhereUniqueInput({
    this.cardId,
    this.AND,
    this.OR,
    this.NOT,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
    this.decks,
    this.tags,
  });

  factory CardsWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CardsWhereUniqueInputFromJson(json);

  @JsonKey(name: r'card_id')
  final int? cardId;

  final Iterable<CardsWhereInput>? AND;

  final Iterable<CardsWhereInput>? OR;

  final Iterable<CardsWhereInput>? NOT;

  @JsonKey(name: r'deck_id')
  final IntNullableFilter? deckId;

  final StringNullableFilter? question;

  final StringNullableFilter? answer;

  final IntNullableFilter? due;

  @JsonKey(name: r'tag_id')
  final IntNullableFilter? tagId;

  final DecksNullableRelationFilter? decks;

  final TagsNullableRelationFilter? tags;

  @override
  Map<String, dynamic> toJson() => _$CardsWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class CardsOrderByWithAggregationInput implements _i1.JsonSerializable {
  const CardsOrderByWithAggregationInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory CardsOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'card_id')
  final SortOrder? cardId;

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  final SortOrder? question;

  final SortOrder? answer;

  final SortOrder? due;

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @JsonKey(name: r'_count')
  final CardsCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final CardsAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final CardsMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final CardsMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final CardsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class CardsScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const CardsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<CardsScalarWhereWithAggregatesInput>? AND;

  final Iterable<CardsScalarWhereWithAggregatesInput>? OR;

  final Iterable<CardsScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'card_id')
  final IntWithAggregatesFilter? cardId;

  @JsonKey(name: r'deck_id')
  final IntNullableWithAggregatesFilter? deckId;

  final StringNullableWithAggregatesFilter? question;

  final StringNullableWithAggregatesFilter? answer;

  final IntNullableWithAggregatesFilter? due;

  @JsonKey(name: r'tag_id')
  final IntNullableWithAggregatesFilter? tagId;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyWhereInput implements _i1.JsonSerializable {
  const CustomStudyWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.customid,
    this.customDue,
  });

  factory CustomStudyWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyWhereInputFromJson(json);

  final Iterable<CustomStudyWhereInput>? AND;

  final Iterable<CustomStudyWhereInput>? OR;

  final Iterable<CustomStudyWhereInput>? NOT;

  final IntFilter? customid;

  @JsonKey(name: r'custom_due')
  final IntNullableFilter? customDue;

  @override
  Map<String, dynamic> toJson() => _$CustomStudyWhereInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyOrderByWithRelationInput implements _i1.JsonSerializable {
  const CustomStudyOrderByWithRelationInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyOrderByWithRelationInputFromJson(json);

  final SortOrder? customid;

  @JsonKey(name: r'custom_due')
  final SortOrder? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyWhereUniqueInput implements _i1.JsonSerializable {
  const CustomStudyWhereUniqueInput({
    this.customid,
    this.AND,
    this.OR,
    this.NOT,
    this.customDue,
  });

  factory CustomStudyWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyWhereUniqueInputFromJson(json);

  final int? customid;

  final Iterable<CustomStudyWhereInput>? AND;

  final Iterable<CustomStudyWhereInput>? OR;

  final Iterable<CustomStudyWhereInput>? NOT;

  @JsonKey(name: r'custom_due')
  final IntNullableFilter? customDue;

  @override
  Map<String, dynamic> toJson() => _$CustomStudyWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyOrderByWithAggregationInput implements _i1.JsonSerializable {
  const CustomStudyOrderByWithAggregationInput({
    this.customid,
    this.customDue,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory CustomStudyOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyOrderByWithAggregationInputFromJson(json);

  final SortOrder? customid;

  @JsonKey(name: r'custom_due')
  final SortOrder? customDue;

  @JsonKey(name: r'_count')
  final CustomStudyCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final CustomStudyAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final CustomStudyMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final CustomStudyMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final CustomStudySumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
  const CustomStudyScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.customid,
    this.customDue,
  });

  factory CustomStudyScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<CustomStudyScalarWhereWithAggregatesInput>? AND;

  final Iterable<CustomStudyScalarWhereWithAggregatesInput>? OR;

  final Iterable<CustomStudyScalarWhereWithAggregatesInput>? NOT;

  final IntWithAggregatesFilter? customid;

  @JsonKey(name: r'custom_due')
  final IntNullableWithAggregatesFilter? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class DecksWhereInput implements _i1.JsonSerializable {
  const DecksWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
    this.cards,
    this.users,
  });

  factory DecksWhereInput.fromJson(Map<String, dynamic> json) =>
      _$DecksWhereInputFromJson(json);

  final Iterable<DecksWhereInput>? AND;

  final Iterable<DecksWhereInput>? OR;

  final Iterable<DecksWhereInput>? NOT;

  @JsonKey(name: r'deck_id')
  final IntFilter? deckId;

  @JsonKey(name: r'user_id')
  final IntNullableFilter? userId;

  final StringNullableFilter? title;

  final StringNullableFilter? datecreated;

  final CardsListRelationFilter? cards;

  final UsersNullableRelationFilter? users;

  @override
  Map<String, dynamic> toJson() => _$DecksWhereInputToJson(this);
}

@_i1.jsonSerializable
class DecksOrderByWithRelationInput implements _i1.JsonSerializable {
  const DecksOrderByWithRelationInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
    this.cards,
    this.users,
  });

  factory DecksOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$DecksOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? title;

  final SortOrder? datecreated;

  final CardsOrderByRelationAggregateInput? cards;

  final UsersOrderByWithRelationInput? users;

  @override
  Map<String, dynamic> toJson() => _$DecksOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class DecksWhereUniqueInput implements _i1.JsonSerializable {
  const DecksWhereUniqueInput({
    this.deckId,
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.title,
    this.datecreated,
    this.cards,
    this.users,
  });

  factory DecksWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$DecksWhereUniqueInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final Iterable<DecksWhereInput>? AND;

  final Iterable<DecksWhereInput>? OR;

  final Iterable<DecksWhereInput>? NOT;

  @JsonKey(name: r'user_id')
  final IntNullableFilter? userId;

  final StringNullableFilter? title;

  final StringNullableFilter? datecreated;

  final CardsListRelationFilter? cards;

  final UsersNullableRelationFilter? users;

  @override
  Map<String, dynamic> toJson() => _$DecksWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class DecksOrderByWithAggregationInput implements _i1.JsonSerializable {
  const DecksOrderByWithAggregationInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory DecksOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? title;

  final SortOrder? datecreated;

  @JsonKey(name: r'_count')
  final DecksCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final DecksAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final DecksMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final DecksMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final DecksSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class DecksScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const DecksScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<DecksScalarWhereWithAggregatesInput>? AND;

  final Iterable<DecksScalarWhereWithAggregatesInput>? OR;

  final Iterable<DecksScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'deck_id')
  final IntWithAggregatesFilter? deckId;

  @JsonKey(name: r'user_id')
  final IntNullableWithAggregatesFilter? userId;

  final StringNullableWithAggregatesFilter? title;

  final StringNullableWithAggregatesFilter? datecreated;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class TagsWhereInput implements _i1.JsonSerializable {
  const TagsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.tagId,
    this.tagName,
    this.cards,
  });

  factory TagsWhereInput.fromJson(Map<String, dynamic> json) =>
      _$TagsWhereInputFromJson(json);

  final Iterable<TagsWhereInput>? AND;

  final Iterable<TagsWhereInput>? OR;

  final Iterable<TagsWhereInput>? NOT;

  @JsonKey(name: r'tag_id')
  final IntFilter? tagId;

  @JsonKey(name: r'tag_name')
  final StringNullableFilter? tagName;

  final CardsListRelationFilter? cards;

  @override
  Map<String, dynamic> toJson() => _$TagsWhereInputToJson(this);
}

@_i1.jsonSerializable
class TagsOrderByWithRelationInput implements _i1.JsonSerializable {
  const TagsOrderByWithRelationInput({
    this.tagId,
    this.tagName,
    this.cards,
  });

  factory TagsOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$TagsOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @JsonKey(name: r'tag_name')
  final SortOrder? tagName;

  final CardsOrderByRelationAggregateInput? cards;

  @override
  Map<String, dynamic> toJson() => _$TagsOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class TagsWhereUniqueInput implements _i1.JsonSerializable {
  const TagsWhereUniqueInput({
    this.tagId,
    this.AND,
    this.OR,
    this.NOT,
    this.tagName,
    this.cards,
  });

  factory TagsWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$TagsWhereUniqueInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final int? tagId;

  final Iterable<TagsWhereInput>? AND;

  final Iterable<TagsWhereInput>? OR;

  final Iterable<TagsWhereInput>? NOT;

  @JsonKey(name: r'tag_name')
  final StringNullableFilter? tagName;

  final CardsListRelationFilter? cards;

  @override
  Map<String, dynamic> toJson() => _$TagsWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class TagsOrderByWithAggregationInput implements _i1.JsonSerializable {
  const TagsOrderByWithAggregationInput({
    this.tagId,
    this.tagName,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory TagsOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$TagsOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @JsonKey(name: r'tag_name')
  final SortOrder? tagName;

  @JsonKey(name: r'_count')
  final TagsCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final TagsAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final TagsMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final TagsMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final TagsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$TagsOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class TagsScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const TagsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.tagId,
    this.tagName,
  });

  factory TagsScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagsScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<TagsScalarWhereWithAggregatesInput>? AND;

  final Iterable<TagsScalarWhereWithAggregatesInput>? OR;

  final Iterable<TagsScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'tag_id')
  final IntWithAggregatesFilter? tagId;

  @JsonKey(name: r'tag_name')
  final StringNullableWithAggregatesFilter? tagName;

  @override
  Map<String, dynamic> toJson() =>
      _$TagsScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UsersWhereInput implements _i1.JsonSerializable {
  const UsersWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.username,
    this.passwordHash,
    this.decks,
  });

  factory UsersWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UsersWhereInputFromJson(json);

  final Iterable<UsersWhereInput>? AND;

  final Iterable<UsersWhereInput>? OR;

  final Iterable<UsersWhereInput>? NOT;

  @JsonKey(name: r'user_id')
  final IntFilter? userId;

  final StringNullableFilter? username;

  @JsonKey(name: r'password_hash')
  final StringNullableFilter? passwordHash;

  final DecksListRelationFilter? decks;

  @override
  Map<String, dynamic> toJson() => _$UsersWhereInputToJson(this);
}

@_i1.jsonSerializable
class UsersOrderByWithRelationInput implements _i1.JsonSerializable {
  const UsersOrderByWithRelationInput({
    this.userId,
    this.username,
    this.passwordHash,
    this.decks,
  });

  factory UsersOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UsersOrderByWithRelationInputFromJson(json);

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? username;

  @JsonKey(name: r'password_hash')
  final SortOrder? passwordHash;

  final DecksOrderByRelationAggregateInput? decks;

  @override
  Map<String, dynamic> toJson() => _$UsersOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UsersWhereUniqueInput implements _i1.JsonSerializable {
  const UsersWhereUniqueInput({
    this.userId,
    this.AND,
    this.OR,
    this.NOT,
    this.username,
    this.passwordHash,
    this.decks,
  });

  factory UsersWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UsersWhereUniqueInputFromJson(json);

  @JsonKey(name: r'user_id')
  final int? userId;

  final Iterable<UsersWhereInput>? AND;

  final Iterable<UsersWhereInput>? OR;

  final Iterable<UsersWhereInput>? NOT;

  final StringNullableFilter? username;

  @JsonKey(name: r'password_hash')
  final StringNullableFilter? passwordHash;

  final DecksListRelationFilter? decks;

  @override
  Map<String, dynamic> toJson() => _$UsersWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UsersOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UsersOrderByWithAggregationInput({
    this.userId,
    this.username,
    this.passwordHash,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  factory UsersOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersOrderByWithAggregationInputFromJson(json);

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? username;

  @JsonKey(name: r'password_hash')
  final SortOrder? passwordHash;

  @JsonKey(name: r'_count')
  final UsersCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final UsersAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final UsersMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UsersMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final UsersSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UsersScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UsersScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UsersScalarWhereWithAggregatesInput>? AND;

  final Iterable<UsersScalarWhereWithAggregatesInput>? OR;

  final Iterable<UsersScalarWhereWithAggregatesInput>? NOT;

  @JsonKey(name: r'user_id')
  final IntWithAggregatesFilter? userId;

  final StringNullableWithAggregatesFilter? username;

  @JsonKey(name: r'password_hash')
  final StringNullableWithAggregatesFilter? passwordHash;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateInput implements _i1.JsonSerializable {
  const CardsCreateInput({
    this.question,
    this.answer,
    this.due,
    this.decks,
    this.tags,
  });

  factory CardsCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsCreateInputFromJson(json);

  final String? question;

  final String? answer;

  final int? due;

  final DecksCreateNestedOneWithoutCardsInput? decks;

  final TagsCreateNestedOneWithoutCardsInput? tags;

  @override
  Map<String, dynamic> toJson() => _$CardsCreateInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedCreateInput implements _i1.JsonSerializable {
  const CardsUncheckedCreateInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'card_id')
  final int? cardId;

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final String? question;

  final String? answer;

  final int? due;

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateInput implements _i1.JsonSerializable {
  const CardsUpdateInput({
    this.question,
    this.answer,
    this.due,
    this.decks,
    this.tags,
  });

  factory CardsUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsUpdateInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  final DecksUpdateOneWithoutCardsNestedInput? decks;

  final TagsUpdateOneWithoutCardsNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => _$CardsUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedUpdateInput implements _i1.JsonSerializable {
  const CardsUncheckedUpdateInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'card_id')
  final IntFieldUpdateOperationsInput? cardId;

  @JsonKey(name: r'deck_id')
  final NullableIntFieldUpdateOperationsInput? deckId;

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  @JsonKey(name: r'tag_id')
  final NullableIntFieldUpdateOperationsInput? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateManyInput implements _i1.JsonSerializable {
  const CardsCreateManyInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CardsCreateManyInputFromJson(json);

  @JsonKey(name: r'card_id')
  final int? cardId;

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final String? question;

  final String? answer;

  final int? due;

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateManyMutationInput implements _i1.JsonSerializable {
  const CardsUpdateManyMutationInput({
    this.question,
    this.answer,
    this.due,
  });

  factory CardsUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$CardsUpdateManyMutationInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  @override
  Map<String, dynamic> toJson() => _$CardsUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const CardsUncheckedUpdateManyInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CardsUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'card_id')
  final IntFieldUpdateOperationsInput? cardId;

  @JsonKey(name: r'deck_id')
  final NullableIntFieldUpdateOperationsInput? deckId;

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  @JsonKey(name: r'tag_id')
  final NullableIntFieldUpdateOperationsInput? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyCreateInput implements _i1.JsonSerializable {
  const CustomStudyCreateInput({this.customDue});

  factory CustomStudyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyCreateInputFromJson(json);

  @JsonKey(name: r'custom_due')
  final int? customDue;

  @override
  Map<String, dynamic> toJson() => _$CustomStudyCreateInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyUncheckedCreateInput implements _i1.JsonSerializable {
  const CustomStudyUncheckedCreateInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyUncheckedCreateInputFromJson(json);

  final int? customid;

  @JsonKey(name: r'custom_due')
  final int? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyUpdateInput implements _i1.JsonSerializable {
  const CustomStudyUpdateInput({this.customDue});

  factory CustomStudyUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyUpdateInputFromJson(json);

  @JsonKey(name: r'custom_due')
  final NullableIntFieldUpdateOperationsInput? customDue;

  @override
  Map<String, dynamic> toJson() => _$CustomStudyUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyUncheckedUpdateInput implements _i1.JsonSerializable {
  const CustomStudyUncheckedUpdateInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyUncheckedUpdateInputFromJson(json);

  final IntFieldUpdateOperationsInput? customid;

  @JsonKey(name: r'custom_due')
  final NullableIntFieldUpdateOperationsInput? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyCreateManyInput implements _i1.JsonSerializable {
  const CustomStudyCreateManyInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyCreateManyInputFromJson(json);

  final int? customid;

  @JsonKey(name: r'custom_due')
  final int? customDue;

  @override
  Map<String, dynamic> toJson() => _$CustomStudyCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyUpdateManyMutationInput implements _i1.JsonSerializable {
  const CustomStudyUpdateManyMutationInput({this.customDue});

  factory CustomStudyUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'custom_due')
  final NullableIntFieldUpdateOperationsInput? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const CustomStudyUncheckedUpdateManyInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyUncheckedUpdateManyInputFromJson(json);

  final IntFieldUpdateOperationsInput? customid;

  @JsonKey(name: r'custom_due')
  final NullableIntFieldUpdateOperationsInput? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateInput implements _i1.JsonSerializable {
  const DecksCreateInput({
    this.title,
    this.datecreated,
    this.cards,
    this.users,
  });

  factory DecksCreateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksCreateInputFromJson(json);

  final String? title;

  final String? datecreated;

  final CardsCreateNestedManyWithoutDecksInput? cards;

  final UsersCreateNestedOneWithoutDecksInput? users;

  @override
  Map<String, dynamic> toJson() => _$DecksCreateInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedCreateInput implements _i1.JsonSerializable {
  const DecksUncheckedCreateInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
    this.cards,
  });

  factory DecksUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final int? deckId;

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? title;

  final String? datecreated;

  final CardsUncheckedCreateNestedManyWithoutDecksInput? cards;

  @override
  Map<String, dynamic> toJson() => _$DecksUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateInput implements _i1.JsonSerializable {
  const DecksUpdateInput({
    this.title,
    this.datecreated,
    this.cards,
    this.users,
  });

  factory DecksUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksUpdateInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  final CardsUpdateManyWithoutDecksNestedInput? cards;

  final UsersUpdateOneWithoutDecksNestedInput? users;

  @override
  Map<String, dynamic> toJson() => _$DecksUpdateInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedUpdateInput implements _i1.JsonSerializable {
  const DecksUncheckedUpdateInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
    this.cards,
  });

  factory DecksUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final IntFieldUpdateOperationsInput? deckId;

  @JsonKey(name: r'user_id')
  final NullableIntFieldUpdateOperationsInput? userId;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  final CardsUncheckedUpdateManyWithoutDecksNestedInput? cards;

  @override
  Map<String, dynamic> toJson() => _$DecksUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateManyInput implements _i1.JsonSerializable {
  const DecksCreateManyInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$DecksCreateManyInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final int? deckId;

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? title;

  final String? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateManyMutationInput implements _i1.JsonSerializable {
  const DecksUpdateManyMutationInput({
    this.title,
    this.datecreated,
  });

  factory DecksUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$DecksUpdateManyMutationInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const DecksUncheckedUpdateManyInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$DecksUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final IntFieldUpdateOperationsInput? deckId;

  @JsonKey(name: r'user_id')
  final NullableIntFieldUpdateOperationsInput? userId;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class TagsCreateInput implements _i1.JsonSerializable {
  const TagsCreateInput({
    this.tagName,
    this.cards,
  });

  factory TagsCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsCreateInputFromJson(json);

  @JsonKey(name: r'tag_name')
  final String? tagName;

  final CardsCreateNestedManyWithoutTagsInput? cards;

  @override
  Map<String, dynamic> toJson() => _$TagsCreateInputToJson(this);
}

@_i1.jsonSerializable
class TagsUncheckedCreateInput implements _i1.JsonSerializable {
  const TagsUncheckedCreateInput({
    this.tagId,
    this.tagName,
    this.cards,
  });

  factory TagsUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @JsonKey(name: r'tag_name')
  final String? tagName;

  final CardsUncheckedCreateNestedManyWithoutTagsInput? cards;

  @override
  Map<String, dynamic> toJson() => _$TagsUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class TagsUpdateInput implements _i1.JsonSerializable {
  const TagsUpdateInput({
    this.tagName,
    this.cards,
  });

  factory TagsUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsUpdateInputFromJson(json);

  @JsonKey(name: r'tag_name')
  final NullableStringFieldUpdateOperationsInput? tagName;

  final CardsUpdateManyWithoutTagsNestedInput? cards;

  @override
  Map<String, dynamic> toJson() => _$TagsUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TagsUncheckedUpdateInput implements _i1.JsonSerializable {
  const TagsUncheckedUpdateInput({
    this.tagId,
    this.tagName,
    this.cards,
  });

  factory TagsUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final IntFieldUpdateOperationsInput? tagId;

  @JsonKey(name: r'tag_name')
  final NullableStringFieldUpdateOperationsInput? tagName;

  final CardsUncheckedUpdateManyWithoutTagsNestedInput? cards;

  @override
  Map<String, dynamic> toJson() => _$TagsUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class TagsCreateManyInput implements _i1.JsonSerializable {
  const TagsCreateManyInput({
    this.tagId,
    this.tagName,
  });

  factory TagsCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TagsCreateManyInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @JsonKey(name: r'tag_name')
  final String? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class TagsUpdateManyMutationInput implements _i1.JsonSerializable {
  const TagsUpdateManyMutationInput({this.tagName});

  factory TagsUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$TagsUpdateManyMutationInputFromJson(json);

  @JsonKey(name: r'tag_name')
  final NullableStringFieldUpdateOperationsInput? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class TagsUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const TagsUncheckedUpdateManyInput({
    this.tagId,
    this.tagName,
  });

  factory TagsUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$TagsUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final IntFieldUpdateOperationsInput? tagId;

  @JsonKey(name: r'tag_name')
  final NullableStringFieldUpdateOperationsInput? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class UsersCreateInput implements _i1.JsonSerializable {
  const UsersCreateInput({
    this.username,
    this.passwordHash,
    this.decks,
  });

  factory UsersCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersCreateInputFromJson(json);

  final String? username;

  @JsonKey(name: r'password_hash')
  final String? passwordHash;

  final DecksCreateNestedManyWithoutUsersInput? decks;

  @override
  Map<String, dynamic> toJson() => _$UsersCreateInputToJson(this);
}

@_i1.jsonSerializable
class UsersUncheckedCreateInput implements _i1.JsonSerializable {
  const UsersUncheckedCreateInput({
    this.userId,
    this.username,
    this.passwordHash,
    this.decks,
  });

  factory UsersUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersUncheckedCreateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? username;

  @JsonKey(name: r'password_hash')
  final String? passwordHash;

  final DecksUncheckedCreateNestedManyWithoutUsersInput? decks;

  @override
  Map<String, dynamic> toJson() => _$UsersUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UsersUpdateInput implements _i1.JsonSerializable {
  const UsersUpdateInput({
    this.username,
    this.passwordHash,
    this.decks,
  });

  factory UsersUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersUpdateInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? username;

  @JsonKey(name: r'password_hash')
  final NullableStringFieldUpdateOperationsInput? passwordHash;

  final DecksUpdateManyWithoutUsersNestedInput? decks;

  @override
  Map<String, dynamic> toJson() => _$UsersUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UsersUncheckedUpdateInput implements _i1.JsonSerializable {
  const UsersUncheckedUpdateInput({
    this.userId,
    this.username,
    this.passwordHash,
    this.decks,
  });

  factory UsersUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersUncheckedUpdateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final IntFieldUpdateOperationsInput? userId;

  final NullableStringFieldUpdateOperationsInput? username;

  @JsonKey(name: r'password_hash')
  final NullableStringFieldUpdateOperationsInput? passwordHash;

  final DecksUncheckedUpdateManyWithoutUsersNestedInput? decks;

  @override
  Map<String, dynamic> toJson() => _$UsersUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UsersCreateManyInput implements _i1.JsonSerializable {
  const UsersCreateManyInput({
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UsersCreateManyInputFromJson(json);

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? username;

  @JsonKey(name: r'password_hash')
  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UsersUpdateManyMutationInput implements _i1.JsonSerializable {
  const UsersUpdateManyMutationInput({
    this.username,
    this.passwordHash,
  });

  factory UsersUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UsersUpdateManyMutationInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? username;

  @JsonKey(name: r'password_hash')
  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UsersUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UsersUncheckedUpdateManyInput({
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UsersUncheckedUpdateManyInputFromJson(json);

  @JsonKey(name: r'user_id')
  final IntFieldUpdateOperationsInput? userId;

  final NullableStringFieldUpdateOperationsInput? username;

  @JsonKey(name: r'password_hash')
  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableFilter implements _i1.JsonSerializable {
  const IntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableFilter implements _i1.JsonSerializable {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class DecksNullableRelationFilter implements _i1.JsonSerializable {
  const DecksNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  factory DecksNullableRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DecksNullableRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final DecksWhereInput? $is;

  final DecksWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$DecksNullableRelationFilterToJson(this);
}

@_i1.jsonSerializable
class TagsNullableRelationFilter implements _i1.JsonSerializable {
  const TagsNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  factory TagsNullableRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$TagsNullableRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final TagsWhereInput? $is;

  final TagsWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$TagsNullableRelationFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class CardsCountOrderByAggregateInput implements _i1.JsonSerializable {
  const CardsCountOrderByAggregateInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'card_id')
  final SortOrder? cardId;

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  final SortOrder? question;

  final SortOrder? answer;

  final SortOrder? due;

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CardsAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const CardsAvgOrderByAggregateInput({
    this.cardId,
    this.deckId,
    this.due,
    this.tagId,
  });

  factory CardsAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'card_id')
  final SortOrder? cardId;

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  final SortOrder? due;

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CardsMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const CardsMaxOrderByAggregateInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'card_id')
  final SortOrder? cardId;

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  final SortOrder? question;

  final SortOrder? answer;

  final SortOrder? due;

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CardsMinOrderByAggregateInput implements _i1.JsonSerializable {
  const CardsMinOrderByAggregateInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'card_id')
  final SortOrder? cardId;

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  final SortOrder? question;

  final SortOrder? answer;

  final SortOrder? due;

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CardsSumOrderByAggregateInput implements _i1.JsonSerializable {
  const CardsSumOrderByAggregateInput({
    this.cardId,
    this.deckId,
    this.due,
    this.tagId,
  });

  factory CardsSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CardsSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'card_id')
  final SortOrder? cardId;

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  final SortOrder? due;

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const IntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory IntNullableWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$IntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$StringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$StringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class CustomStudyCountOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomStudyCountOrderByAggregateInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyCountOrderByAggregateInputFromJson(json);

  final SortOrder? customid;

  @JsonKey(name: r'custom_due')
  final SortOrder? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomStudyAvgOrderByAggregateInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyAvgOrderByAggregateInputFromJson(json);

  final SortOrder? customid;

  @JsonKey(name: r'custom_due')
  final SortOrder? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomStudyMaxOrderByAggregateInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyMaxOrderByAggregateInputFromJson(json);

  final SortOrder? customid;

  @JsonKey(name: r'custom_due')
  final SortOrder? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudyMinOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomStudyMinOrderByAggregateInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudyMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudyMinOrderByAggregateInputFromJson(json);

  final SortOrder? customid;

  @JsonKey(name: r'custom_due')
  final SortOrder? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudyMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CustomStudySumOrderByAggregateInput implements _i1.JsonSerializable {
  const CustomStudySumOrderByAggregateInput({
    this.customid,
    this.customDue,
  });

  factory CustomStudySumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CustomStudySumOrderByAggregateInputFromJson(json);

  final SortOrder? customid;

  @JsonKey(name: r'custom_due')
  final SortOrder? customDue;

  @override
  Map<String, dynamic> toJson() =>
      _$CustomStudySumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CardsListRelationFilter implements _i1.JsonSerializable {
  const CardsListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory CardsListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CardsListRelationFilterFromJson(json);

  final CardsWhereInput? every;

  final CardsWhereInput? some;

  final CardsWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$CardsListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class UsersNullableRelationFilter implements _i1.JsonSerializable {
  const UsersNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  factory UsersNullableRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UsersNullableRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final UsersWhereInput? $is;

  final UsersWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$UsersNullableRelationFilterToJson(this);
}

@_i1.jsonSerializable
class CardsOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const CardsOrderByRelationAggregateInput({this.$count});

  factory CardsOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DecksCountOrderByAggregateInput implements _i1.JsonSerializable {
  const DecksCountOrderByAggregateInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? title;

  final SortOrder? datecreated;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DecksAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const DecksAvgOrderByAggregateInput({
    this.deckId,
    this.userId,
  });

  factory DecksAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => _$DecksAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DecksMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const DecksMaxOrderByAggregateInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? title;

  final SortOrder? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DecksMinOrderByAggregateInput implements _i1.JsonSerializable {
  const DecksMinOrderByAggregateInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? title;

  final SortOrder? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DecksSumOrderByAggregateInput implements _i1.JsonSerializable {
  const DecksSumOrderByAggregateInput({
    this.deckId,
    this.userId,
  });

  factory DecksSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$DecksSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final SortOrder? deckId;

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => _$DecksSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagsCountOrderByAggregateInput implements _i1.JsonSerializable {
  const TagsCountOrderByAggregateInput({
    this.tagId,
    this.tagName,
  });

  factory TagsCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @JsonKey(name: r'tag_name')
  final SortOrder? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagsAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const TagsAvgOrderByAggregateInput({this.tagId});

  factory TagsAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => _$TagsAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagsMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const TagsMaxOrderByAggregateInput({
    this.tagId,
    this.tagName,
  });

  factory TagsMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @JsonKey(name: r'tag_name')
  final SortOrder? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagsMinOrderByAggregateInput implements _i1.JsonSerializable {
  const TagsMinOrderByAggregateInput({
    this.tagId,
    this.tagName,
  });

  factory TagsMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @JsonKey(name: r'tag_name')
  final SortOrder? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class TagsSumOrderByAggregateInput implements _i1.JsonSerializable {
  const TagsSumOrderByAggregateInput({this.tagId});

  factory TagsSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$TagsSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final SortOrder? tagId;

  @override
  Map<String, dynamic> toJson() => _$TagsSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DecksListRelationFilter implements _i1.JsonSerializable {
  const DecksListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory DecksListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$DecksListRelationFilterFromJson(json);

  final DecksWhereInput? every;

  final DecksWhereInput? some;

  final DecksWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$DecksListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class DecksOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const DecksOrderByRelationAggregateInput({this.$count});

  factory DecksOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UsersCountOrderByAggregateInput({
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersCountOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? username;

  @JsonKey(name: r'password_hash')
  final SortOrder? passwordHash;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const UsersAvgOrderByAggregateInput({this.userId});

  factory UsersAvgOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersAvgOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => _$UsersAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UsersMaxOrderByAggregateInput({
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersMaxOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? username;

  @JsonKey(name: r'password_hash')
  final SortOrder? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UsersMinOrderByAggregateInput({
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersMinOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  final SortOrder? username;

  @JsonKey(name: r'password_hash')
  final SortOrder? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UsersSumOrderByAggregateInput implements _i1.JsonSerializable {
  const UsersSumOrderByAggregateInput({this.userId});

  factory UsersSumOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UsersSumOrderByAggregateInputFromJson(json);

  @JsonKey(name: r'user_id')
  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => _$UsersSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateNestedOneWithoutCardsInput implements _i1.JsonSerializable {
  const DecksCreateNestedOneWithoutCardsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory DecksCreateNestedOneWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksCreateNestedOneWithoutCardsInputFromJson(json);

  final DecksCreateWithoutCardsInput? create;

  final DecksCreateOrConnectWithoutCardsInput? connectOrCreate;

  final DecksWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksCreateNestedOneWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class TagsCreateNestedOneWithoutCardsInput implements _i1.JsonSerializable {
  const TagsCreateNestedOneWithoutCardsInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory TagsCreateNestedOneWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagsCreateNestedOneWithoutCardsInputFromJson(json);

  final TagsCreateWithoutCardsInput? create;

  final TagsCreateOrConnectWithoutCardsInput? connectOrCreate;

  final TagsWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$TagsCreateNestedOneWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class NullableStringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableStringFieldUpdateOperationsInput({this.set});

  factory NullableStringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableStringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableStringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableIntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableIntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory NullableIntFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableIntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableIntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateOneWithoutCardsNestedInput implements _i1.JsonSerializable {
  const DecksUpdateOneWithoutCardsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory DecksUpdateOneWithoutCardsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUpdateOneWithoutCardsNestedInputFromJson(json);

  final DecksCreateWithoutCardsInput? create;

  final DecksCreateOrConnectWithoutCardsInput? connectOrCreate;

  final DecksUpsertWithoutCardsInput? upsert;

  final DecksWhereInput? disconnect;

  final DecksWhereInput? delete;

  final DecksWhereUniqueInput? connect;

  final DecksUpdateToOneWithWhereWithoutCardsInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUpdateOneWithoutCardsNestedInputToJson(this);
}

@_i1.jsonSerializable
class TagsUpdateOneWithoutCardsNestedInput implements _i1.JsonSerializable {
  const TagsUpdateOneWithoutCardsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory TagsUpdateOneWithoutCardsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagsUpdateOneWithoutCardsNestedInputFromJson(json);

  final TagsCreateWithoutCardsInput? create;

  final TagsCreateOrConnectWithoutCardsInput? connectOrCreate;

  final TagsUpsertWithoutCardsInput? upsert;

  final TagsWhereInput? disconnect;

  final TagsWhereInput? delete;

  final TagsWhereUniqueInput? connect;

  final TagsUpdateToOneWithWhereWithoutCardsInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$TagsUpdateOneWithoutCardsNestedInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateNestedManyWithoutDecksInput implements _i1.JsonSerializable {
  const CardsCreateNestedManyWithoutDecksInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory CardsCreateNestedManyWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsCreateNestedManyWithoutDecksInputFromJson(json);

  final Iterable<CardsCreateWithoutDecksInput>? create;

  final Iterable<CardsCreateOrConnectWithoutDecksInput>? connectOrCreate;

  final CardsCreateManyDecksInputEnvelope? createMany;

  final Iterable<CardsWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsCreateNestedManyWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class UsersCreateNestedOneWithoutDecksInput implements _i1.JsonSerializable {
  const UsersCreateNestedOneWithoutDecksInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UsersCreateNestedOneWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersCreateNestedOneWithoutDecksInputFromJson(json);

  final UsersCreateWithoutDecksInput? create;

  final UsersCreateOrConnectWithoutDecksInput? connectOrCreate;

  final UsersWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersCreateNestedOneWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedCreateNestedManyWithoutDecksInput
    implements _i1.JsonSerializable {
  const CardsUncheckedCreateNestedManyWithoutDecksInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory CardsUncheckedCreateNestedManyWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedCreateNestedManyWithoutDecksInputFromJson(json);

  final Iterable<CardsCreateWithoutDecksInput>? create;

  final Iterable<CardsCreateOrConnectWithoutDecksInput>? connectOrCreate;

  final CardsCreateManyDecksInputEnvelope? createMany;

  final Iterable<CardsWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedCreateNestedManyWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateManyWithoutDecksNestedInput implements _i1.JsonSerializable {
  const CardsUpdateManyWithoutDecksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory CardsUpdateManyWithoutDecksNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUpdateManyWithoutDecksNestedInputFromJson(json);

  final Iterable<CardsCreateWithoutDecksInput>? create;

  final Iterable<CardsCreateOrConnectWithoutDecksInput>? connectOrCreate;

  final Iterable<CardsUpsertWithWhereUniqueWithoutDecksInput>? upsert;

  final CardsCreateManyDecksInputEnvelope? createMany;

  final Iterable<CardsWhereUniqueInput>? set;

  final Iterable<CardsWhereUniqueInput>? disconnect;

  final Iterable<CardsWhereUniqueInput>? delete;

  final Iterable<CardsWhereUniqueInput>? connect;

  final Iterable<CardsUpdateWithWhereUniqueWithoutDecksInput>? update;

  final Iterable<CardsUpdateManyWithWhereWithoutDecksInput>? updateMany;

  final Iterable<CardsScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUpdateManyWithoutDecksNestedInputToJson(this);
}

@_i1.jsonSerializable
class UsersUpdateOneWithoutDecksNestedInput implements _i1.JsonSerializable {
  const UsersUpdateOneWithoutDecksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory UsersUpdateOneWithoutDecksNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersUpdateOneWithoutDecksNestedInputFromJson(json);

  final UsersCreateWithoutDecksInput? create;

  final UsersCreateOrConnectWithoutDecksInput? connectOrCreate;

  final UsersUpsertWithoutDecksInput? upsert;

  final UsersWhereInput? disconnect;

  final UsersWhereInput? delete;

  final UsersWhereUniqueInput? connect;

  final UsersUpdateToOneWithWhereWithoutDecksInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersUpdateOneWithoutDecksNestedInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedUpdateManyWithoutDecksNestedInput
    implements _i1.JsonSerializable {
  const CardsUncheckedUpdateManyWithoutDecksNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory CardsUncheckedUpdateManyWithoutDecksNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedUpdateManyWithoutDecksNestedInputFromJson(json);

  final Iterable<CardsCreateWithoutDecksInput>? create;

  final Iterable<CardsCreateOrConnectWithoutDecksInput>? connectOrCreate;

  final Iterable<CardsUpsertWithWhereUniqueWithoutDecksInput>? upsert;

  final CardsCreateManyDecksInputEnvelope? createMany;

  final Iterable<CardsWhereUniqueInput>? set;

  final Iterable<CardsWhereUniqueInput>? disconnect;

  final Iterable<CardsWhereUniqueInput>? delete;

  final Iterable<CardsWhereUniqueInput>? connect;

  final Iterable<CardsUpdateWithWhereUniqueWithoutDecksInput>? update;

  final Iterable<CardsUpdateManyWithWhereWithoutDecksInput>? updateMany;

  final Iterable<CardsScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedUpdateManyWithoutDecksNestedInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateNestedManyWithoutTagsInput implements _i1.JsonSerializable {
  const CardsCreateNestedManyWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory CardsCreateNestedManyWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsCreateNestedManyWithoutTagsInputFromJson(json);

  final Iterable<CardsCreateWithoutTagsInput>? create;

  final Iterable<CardsCreateOrConnectWithoutTagsInput>? connectOrCreate;

  final CardsCreateManyTagsInputEnvelope? createMany;

  final Iterable<CardsWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsCreateNestedManyWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedCreateNestedManyWithoutTagsInput
    implements _i1.JsonSerializable {
  const CardsUncheckedCreateNestedManyWithoutTagsInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory CardsUncheckedCreateNestedManyWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedCreateNestedManyWithoutTagsInputFromJson(json);

  final Iterable<CardsCreateWithoutTagsInput>? create;

  final Iterable<CardsCreateOrConnectWithoutTagsInput>? connectOrCreate;

  final CardsCreateManyTagsInputEnvelope? createMany;

  final Iterable<CardsWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedCreateNestedManyWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateManyWithoutTagsNestedInput implements _i1.JsonSerializable {
  const CardsUpdateManyWithoutTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory CardsUpdateManyWithoutTagsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUpdateManyWithoutTagsNestedInputFromJson(json);

  final Iterable<CardsCreateWithoutTagsInput>? create;

  final Iterable<CardsCreateOrConnectWithoutTagsInput>? connectOrCreate;

  final Iterable<CardsUpsertWithWhereUniqueWithoutTagsInput>? upsert;

  final CardsCreateManyTagsInputEnvelope? createMany;

  final Iterable<CardsWhereUniqueInput>? set;

  final Iterable<CardsWhereUniqueInput>? disconnect;

  final Iterable<CardsWhereUniqueInput>? delete;

  final Iterable<CardsWhereUniqueInput>? connect;

  final Iterable<CardsUpdateWithWhereUniqueWithoutTagsInput>? update;

  final Iterable<CardsUpdateManyWithWhereWithoutTagsInput>? updateMany;

  final Iterable<CardsScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUpdateManyWithoutTagsNestedInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedUpdateManyWithoutTagsNestedInput
    implements _i1.JsonSerializable {
  const CardsUncheckedUpdateManyWithoutTagsNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory CardsUncheckedUpdateManyWithoutTagsNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedUpdateManyWithoutTagsNestedInputFromJson(json);

  final Iterable<CardsCreateWithoutTagsInput>? create;

  final Iterable<CardsCreateOrConnectWithoutTagsInput>? connectOrCreate;

  final Iterable<CardsUpsertWithWhereUniqueWithoutTagsInput>? upsert;

  final CardsCreateManyTagsInputEnvelope? createMany;

  final Iterable<CardsWhereUniqueInput>? set;

  final Iterable<CardsWhereUniqueInput>? disconnect;

  final Iterable<CardsWhereUniqueInput>? delete;

  final Iterable<CardsWhereUniqueInput>? connect;

  final Iterable<CardsUpdateWithWhereUniqueWithoutTagsInput>? update;

  final Iterable<CardsUpdateManyWithWhereWithoutTagsInput>? updateMany;

  final Iterable<CardsScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedUpdateManyWithoutTagsNestedInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateNestedManyWithoutUsersInput implements _i1.JsonSerializable {
  const DecksCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory DecksCreateNestedManyWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksCreateNestedManyWithoutUsersInputFromJson(json);

  final Iterable<DecksCreateWithoutUsersInput>? create;

  final Iterable<DecksCreateOrConnectWithoutUsersInput>? connectOrCreate;

  final DecksCreateManyUsersInputEnvelope? createMany;

  final Iterable<DecksWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksCreateNestedManyWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedCreateNestedManyWithoutUsersInput
    implements _i1.JsonSerializable {
  const DecksUncheckedCreateNestedManyWithoutUsersInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory DecksUncheckedCreateNestedManyWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUncheckedCreateNestedManyWithoutUsersInputFromJson(json);

  final Iterable<DecksCreateWithoutUsersInput>? create;

  final Iterable<DecksCreateOrConnectWithoutUsersInput>? connectOrCreate;

  final DecksCreateManyUsersInputEnvelope? createMany;

  final Iterable<DecksWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUncheckedCreateNestedManyWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateManyWithoutUsersNestedInput implements _i1.JsonSerializable {
  const DecksUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory DecksUpdateManyWithoutUsersNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUpdateManyWithoutUsersNestedInputFromJson(json);

  final Iterable<DecksCreateWithoutUsersInput>? create;

  final Iterable<DecksCreateOrConnectWithoutUsersInput>? connectOrCreate;

  final Iterable<DecksUpsertWithWhereUniqueWithoutUsersInput>? upsert;

  final DecksCreateManyUsersInputEnvelope? createMany;

  final Iterable<DecksWhereUniqueInput>? set;

  final Iterable<DecksWhereUniqueInput>? disconnect;

  final Iterable<DecksWhereUniqueInput>? delete;

  final Iterable<DecksWhereUniqueInput>? connect;

  final Iterable<DecksUpdateWithWhereUniqueWithoutUsersInput>? update;

  final Iterable<DecksUpdateManyWithWhereWithoutUsersInput>? updateMany;

  final Iterable<DecksScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUpdateManyWithoutUsersNestedInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedUpdateManyWithoutUsersNestedInput
    implements _i1.JsonSerializable {
  const DecksUncheckedUpdateManyWithoutUsersNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  factory DecksUncheckedUpdateManyWithoutUsersNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUncheckedUpdateManyWithoutUsersNestedInputFromJson(json);

  final Iterable<DecksCreateWithoutUsersInput>? create;

  final Iterable<DecksCreateOrConnectWithoutUsersInput>? connectOrCreate;

  final Iterable<DecksUpsertWithWhereUniqueWithoutUsersInput>? upsert;

  final DecksCreateManyUsersInputEnvelope? createMany;

  final Iterable<DecksWhereUniqueInput>? set;

  final Iterable<DecksWhereUniqueInput>? disconnect;

  final Iterable<DecksWhereUniqueInput>? delete;

  final Iterable<DecksWhereUniqueInput>? connect;

  final Iterable<DecksUpdateWithWhereUniqueWithoutUsersInput>? update;

  final Iterable<DecksUpdateManyWithWhereWithoutUsersInput>? updateMany;

  final Iterable<DecksScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUncheckedUpdateManyWithoutUsersNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableFilter implements _i1.JsonSerializable {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedIntNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory NestedIntNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedIntNullableWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatNullableFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntNullableFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedIntNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatNullableFilter implements _i1.JsonSerializable {
  const NestedFloatNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatNullableFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DecksCreateWithoutCardsInput implements _i1.JsonSerializable {
  const DecksCreateWithoutCardsInput({
    this.title,
    this.datecreated,
    this.users,
  });

  factory DecksCreateWithoutCardsInput.fromJson(Map<String, dynamic> json) =>
      _$DecksCreateWithoutCardsInputFromJson(json);

  final String? title;

  final String? datecreated;

  final UsersCreateNestedOneWithoutDecksInput? users;

  @override
  Map<String, dynamic> toJson() => _$DecksCreateWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedCreateWithoutCardsInput implements _i1.JsonSerializable {
  const DecksUncheckedCreateWithoutCardsInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksUncheckedCreateWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUncheckedCreateWithoutCardsInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final int? deckId;

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? title;

  final String? datecreated;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUncheckedCreateWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateOrConnectWithoutCardsInput implements _i1.JsonSerializable {
  const DecksCreateOrConnectWithoutCardsInput({
    required this.where,
    required this.create,
  });

  factory DecksCreateOrConnectWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksCreateOrConnectWithoutCardsInputFromJson(json);

  final DecksWhereUniqueInput where;

  final DecksCreateWithoutCardsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksCreateOrConnectWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class TagsCreateWithoutCardsInput implements _i1.JsonSerializable {
  const TagsCreateWithoutCardsInput({this.tagName});

  factory TagsCreateWithoutCardsInput.fromJson(Map<String, dynamic> json) =>
      _$TagsCreateWithoutCardsInputFromJson(json);

  @JsonKey(name: r'tag_name')
  final String? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsCreateWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class TagsUncheckedCreateWithoutCardsInput implements _i1.JsonSerializable {
  const TagsUncheckedCreateWithoutCardsInput({
    this.tagId,
    this.tagName,
  });

  factory TagsUncheckedCreateWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagsUncheckedCreateWithoutCardsInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @JsonKey(name: r'tag_name')
  final String? tagName;

  @override
  Map<String, dynamic> toJson() =>
      _$TagsUncheckedCreateWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class TagsCreateOrConnectWithoutCardsInput implements _i1.JsonSerializable {
  const TagsCreateOrConnectWithoutCardsInput({
    required this.where,
    required this.create,
  });

  factory TagsCreateOrConnectWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagsCreateOrConnectWithoutCardsInputFromJson(json);

  final TagsWhereUniqueInput where;

  final TagsCreateWithoutCardsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$TagsCreateOrConnectWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpsertWithoutCardsInput implements _i1.JsonSerializable {
  const DecksUpsertWithoutCardsInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory DecksUpsertWithoutCardsInput.fromJson(Map<String, dynamic> json) =>
      _$DecksUpsertWithoutCardsInputFromJson(json);

  final DecksUpdateWithoutCardsInput update;

  final DecksCreateWithoutCardsInput create;

  final DecksWhereInput? where;

  @override
  Map<String, dynamic> toJson() => _$DecksUpsertWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateToOneWithWhereWithoutCardsInput
    implements _i1.JsonSerializable {
  const DecksUpdateToOneWithWhereWithoutCardsInput({
    this.where,
    required this.data,
  });

  factory DecksUpdateToOneWithWhereWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUpdateToOneWithWhereWithoutCardsInputFromJson(json);

  final DecksWhereInput? where;

  final DecksUpdateWithoutCardsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUpdateToOneWithWhereWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateWithoutCardsInput implements _i1.JsonSerializable {
  const DecksUpdateWithoutCardsInput({
    this.title,
    this.datecreated,
    this.users,
  });

  factory DecksUpdateWithoutCardsInput.fromJson(Map<String, dynamic> json) =>
      _$DecksUpdateWithoutCardsInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  final UsersUpdateOneWithoutDecksNestedInput? users;

  @override
  Map<String, dynamic> toJson() => _$DecksUpdateWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedUpdateWithoutCardsInput implements _i1.JsonSerializable {
  const DecksUncheckedUpdateWithoutCardsInput({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksUncheckedUpdateWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUncheckedUpdateWithoutCardsInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final IntFieldUpdateOperationsInput? deckId;

  @JsonKey(name: r'user_id')
  final NullableIntFieldUpdateOperationsInput? userId;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUncheckedUpdateWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class TagsUpsertWithoutCardsInput implements _i1.JsonSerializable {
  const TagsUpsertWithoutCardsInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory TagsUpsertWithoutCardsInput.fromJson(Map<String, dynamic> json) =>
      _$TagsUpsertWithoutCardsInputFromJson(json);

  final TagsUpdateWithoutCardsInput update;

  final TagsCreateWithoutCardsInput create;

  final TagsWhereInput? where;

  @override
  Map<String, dynamic> toJson() => _$TagsUpsertWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class TagsUpdateToOneWithWhereWithoutCardsInput
    implements _i1.JsonSerializable {
  const TagsUpdateToOneWithWhereWithoutCardsInput({
    this.where,
    required this.data,
  });

  factory TagsUpdateToOneWithWhereWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagsUpdateToOneWithWhereWithoutCardsInputFromJson(json);

  final TagsWhereInput? where;

  final TagsUpdateWithoutCardsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$TagsUpdateToOneWithWhereWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class TagsUpdateWithoutCardsInput implements _i1.JsonSerializable {
  const TagsUpdateWithoutCardsInput({this.tagName});

  factory TagsUpdateWithoutCardsInput.fromJson(Map<String, dynamic> json) =>
      _$TagsUpdateWithoutCardsInputFromJson(json);

  @JsonKey(name: r'tag_name')
  final NullableStringFieldUpdateOperationsInput? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsUpdateWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class TagsUncheckedUpdateWithoutCardsInput implements _i1.JsonSerializable {
  const TagsUncheckedUpdateWithoutCardsInput({
    this.tagId,
    this.tagName,
  });

  factory TagsUncheckedUpdateWithoutCardsInput.fromJson(
          Map<String, dynamic> json) =>
      _$TagsUncheckedUpdateWithoutCardsInputFromJson(json);

  @JsonKey(name: r'tag_id')
  final IntFieldUpdateOperationsInput? tagId;

  @JsonKey(name: r'tag_name')
  final NullableStringFieldUpdateOperationsInput? tagName;

  @override
  Map<String, dynamic> toJson() =>
      _$TagsUncheckedUpdateWithoutCardsInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateWithoutDecksInput implements _i1.JsonSerializable {
  const CardsCreateWithoutDecksInput({
    this.question,
    this.answer,
    this.due,
    this.tags,
  });

  factory CardsCreateWithoutDecksInput.fromJson(Map<String, dynamic> json) =>
      _$CardsCreateWithoutDecksInputFromJson(json);

  final String? question;

  final String? answer;

  final int? due;

  final TagsCreateNestedOneWithoutCardsInput? tags;

  @override
  Map<String, dynamic> toJson() => _$CardsCreateWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedCreateWithoutDecksInput implements _i1.JsonSerializable {
  const CardsUncheckedCreateWithoutDecksInput({
    this.cardId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsUncheckedCreateWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedCreateWithoutDecksInputFromJson(json);

  @JsonKey(name: r'card_id')
  final int? cardId;

  final String? question;

  final String? answer;

  final int? due;

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedCreateWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateOrConnectWithoutDecksInput implements _i1.JsonSerializable {
  const CardsCreateOrConnectWithoutDecksInput({
    required this.where,
    required this.create,
  });

  factory CardsCreateOrConnectWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsCreateOrConnectWithoutDecksInputFromJson(json);

  final CardsWhereUniqueInput where;

  final CardsCreateWithoutDecksInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsCreateOrConnectWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateManyDecksInputEnvelope implements _i1.JsonSerializable {
  const CardsCreateManyDecksInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory CardsCreateManyDecksInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$CardsCreateManyDecksInputEnvelopeFromJson(json);

  final Iterable<CardsCreateManyDecksInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsCreateManyDecksInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class UsersCreateWithoutDecksInput implements _i1.JsonSerializable {
  const UsersCreateWithoutDecksInput({
    this.username,
    this.passwordHash,
  });

  factory UsersCreateWithoutDecksInput.fromJson(Map<String, dynamic> json) =>
      _$UsersCreateWithoutDecksInputFromJson(json);

  final String? username;

  @JsonKey(name: r'password_hash')
  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersCreateWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class UsersUncheckedCreateWithoutDecksInput implements _i1.JsonSerializable {
  const UsersUncheckedCreateWithoutDecksInput({
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersUncheckedCreateWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersUncheckedCreateWithoutDecksInputFromJson(json);

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? username;

  @JsonKey(name: r'password_hash')
  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersUncheckedCreateWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class UsersCreateOrConnectWithoutDecksInput implements _i1.JsonSerializable {
  const UsersCreateOrConnectWithoutDecksInput({
    required this.where,
    required this.create,
  });

  factory UsersCreateOrConnectWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersCreateOrConnectWithoutDecksInputFromJson(json);

  final UsersWhereUniqueInput where;

  final UsersCreateWithoutDecksInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersCreateOrConnectWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpsertWithWhereUniqueWithoutDecksInput
    implements _i1.JsonSerializable {
  const CardsUpsertWithWhereUniqueWithoutDecksInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory CardsUpsertWithWhereUniqueWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUpsertWithWhereUniqueWithoutDecksInputFromJson(json);

  final CardsWhereUniqueInput where;

  final CardsUpdateWithoutDecksInput update;

  final CardsCreateWithoutDecksInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUpsertWithWhereUniqueWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateWithWhereUniqueWithoutDecksInput
    implements _i1.JsonSerializable {
  const CardsUpdateWithWhereUniqueWithoutDecksInput({
    required this.where,
    required this.data,
  });

  factory CardsUpdateWithWhereUniqueWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUpdateWithWhereUniqueWithoutDecksInputFromJson(json);

  final CardsWhereUniqueInput where;

  final CardsUpdateWithoutDecksInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUpdateWithWhereUniqueWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateManyWithWhereWithoutDecksInput
    implements _i1.JsonSerializable {
  const CardsUpdateManyWithWhereWithoutDecksInput({
    required this.where,
    required this.data,
  });

  factory CardsUpdateManyWithWhereWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUpdateManyWithWhereWithoutDecksInputFromJson(json);

  final CardsScalarWhereInput where;

  final CardsUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUpdateManyWithWhereWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsScalarWhereInput implements _i1.JsonSerializable {
  const CardsScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CardsScalarWhereInputFromJson(json);

  final Iterable<CardsScalarWhereInput>? AND;

  final Iterable<CardsScalarWhereInput>? OR;

  final Iterable<CardsScalarWhereInput>? NOT;

  @JsonKey(name: r'card_id')
  final IntFilter? cardId;

  @JsonKey(name: r'deck_id')
  final IntNullableFilter? deckId;

  final StringNullableFilter? question;

  final StringNullableFilter? answer;

  final IntNullableFilter? due;

  @JsonKey(name: r'tag_id')
  final IntNullableFilter? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class UsersUpsertWithoutDecksInput implements _i1.JsonSerializable {
  const UsersUpsertWithoutDecksInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory UsersUpsertWithoutDecksInput.fromJson(Map<String, dynamic> json) =>
      _$UsersUpsertWithoutDecksInputFromJson(json);

  final UsersUpdateWithoutDecksInput update;

  final UsersCreateWithoutDecksInput create;

  final UsersWhereInput? where;

  @override
  Map<String, dynamic> toJson() => _$UsersUpsertWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class UsersUpdateToOneWithWhereWithoutDecksInput
    implements _i1.JsonSerializable {
  const UsersUpdateToOneWithWhereWithoutDecksInput({
    this.where,
    required this.data,
  });

  factory UsersUpdateToOneWithWhereWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersUpdateToOneWithWhereWithoutDecksInputFromJson(json);

  final UsersWhereInput? where;

  final UsersUpdateWithoutDecksInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersUpdateToOneWithWhereWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class UsersUpdateWithoutDecksInput implements _i1.JsonSerializable {
  const UsersUpdateWithoutDecksInput({
    this.username,
    this.passwordHash,
  });

  factory UsersUpdateWithoutDecksInput.fromJson(Map<String, dynamic> json) =>
      _$UsersUpdateWithoutDecksInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? username;

  @JsonKey(name: r'password_hash')
  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersUpdateWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class UsersUncheckedUpdateWithoutDecksInput implements _i1.JsonSerializable {
  const UsersUncheckedUpdateWithoutDecksInput({
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersUncheckedUpdateWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$UsersUncheckedUpdateWithoutDecksInputFromJson(json);

  @JsonKey(name: r'user_id')
  final IntFieldUpdateOperationsInput? userId;

  final NullableStringFieldUpdateOperationsInput? username;

  @JsonKey(name: r'password_hash')
  final NullableStringFieldUpdateOperationsInput? passwordHash;

  @override
  Map<String, dynamic> toJson() =>
      _$UsersUncheckedUpdateWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateWithoutTagsInput implements _i1.JsonSerializable {
  const CardsCreateWithoutTagsInput({
    this.question,
    this.answer,
    this.due,
    this.decks,
  });

  factory CardsCreateWithoutTagsInput.fromJson(Map<String, dynamic> json) =>
      _$CardsCreateWithoutTagsInputFromJson(json);

  final String? question;

  final String? answer;

  final int? due;

  final DecksCreateNestedOneWithoutCardsInput? decks;

  @override
  Map<String, dynamic> toJson() => _$CardsCreateWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedCreateWithoutTagsInput implements _i1.JsonSerializable {
  const CardsUncheckedCreateWithoutTagsInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
  });

  factory CardsUncheckedCreateWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedCreateWithoutTagsInputFromJson(json);

  @JsonKey(name: r'card_id')
  final int? cardId;

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final String? question;

  final String? answer;

  final int? due;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedCreateWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateOrConnectWithoutTagsInput implements _i1.JsonSerializable {
  const CardsCreateOrConnectWithoutTagsInput({
    required this.where,
    required this.create,
  });

  factory CardsCreateOrConnectWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsCreateOrConnectWithoutTagsInputFromJson(json);

  final CardsWhereUniqueInput where;

  final CardsCreateWithoutTagsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsCreateOrConnectWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateManyTagsInputEnvelope implements _i1.JsonSerializable {
  const CardsCreateManyTagsInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory CardsCreateManyTagsInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$CardsCreateManyTagsInputEnvelopeFromJson(json);

  final Iterable<CardsCreateManyTagsInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsCreateManyTagsInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class CardsUpsertWithWhereUniqueWithoutTagsInput
    implements _i1.JsonSerializable {
  const CardsUpsertWithWhereUniqueWithoutTagsInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory CardsUpsertWithWhereUniqueWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUpsertWithWhereUniqueWithoutTagsInputFromJson(json);

  final CardsWhereUniqueInput where;

  final CardsUpdateWithoutTagsInput update;

  final CardsCreateWithoutTagsInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUpsertWithWhereUniqueWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateWithWhereUniqueWithoutTagsInput
    implements _i1.JsonSerializable {
  const CardsUpdateWithWhereUniqueWithoutTagsInput({
    required this.where,
    required this.data,
  });

  factory CardsUpdateWithWhereUniqueWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUpdateWithWhereUniqueWithoutTagsInputFromJson(json);

  final CardsWhereUniqueInput where;

  final CardsUpdateWithoutTagsInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUpdateWithWhereUniqueWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateManyWithWhereWithoutTagsInput implements _i1.JsonSerializable {
  const CardsUpdateManyWithWhereWithoutTagsInput({
    required this.where,
    required this.data,
  });

  factory CardsUpdateManyWithWhereWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUpdateManyWithWhereWithoutTagsInputFromJson(json);

  final CardsScalarWhereInput where;

  final CardsUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUpdateManyWithWhereWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateWithoutUsersInput implements _i1.JsonSerializable {
  const DecksCreateWithoutUsersInput({
    this.title,
    this.datecreated,
    this.cards,
  });

  factory DecksCreateWithoutUsersInput.fromJson(Map<String, dynamic> json) =>
      _$DecksCreateWithoutUsersInputFromJson(json);

  final String? title;

  final String? datecreated;

  final CardsCreateNestedManyWithoutDecksInput? cards;

  @override
  Map<String, dynamic> toJson() => _$DecksCreateWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedCreateWithoutUsersInput implements _i1.JsonSerializable {
  const DecksUncheckedCreateWithoutUsersInput({
    this.deckId,
    this.title,
    this.datecreated,
    this.cards,
  });

  factory DecksUncheckedCreateWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUncheckedCreateWithoutUsersInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final String? title;

  final String? datecreated;

  final CardsUncheckedCreateNestedManyWithoutDecksInput? cards;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUncheckedCreateWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateOrConnectWithoutUsersInput implements _i1.JsonSerializable {
  const DecksCreateOrConnectWithoutUsersInput({
    required this.where,
    required this.create,
  });

  factory DecksCreateOrConnectWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksCreateOrConnectWithoutUsersInputFromJson(json);

  final DecksWhereUniqueInput where;

  final DecksCreateWithoutUsersInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksCreateOrConnectWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateManyUsersInputEnvelope implements _i1.JsonSerializable {
  const DecksCreateManyUsersInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory DecksCreateManyUsersInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$DecksCreateManyUsersInputEnvelopeFromJson(json);

  final Iterable<DecksCreateManyUsersInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksCreateManyUsersInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class DecksUpsertWithWhereUniqueWithoutUsersInput
    implements _i1.JsonSerializable {
  const DecksUpsertWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory DecksUpsertWithWhereUniqueWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUpsertWithWhereUniqueWithoutUsersInputFromJson(json);

  final DecksWhereUniqueInput where;

  final DecksUpdateWithoutUsersInput update;

  final DecksCreateWithoutUsersInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUpsertWithWhereUniqueWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateWithWhereUniqueWithoutUsersInput
    implements _i1.JsonSerializable {
  const DecksUpdateWithWhereUniqueWithoutUsersInput({
    required this.where,
    required this.data,
  });

  factory DecksUpdateWithWhereUniqueWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUpdateWithWhereUniqueWithoutUsersInputFromJson(json);

  final DecksWhereUniqueInput where;

  final DecksUpdateWithoutUsersInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUpdateWithWhereUniqueWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateManyWithWhereWithoutUsersInput
    implements _i1.JsonSerializable {
  const DecksUpdateManyWithWhereWithoutUsersInput({
    required this.where,
    required this.data,
  });

  factory DecksUpdateManyWithWhereWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUpdateManyWithWhereWithoutUsersInputFromJson(json);

  final DecksScalarWhereInput where;

  final DecksUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUpdateManyWithWhereWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksScalarWhereInput implements _i1.JsonSerializable {
  const DecksScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$DecksScalarWhereInputFromJson(json);

  final Iterable<DecksScalarWhereInput>? AND;

  final Iterable<DecksScalarWhereInput>? OR;

  final Iterable<DecksScalarWhereInput>? NOT;

  @JsonKey(name: r'deck_id')
  final IntFilter? deckId;

  @JsonKey(name: r'user_id')
  final IntNullableFilter? userId;

  final StringNullableFilter? title;

  final StringNullableFilter? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateManyDecksInput implements _i1.JsonSerializable {
  const CardsCreateManyDecksInput({
    this.cardId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsCreateManyDecksInput.fromJson(Map<String, dynamic> json) =>
      _$CardsCreateManyDecksInputFromJson(json);

  @JsonKey(name: r'card_id')
  final int? cardId;

  final String? question;

  final String? answer;

  final int? due;

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsCreateManyDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateWithoutDecksInput implements _i1.JsonSerializable {
  const CardsUpdateWithoutDecksInput({
    this.question,
    this.answer,
    this.due,
    this.tags,
  });

  factory CardsUpdateWithoutDecksInput.fromJson(Map<String, dynamic> json) =>
      _$CardsUpdateWithoutDecksInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  final TagsUpdateOneWithoutCardsNestedInput? tags;

  @override
  Map<String, dynamic> toJson() => _$CardsUpdateWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedUpdateWithoutDecksInput implements _i1.JsonSerializable {
  const CardsUncheckedUpdateWithoutDecksInput({
    this.cardId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsUncheckedUpdateWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedUpdateWithoutDecksInputFromJson(json);

  @JsonKey(name: r'card_id')
  final IntFieldUpdateOperationsInput? cardId;

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  @JsonKey(name: r'tag_id')
  final NullableIntFieldUpdateOperationsInput? tagId;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedUpdateWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedUpdateManyWithoutDecksInput
    implements _i1.JsonSerializable {
  const CardsUncheckedUpdateManyWithoutDecksInput({
    this.cardId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsUncheckedUpdateManyWithoutDecksInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedUpdateManyWithoutDecksInputFromJson(json);

  @JsonKey(name: r'card_id')
  final IntFieldUpdateOperationsInput? cardId;

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  @JsonKey(name: r'tag_id')
  final NullableIntFieldUpdateOperationsInput? tagId;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedUpdateManyWithoutDecksInputToJson(this);
}

@_i1.jsonSerializable
class CardsCreateManyTagsInput implements _i1.JsonSerializable {
  const CardsCreateManyTagsInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
  });

  factory CardsCreateManyTagsInput.fromJson(Map<String, dynamic> json) =>
      _$CardsCreateManyTagsInputFromJson(json);

  @JsonKey(name: r'card_id')
  final int? cardId;

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final String? question;

  final String? answer;

  final int? due;

  @override
  Map<String, dynamic> toJson() => _$CardsCreateManyTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsUpdateWithoutTagsInput implements _i1.JsonSerializable {
  const CardsUpdateWithoutTagsInput({
    this.question,
    this.answer,
    this.due,
    this.decks,
  });

  factory CardsUpdateWithoutTagsInput.fromJson(Map<String, dynamic> json) =>
      _$CardsUpdateWithoutTagsInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  final DecksUpdateOneWithoutCardsNestedInput? decks;

  @override
  Map<String, dynamic> toJson() => _$CardsUpdateWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedUpdateWithoutTagsInput implements _i1.JsonSerializable {
  const CardsUncheckedUpdateWithoutTagsInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
  });

  factory CardsUncheckedUpdateWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedUpdateWithoutTagsInputFromJson(json);

  @JsonKey(name: r'card_id')
  final IntFieldUpdateOperationsInput? cardId;

  @JsonKey(name: r'deck_id')
  final NullableIntFieldUpdateOperationsInput? deckId;

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedUpdateWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class CardsUncheckedUpdateManyWithoutTagsInput implements _i1.JsonSerializable {
  const CardsUncheckedUpdateManyWithoutTagsInput({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
  });

  factory CardsUncheckedUpdateManyWithoutTagsInput.fromJson(
          Map<String, dynamic> json) =>
      _$CardsUncheckedUpdateManyWithoutTagsInputFromJson(json);

  @JsonKey(name: r'card_id')
  final IntFieldUpdateOperationsInput? cardId;

  @JsonKey(name: r'deck_id')
  final NullableIntFieldUpdateOperationsInput? deckId;

  final NullableStringFieldUpdateOperationsInput? question;

  final NullableStringFieldUpdateOperationsInput? answer;

  final NullableIntFieldUpdateOperationsInput? due;

  @override
  Map<String, dynamic> toJson() =>
      _$CardsUncheckedUpdateManyWithoutTagsInputToJson(this);
}

@_i1.jsonSerializable
class DecksCreateManyUsersInput implements _i1.JsonSerializable {
  const DecksCreateManyUsersInput({
    this.deckId,
    this.title,
    this.datecreated,
  });

  factory DecksCreateManyUsersInput.fromJson(Map<String, dynamic> json) =>
      _$DecksCreateManyUsersInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final String? title;

  final String? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksCreateManyUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksUpdateWithoutUsersInput implements _i1.JsonSerializable {
  const DecksUpdateWithoutUsersInput({
    this.title,
    this.datecreated,
    this.cards,
  });

  factory DecksUpdateWithoutUsersInput.fromJson(Map<String, dynamic> json) =>
      _$DecksUpdateWithoutUsersInputFromJson(json);

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  final CardsUpdateManyWithoutDecksNestedInput? cards;

  @override
  Map<String, dynamic> toJson() => _$DecksUpdateWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedUpdateWithoutUsersInput implements _i1.JsonSerializable {
  const DecksUncheckedUpdateWithoutUsersInput({
    this.deckId,
    this.title,
    this.datecreated,
    this.cards,
  });

  factory DecksUncheckedUpdateWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUncheckedUpdateWithoutUsersInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final IntFieldUpdateOperationsInput? deckId;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  final CardsUncheckedUpdateManyWithoutDecksNestedInput? cards;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUncheckedUpdateWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class DecksUncheckedUpdateManyWithoutUsersInput
    implements _i1.JsonSerializable {
  const DecksUncheckedUpdateManyWithoutUsersInput({
    this.deckId,
    this.title,
    this.datecreated,
  });

  factory DecksUncheckedUpdateManyWithoutUsersInput.fromJson(
          Map<String, dynamic> json) =>
      _$DecksUncheckedUpdateManyWithoutUsersInputFromJson(json);

  @JsonKey(name: r'deck_id')
  final IntFieldUpdateOperationsInput? deckId;

  final NullableStringFieldUpdateOperationsInput? title;

  final NullableStringFieldUpdateOperationsInput? datecreated;

  @override
  Map<String, dynamic> toJson() =>
      _$DecksUncheckedUpdateManyWithoutUsersInputToJson(this);
}

@_i1.jsonSerializable
class Cards implements _i1.JsonSerializable {
  const Cards({
    required this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory Cards.fromJson(Map<String, dynamic> json) => _$CardsFromJson(json);

  @JsonKey(name: r'card_id')
  final int cardId;

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final String? question;

  final String? answer;

  final int? due;

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsToJson(this);
}

@_i1.jsonSerializable
class CustomStudy implements _i1.JsonSerializable {
  const CustomStudy({
    required this.customid,
    this.customDue,
  });

  factory CustomStudy.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyFromJson(json);

  final int customid;

  @JsonKey(name: r'custom_due')
  final int? customDue;

  @override
  Map<String, dynamic> toJson() => _$CustomStudyToJson(this);
}

@_i1.jsonSerializable
class Decks implements _i1.JsonSerializable {
  const Decks({
    required this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory Decks.fromJson(Map<String, dynamic> json) => _$DecksFromJson(json);

  @JsonKey(name: r'deck_id')
  final int deckId;

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? title;

  final String? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksToJson(this);
}

@_i1.jsonSerializable
class Tags implements _i1.JsonSerializable {
  const Tags({
    required this.tagId,
    this.tagName,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  @JsonKey(name: r'tag_id')
  final int tagId;

  @JsonKey(name: r'tag_name')
  final String? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsToJson(this);
}

@_i1.jsonSerializable
class Users implements _i1.JsonSerializable {
  const Users({
    required this.userId,
    this.username,
    this.passwordHash,
  });

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

  @JsonKey(name: r'user_id')
  final int userId;

  final String? username;

  @JsonKey(name: r'password_hash')
  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}

class CardsFluent<T> extends _i1.PrismaFluent<T> {
  const CardsFluent(
    super.original,
    super.$query,
  );

  DecksFluent<Decks?> decks({DecksWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'decks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'decks',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Decks.fromJson(json.cast<String, dynamic>()) : null);
    return DecksFluent<Decks?>(
      future,
      query,
    );
  }

  TagsFluent<Tags?> tags({TagsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'tags',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tags.fromJson(json.cast<String, dynamic>()) : null);
    return TagsFluent<Tags?>(
      future,
      query,
    );
  }
}

class CustomStudyFluent<T> extends _i1.PrismaFluent<T> {
  const CustomStudyFluent(
    super.original,
    super.$query,
  );
}

class DecksFluent<T> extends _i1.PrismaFluent<T> {
  const DecksFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Cards>?> cards({
    CardsWhereInput? where,
    Iterable<CardsOrderByWithRelationInput>? orderBy,
    CardsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CardsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'cards',
    );
    final fields = CardsScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> cards) =>
        cards.map((Map cards) => Cards.fromJson(cards.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  UsersFluent<Users?> users({UsersWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'users',
          fields: fields,
          args: args,
        )
      ]),
      key: r'users',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Users.fromJson(json.cast<String, dynamic>()) : null);
    return UsersFluent<Users?>(
      future,
      query,
    );
  }

  DecksCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return DecksCountOutputType(query);
  }
}

class TagsFluent<T> extends _i1.PrismaFluent<T> {
  const TagsFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Cards>?> cards({
    CardsWhereInput? where,
    Iterable<CardsOrderByWithRelationInput>? orderBy,
    CardsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CardsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'cards',
    );
    final fields = CardsScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> cards) =>
        cards.map((Map cards) => Cards.fromJson(cards.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  TagsCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TagsCountOutputType(query);
  }
}

class UsersFluent<T> extends _i1.PrismaFluent<T> {
  const UsersFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Decks>?> decks({
    DecksWhereInput? where,
    Iterable<DecksOrderByWithRelationInput>? orderBy,
    DecksWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<DecksScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'decks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'decks',
    );
    final fields = DecksScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> decks) =>
        decks.map((Map decks) => Decks.fromJson(decks.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  UsersCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UsersCountOutputType(query);
  }
}

extension CardsModelDelegateExtension on _i1.ModelDelegate<Cards> {
  CardsFluent<Cards?> findUnique({required CardsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecards',
    );
    final future = query(CardsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Cards.fromJson(json.cast<String, dynamic>()) : null);
    return CardsFluent<Cards?>(
      future,
      query,
    );
  }

  CardsFluent<Cards> findUniqueOrThrow({required CardsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecardsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecardsOrThrow',
    );
    final future = query(CardsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Cards.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: cards)'));
    return CardsFluent<Cards>(
      future,
      query,
    );
  }

  CardsFluent<Cards?> findFirst({
    CardsWhereInput? where,
    Iterable<CardsOrderByWithRelationInput>? orderBy,
    CardsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CardsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcards',
    );
    final future = query(CardsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Cards.fromJson(json.cast<String, dynamic>()) : null);
    return CardsFluent<Cards?>(
      future,
      query,
    );
  }

  CardsFluent<Cards> findFirstOrThrow({
    CardsWhereInput? where,
    Iterable<CardsOrderByWithRelationInput>? orderBy,
    CardsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CardsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcardsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcardsOrThrow',
    );
    final future = query(CardsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Cards.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: cards)'));
    return CardsFluent<Cards>(
      future,
      query,
    );
  }

  Future<Iterable<Cards>> findMany({
    CardsWhereInput? where,
    Iterable<CardsOrderByWithRelationInput>? orderBy,
    CardsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CardsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManycards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManycards',
    );
    final fields = CardsScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManycards) => findManycards
        .map((Map findManycards) => Cards.fromJson(findManycards.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  CardsFluent<Cards> create({CardsCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnecards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnecards',
    );
    final future = query(CardsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Cards.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: cards)'));
    return CardsFluent<Cards>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<CardsCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManycards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManycards',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManycards) =>
        AffectedRowsOutput.fromJson(createManycards.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CardsFluent<Cards?> update({
    required CardsUpdateInput data,
    required CardsWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnecards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnecards',
    );
    final future = query(CardsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Cards.fromJson(json.cast<String, dynamic>()) : null);
    return CardsFluent<Cards?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required CardsUpdateManyMutationInput data,
    CardsWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManycards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManycards',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManycards) =>
        AffectedRowsOutput.fromJson(updateManycards.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CardsFluent<Cards> upsert({
    required CardsWhereUniqueInput where,
    required CardsCreateInput create,
    required CardsUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnecards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnecards',
    );
    final future = query(CardsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Cards.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: cards)'));
    return CardsFluent<Cards>(
      future,
      query,
    );
  }

  CardsFluent<Cards?> delete({required CardsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnecards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnecards',
    );
    final future = query(CardsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Cards.fromJson(json.cast<String, dynamic>()) : null);
    return CardsFluent<Cards?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({CardsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManycards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManycards',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManycards) =>
        AffectedRowsOutput.fromJson(deleteManycards.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateCards aggregate({
    CardsWhereInput? where,
    Iterable<CardsOrderByWithRelationInput>? orderBy,
    CardsWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatecards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatecards',
    );
    return AggregateCards(query);
  }

  Future<Iterable<CardsGroupByOutputType>> groupBy({
    CardsWhereInput? where,
    Iterable<CardsOrderByWithAggregationInput>? orderBy,
    required Iterable<CardsScalarFieldEnum> by,
    CardsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBycards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBycards',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBycards) =>
        groupBycards.map((Map groupBycards) =>
            CardsGroupByOutputType.fromJson(groupBycards.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension CustomStudyModelDelegateExtension on _i1.ModelDelegate<CustomStudy> {
  CustomStudyFluent<CustomStudy?> findUnique(
      {required CustomStudyWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecustom_study',
    );
    final future = query(CustomStudyScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomStudy.fromJson(json.cast<String, dynamic>())
            : null);
    return CustomStudyFluent<CustomStudy?>(
      future,
      query,
    );
  }

  CustomStudyFluent<CustomStudy> findUniqueOrThrow(
      {required CustomStudyWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquecustom_studyOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquecustom_studyOrThrow',
    );
    final future = query(CustomStudyScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomStudy.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: custom_study)'));
    return CustomStudyFluent<CustomStudy>(
      future,
      query,
    );
  }

  CustomStudyFluent<CustomStudy?> findFirst({
    CustomStudyWhereInput? where,
    Iterable<CustomStudyOrderByWithRelationInput>? orderBy,
    CustomStudyWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CustomStudyScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcustom_study',
    );
    final future = query(CustomStudyScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomStudy.fromJson(json.cast<String, dynamic>())
            : null);
    return CustomStudyFluent<CustomStudy?>(
      future,
      query,
    );
  }

  CustomStudyFluent<CustomStudy> findFirstOrThrow({
    CustomStudyWhereInput? where,
    Iterable<CustomStudyOrderByWithRelationInput>? orderBy,
    CustomStudyWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CustomStudyScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstcustom_studyOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstcustom_studyOrThrow',
    );
    final future = query(CustomStudyScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomStudy.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: custom_study)'));
    return CustomStudyFluent<CustomStudy>(
      future,
      query,
    );
  }

  Future<Iterable<CustomStudy>> findMany({
    CustomStudyWhereInput? where,
    Iterable<CustomStudyOrderByWithRelationInput>? orderBy,
    CustomStudyWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CustomStudyScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManycustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManycustom_study',
    );
    final fields = CustomStudyScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManycustomStudy) =>
        findManycustomStudy.map((Map findManycustomStudy) =>
            CustomStudy.fromJson(findManycustomStudy.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  CustomStudyFluent<CustomStudy> create({CustomStudyCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnecustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnecustom_study',
    );
    final future = query(CustomStudyScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomStudy.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: custom_study)'));
    return CustomStudyFluent<CustomStudy>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<CustomStudyCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManycustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManycustom_study',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManycustomStudy) =>
        AffectedRowsOutput.fromJson(createManycustomStudy.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CustomStudyFluent<CustomStudy?> update({
    required CustomStudyUpdateInput data,
    required CustomStudyWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnecustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnecustom_study',
    );
    final future = query(CustomStudyScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomStudy.fromJson(json.cast<String, dynamic>())
            : null);
    return CustomStudyFluent<CustomStudy?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required CustomStudyUpdateManyMutationInput data,
    CustomStudyWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManycustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManycustom_study',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManycustomStudy) =>
        AffectedRowsOutput.fromJson(updateManycustomStudy.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CustomStudyFluent<CustomStudy> upsert({
    required CustomStudyWhereUniqueInput where,
    required CustomStudyCreateInput create,
    required CustomStudyUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnecustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnecustom_study',
    );
    final future = query(CustomStudyScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomStudy.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: custom_study)'));
    return CustomStudyFluent<CustomStudy>(
      future,
      query,
    );
  }

  CustomStudyFluent<CustomStudy?> delete(
      {required CustomStudyWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnecustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnecustom_study',
    );
    final future = query(CustomStudyScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? CustomStudy.fromJson(json.cast<String, dynamic>())
            : null);
    return CustomStudyFluent<CustomStudy?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({CustomStudyWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManycustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManycustom_study',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManycustomStudy) =>
        AffectedRowsOutput.fromJson(deleteManycustomStudy.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateCustomStudy aggregate({
    CustomStudyWhereInput? where,
    Iterable<CustomStudyOrderByWithRelationInput>? orderBy,
    CustomStudyWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatecustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatecustom_study',
    );
    return AggregateCustomStudy(query);
  }

  Future<Iterable<CustomStudyGroupByOutputType>> groupBy({
    CustomStudyWhereInput? where,
    Iterable<CustomStudyOrderByWithAggregationInput>? orderBy,
    required Iterable<CustomStudyScalarFieldEnum> by,
    CustomStudyScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBycustom_study',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBycustom_study',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBycustomStudy) =>
        groupBycustomStudy.map((Map groupBycustomStudy) =>
            CustomStudyGroupByOutputType.fromJson(groupBycustomStudy.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension DecksModelDelegateExtension on _i1.ModelDelegate<Decks> {
  DecksFluent<Decks?> findUnique({required DecksWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquedecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquedecks',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Decks.fromJson(json.cast<String, dynamic>()) : null);
    return DecksFluent<Decks?>(
      future,
      query,
    );
  }

  DecksFluent<Decks> findUniqueOrThrow({required DecksWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquedecksOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquedecksOrThrow',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Decks.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: decks)'));
    return DecksFluent<Decks>(
      future,
      query,
    );
  }

  DecksFluent<Decks?> findFirst({
    DecksWhereInput? where,
    Iterable<DecksOrderByWithRelationInput>? orderBy,
    DecksWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<DecksScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstdecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstdecks',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Decks.fromJson(json.cast<String, dynamic>()) : null);
    return DecksFluent<Decks?>(
      future,
      query,
    );
  }

  DecksFluent<Decks> findFirstOrThrow({
    DecksWhereInput? where,
    Iterable<DecksOrderByWithRelationInput>? orderBy,
    DecksWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<DecksScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstdecksOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstdecksOrThrow',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Decks.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: decks)'));
    return DecksFluent<Decks>(
      future,
      query,
    );
  }

  Future<Iterable<Decks>> findMany({
    DecksWhereInput? where,
    Iterable<DecksOrderByWithRelationInput>? orderBy,
    DecksWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<DecksScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManydecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManydecks',
    );
    final fields = DecksScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManydecks) => findManydecks
        .map((Map findManydecks) => Decks.fromJson(findManydecks.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  DecksFluent<Decks> create({DecksCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnedecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnedecks',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Decks.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: decks)'));
    return DecksFluent<Decks>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<DecksCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManydecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManydecks',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManydecks) =>
        AffectedRowsOutput.fromJson(createManydecks.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  DecksFluent<Decks?> update({
    required DecksUpdateInput data,
    required DecksWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnedecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnedecks',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Decks.fromJson(json.cast<String, dynamic>()) : null);
    return DecksFluent<Decks?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required DecksUpdateManyMutationInput data,
    DecksWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManydecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManydecks',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManydecks) =>
        AffectedRowsOutput.fromJson(updateManydecks.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  DecksFluent<Decks> upsert({
    required DecksWhereUniqueInput where,
    required DecksCreateInput create,
    required DecksUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnedecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnedecks',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Decks.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: decks)'));
    return DecksFluent<Decks>(
      future,
      query,
    );
  }

  DecksFluent<Decks?> delete({required DecksWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnedecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnedecks',
    );
    final future = query(DecksScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Decks.fromJson(json.cast<String, dynamic>()) : null);
    return DecksFluent<Decks?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({DecksWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManydecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManydecks',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManydecks) =>
        AffectedRowsOutput.fromJson(deleteManydecks.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateDecks aggregate({
    DecksWhereInput? where,
    Iterable<DecksOrderByWithRelationInput>? orderBy,
    DecksWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatedecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatedecks',
    );
    return AggregateDecks(query);
  }

  Future<Iterable<DecksGroupByOutputType>> groupBy({
    DecksWhereInput? where,
    Iterable<DecksOrderByWithAggregationInput>? orderBy,
    required Iterable<DecksScalarFieldEnum> by,
    DecksScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBydecks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBydecks',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBydecks) =>
        groupBydecks.map((Map groupBydecks) =>
            DecksGroupByOutputType.fromJson(groupBydecks.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension TagsModelDelegateExtension on _i1.ModelDelegate<Tags> {
  TagsFluent<Tags?> findUnique({required TagsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquetags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquetags',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tags.fromJson(json.cast<String, dynamic>()) : null);
    return TagsFluent<Tags?>(
      future,
      query,
    );
  }

  TagsFluent<Tags> findUniqueOrThrow({required TagsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniquetagsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniquetagsOrThrow',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Tags.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tags)'));
    return TagsFluent<Tags>(
      future,
      query,
    );
  }

  TagsFluent<Tags?> findFirst({
    TagsWhereInput? where,
    Iterable<TagsOrderByWithRelationInput>? orderBy,
    TagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TagsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirsttags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirsttags',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tags.fromJson(json.cast<String, dynamic>()) : null);
    return TagsFluent<Tags?>(
      future,
      query,
    );
  }

  TagsFluent<Tags> findFirstOrThrow({
    TagsWhereInput? where,
    Iterable<TagsOrderByWithRelationInput>? orderBy,
    TagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TagsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirsttagsOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirsttagsOrThrow',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Tags.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tags)'));
    return TagsFluent<Tags>(
      future,
      query,
    );
  }

  Future<Iterable<Tags>> findMany({
    TagsWhereInput? where,
    Iterable<TagsOrderByWithRelationInput>? orderBy,
    TagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<TagsScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManytags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManytags',
    );
    final fields = TagsScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManytags) => findManytags
        .map((Map findManytags) => Tags.fromJson(findManytags.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  TagsFluent<Tags> create({TagsCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOnetags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOnetags',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Tags.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tags)'));
    return TagsFluent<Tags>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<TagsCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManytags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManytags',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManytags) =>
        AffectedRowsOutput.fromJson(createManytags.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TagsFluent<Tags?> update({
    required TagsUpdateInput data,
    required TagsWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOnetags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOnetags',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tags.fromJson(json.cast<String, dynamic>()) : null);
    return TagsFluent<Tags?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required TagsUpdateManyMutationInput data,
    TagsWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManytags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManytags',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManytags) =>
        AffectedRowsOutput.fromJson(updateManytags.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  TagsFluent<Tags> upsert({
    required TagsWhereUniqueInput where,
    required TagsCreateInput create,
    required TagsUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOnetags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOnetags',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Tags.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: tags)'));
    return TagsFluent<Tags>(
      future,
      query,
    );
  }

  TagsFluent<Tags?> delete({required TagsWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOnetags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOnetags',
    );
    final future = query(TagsScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Tags.fromJson(json.cast<String, dynamic>()) : null);
    return TagsFluent<Tags?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({TagsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManytags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManytags',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManytags) =>
        AffectedRowsOutput.fromJson(deleteManytags.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateTags aggregate({
    TagsWhereInput? where,
    Iterable<TagsOrderByWithRelationInput>? orderBy,
    TagsWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregatetags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregatetags',
    );
    return AggregateTags(query);
  }

  Future<Iterable<TagsGroupByOutputType>> groupBy({
    TagsWhereInput? where,
    Iterable<TagsOrderByWithAggregationInput>? orderBy,
    required Iterable<TagsScalarFieldEnum> by,
    TagsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupBytags',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupBytags',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupBytags) => groupBytags.map((Map groupBytags) =>
        TagsGroupByOutputType.fromJson(groupBytags.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension UsersModelDelegateExtension on _i1.ModelDelegate<Users> {
  UsersFluent<Users?> findUnique({required UsersWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueusers',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Users.fromJson(json.cast<String, dynamic>()) : null);
    return UsersFluent<Users?>(
      future,
      query,
    );
  }

  UsersFluent<Users> findUniqueOrThrow({required UsersWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueusersOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueusersOrThrow',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Users.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: users)'));
    return UsersFluent<Users>(
      future,
      query,
    );
  }

  UsersFluent<Users?> findFirst({
    UsersWhereInput? where,
    Iterable<UsersOrderByWithRelationInput>? orderBy,
    UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsersScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstusers',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Users.fromJson(json.cast<String, dynamic>()) : null);
    return UsersFluent<Users?>(
      future,
      query,
    );
  }

  UsersFluent<Users> findFirstOrThrow({
    UsersWhereInput? where,
    Iterable<UsersOrderByWithRelationInput>? orderBy,
    UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsersScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstusersOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstusersOrThrow',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Users.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: users)'));
    return UsersFluent<Users>(
      future,
      query,
    );
  }

  Future<Iterable<Users>> findMany({
    UsersWhereInput? where,
    Iterable<UsersOrderByWithRelationInput>? orderBy,
    UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UsersScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyusers',
    );
    final fields = UsersScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyusers) => findManyusers
        .map((Map findManyusers) => Users.fromJson(findManyusers.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UsersFluent<Users> create({UsersCreateInput? data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneusers',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Users.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: users)'));
    return UsersFluent<Users>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UsersCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyusers',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyusers) =>
        AffectedRowsOutput.fromJson(createManyusers.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UsersFluent<Users?> update({
    required UsersUpdateInput data,
    required UsersWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneusers',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Users.fromJson(json.cast<String, dynamic>()) : null);
    return UsersFluent<Users?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UsersUpdateManyMutationInput data,
    UsersWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyusers',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyusers) =>
        AffectedRowsOutput.fromJson(updateManyusers.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UsersFluent<Users> upsert({
    required UsersWhereUniqueInput where,
    required UsersCreateInput create,
    required UsersUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneusers',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Users.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: users)'));
    return UsersFluent<Users>(
      future,
      query,
    );
  }

  UsersFluent<Users?> delete({required UsersWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneusers',
    );
    final future = query(UsersScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Users.fromJson(json.cast<String, dynamic>()) : null);
    return UsersFluent<Users?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UsersWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyusers',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyusers) =>
        AffectedRowsOutput.fromJson(deleteManyusers.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUsers aggregate({
    UsersWhereInput? where,
    Iterable<UsersOrderByWithRelationInput>? orderBy,
    UsersWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateusers',
    );
    return AggregateUsers(query);
  }

  Future<Iterable<UsersGroupByOutputType>> groupBy({
    UsersWhereInput? where,
    Iterable<UsersOrderByWithAggregationInput>? orderBy,
    required Iterable<UsersScalarFieldEnum> by,
    UsersScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByusers',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByusers',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByusers) =>
        groupByusers.map((Map groupByusers) =>
            UsersGroupByOutputType.fromJson(groupByusers.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class CardsGroupByOutputType implements _i1.JsonSerializable {
  const CardsGroupByOutputType({
    this.cardId,
    this.deckId,
    this.question,
    this.answer,
    this.due,
    this.tagId,
  });

  factory CardsGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$CardsGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'card_id')
  final int? cardId;

  @JsonKey(name: r'deck_id')
  final int? deckId;

  final String? question;

  final String? answer;

  final int? due;

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @override
  Map<String, dynamic> toJson() => _$CardsGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class CustomStudyGroupByOutputType implements _i1.JsonSerializable {
  const CustomStudyGroupByOutputType({
    this.customid,
    this.customDue,
  });

  factory CustomStudyGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$CustomStudyGroupByOutputTypeFromJson(json);

  final int? customid;

  @JsonKey(name: r'custom_due')
  final int? customDue;

  @override
  Map<String, dynamic> toJson() => _$CustomStudyGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class DecksGroupByOutputType implements _i1.JsonSerializable {
  const DecksGroupByOutputType({
    this.deckId,
    this.userId,
    this.title,
    this.datecreated,
  });

  factory DecksGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$DecksGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'deck_id')
  final int? deckId;

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? title;

  final String? datecreated;

  @override
  Map<String, dynamic> toJson() => _$DecksGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class TagsGroupByOutputType implements _i1.JsonSerializable {
  const TagsGroupByOutputType({
    this.tagId,
    this.tagName,
  });

  factory TagsGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$TagsGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'tag_id')
  final int? tagId;

  @JsonKey(name: r'tag_name')
  final String? tagName;

  @override
  Map<String, dynamic> toJson() => _$TagsGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class UsersGroupByOutputType implements _i1.JsonSerializable {
  const UsersGroupByOutputType({
    this.userId,
    this.username,
    this.passwordHash,
  });

  factory UsersGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UsersGroupByOutputTypeFromJson(json);

  @JsonKey(name: r'user_id')
  final int? userId;

  final String? username;

  @JsonKey(name: r'password_hash')
  final String? passwordHash;

  @override
  Map<String, dynamic> toJson() => _$UsersGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateCards {
  const AggregateCards(this.$query);

  final _i1.PrismaFluentQuery $query;

  CardsCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CardsCountAggregateOutputType(query);
  }

  CardsAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return CardsAvgAggregateOutputType(query);
  }

  CardsSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return CardsSumAggregateOutputType(query);
  }

  CardsMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return CardsMinAggregateOutputType(query);
  }

  CardsMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return CardsMaxAggregateOutputType(query);
  }
}

class AggregateCustomStudy {
  const AggregateCustomStudy(this.$query);

  final _i1.PrismaFluentQuery $query;

  CustomStudyCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CustomStudyCountAggregateOutputType(query);
  }

  CustomStudyAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return CustomStudyAvgAggregateOutputType(query);
  }

  CustomStudySumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return CustomStudySumAggregateOutputType(query);
  }

  CustomStudyMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return CustomStudyMinAggregateOutputType(query);
  }

  CustomStudyMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return CustomStudyMaxAggregateOutputType(query);
  }
}

class AggregateDecks {
  const AggregateDecks(this.$query);

  final _i1.PrismaFluentQuery $query;

  DecksCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return DecksCountAggregateOutputType(query);
  }

  DecksAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return DecksAvgAggregateOutputType(query);
  }

  DecksSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return DecksSumAggregateOutputType(query);
  }

  DecksMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return DecksMinAggregateOutputType(query);
  }

  DecksMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return DecksMaxAggregateOutputType(query);
  }
}

class AggregateTags {
  const AggregateTags(this.$query);

  final _i1.PrismaFluentQuery $query;

  TagsCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return TagsCountAggregateOutputType(query);
  }

  TagsAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return TagsAvgAggregateOutputType(query);
  }

  TagsSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return TagsSumAggregateOutputType(query);
  }

  TagsMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return TagsMinAggregateOutputType(query);
  }

  TagsMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return TagsMaxAggregateOutputType(query);
  }
}

class AggregateUsers {
  const AggregateUsers(this.$query);

  final _i1.PrismaFluentQuery $query;

  UsersCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UsersCountAggregateOutputType(query);
  }

  UsersAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return UsersAvgAggregateOutputType(query);
  }

  UsersSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return UsersSumAggregateOutputType(query);
  }

  UsersMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UsersMinAggregateOutputType(query);
  }

  UsersMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UsersMaxAggregateOutputType(query);
  }
}

class CardsCountAggregateOutputType {
  const CardsCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> cardId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'card_id',
          fields: fields,
        )
      ]),
      key: r'card_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> question() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'question',
          fields: fields,
        )
      ]),
      key: r'question',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> answer() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'answer',
          fields: fields,
        )
      ]),
      key: r'answer',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> due() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'due',
          fields: fields,
        )
      ]),
      key: r'due',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CardsAvgAggregateOutputType {
  const CardsAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> cardId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'card_id',
          fields: fields,
        )
      ]),
      key: r'card_id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> due() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'due',
          fields: fields,
        )
      ]),
      key: r'due',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class CardsSumAggregateOutputType {
  const CardsSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> cardId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'card_id',
          fields: fields,
        )
      ]),
      key: r'card_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> due() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'due',
          fields: fields,
        )
      ]),
      key: r'due',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CardsMinAggregateOutputType {
  const CardsMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> cardId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'card_id',
          fields: fields,
        )
      ]),
      key: r'card_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> question() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'question',
          fields: fields,
        )
      ]),
      key: r'question',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> answer() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'answer',
          fields: fields,
        )
      ]),
      key: r'answer',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> due() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'due',
          fields: fields,
        )
      ]),
      key: r'due',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CardsMaxAggregateOutputType {
  const CardsMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> cardId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'card_id',
          fields: fields,
        )
      ]),
      key: r'card_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> question() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'question',
          fields: fields,
        )
      ]),
      key: r'question',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> answer() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'answer',
          fields: fields,
        )
      ]),
      key: r'answer',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<int?> due() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'due',
          fields: fields,
        )
      ]),
      key: r'due',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CustomStudyCountAggregateOutputType {
  const CustomStudyCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> customid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customid',
          fields: fields,
        )
      ]),
      key: r'customid',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> customDue() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'custom_due',
          fields: fields,
        )
      ]),
      key: r'custom_due',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CustomStudyAvgAggregateOutputType {
  const CustomStudyAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> customid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customid',
          fields: fields,
        )
      ]),
      key: r'customid',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> customDue() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'custom_due',
          fields: fields,
        )
      ]),
      key: r'custom_due',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class CustomStudySumAggregateOutputType {
  const CustomStudySumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> customid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customid',
          fields: fields,
        )
      ]),
      key: r'customid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> customDue() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'custom_due',
          fields: fields,
        )
      ]),
      key: r'custom_due',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CustomStudyMinAggregateOutputType {
  const CustomStudyMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> customid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customid',
          fields: fields,
        )
      ]),
      key: r'customid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> customDue() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'custom_due',
          fields: fields,
        )
      ]),
      key: r'custom_due',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class CustomStudyMaxAggregateOutputType {
  const CustomStudyMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> customid() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'customid',
          fields: fields,
        )
      ]),
      key: r'customid',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> customDue() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'custom_due',
          fields: fields,
        )
      ]),
      key: r'custom_due',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class DecksCountOutputType {
  const DecksCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> cards({CardsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'cards',
    );
    return query(const []).then((value) => (value as int));
  }
}

class DecksCountAggregateOutputType {
  const DecksCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> datecreated() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'datecreated',
          fields: fields,
        )
      ]),
      key: r'datecreated',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class DecksAvgAggregateOutputType {
  const DecksAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as double?));
  }

  Future<double?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class DecksSumAggregateOutputType {
  const DecksSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class DecksMinAggregateOutputType {
  const DecksMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> datecreated() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'datecreated',
          fields: fields,
        )
      ]),
      key: r'datecreated',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class DecksMaxAggregateOutputType {
  const DecksMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> deckId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'deck_id',
          fields: fields,
        )
      ]),
      key: r'deck_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> title() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'title',
          fields: fields,
        )
      ]),
      key: r'title',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> datecreated() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'datecreated',
          fields: fields,
        )
      ]),
      key: r'datecreated',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class TagsCountOutputType {
  const TagsCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> cards({CardsWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cards',
          fields: fields,
          args: args,
        )
      ]),
      key: r'cards',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TagsCountAggregateOutputType {
  const TagsCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> tagName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_name',
          fields: fields,
        )
      ]),
      key: r'tag_name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class TagsAvgAggregateOutputType {
  const TagsAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class TagsSumAggregateOutputType {
  const TagsSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class TagsMinAggregateOutputType {
  const TagsMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> tagName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_name',
          fields: fields,
        )
      ]),
      key: r'tag_name',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class TagsMaxAggregateOutputType {
  const TagsMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> tagId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_id',
          fields: fields,
        )
      ]),
      key: r'tag_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> tagName() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'tag_name',
          fields: fields,
        )
      ]),
      key: r'tag_name',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class UsersCountOutputType {
  const UsersCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> decks({DecksWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'decks',
          fields: fields,
          args: args,
        )
      ]),
      key: r'decks',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UsersCountAggregateOutputType {
  const UsersCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> passwordHash() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password_hash',
          fields: fields,
        )
      ]),
      key: r'password_hash',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UsersAvgAggregateOutputType {
  const UsersAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class UsersSumAggregateOutputType {
  const UsersSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class UsersMinAggregateOutputType {
  const UsersMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> passwordHash() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password_hash',
          fields: fields,
        )
      ]),
      key: r'password_hash',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class UsersMaxAggregateOutputType {
  const UsersMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user_id',
          fields: fields,
        )
      ]),
      key: r'user_id',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> passwordHash() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password_hash',
          fields: fields,
        )
      ]),
      key: r'password_hash',
    );
    return query(const []).then((value) => (value as String?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Z2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJwb3N0Z3Jlc3FsIgogIHVybCAgICAgID0gZW52KCJEQVRBQkFTRV9VUkwiKQp9Cgptb2RlbCBjYXJkcyB7CiAgY2FyZF9pZCAgSW50ICAgICBAaWQgQGRlZmF1bHQoYXV0b2luY3JlbWVudCgpKQogIGRlY2tfaWQgIEludD8KICBxdWVzdGlvbiBTdHJpbmc/IEBkYi5WYXJDaGFyKDI1NSkKICBhbnN3ZXIgICBTdHJpbmc/IEBkYi5WYXJDaGFyKDI1NSkKICBkdWUgICAgICBJbnQ/CiAgdGFnX2lkICAgSW50PwogIGRlY2tzICAgIGRlY2tzPyAgQHJlbGF0aW9uKGZpZWxkczogW2RlY2tfaWRdLCByZWZlcmVuY2VzOiBbZGVja19pZF0sIG9uRGVsZXRlOiBOb0FjdGlvbiwgb25VcGRhdGU6IE5vQWN0aW9uKQogIHRhZ3MgICAgIHRhZ3M/ICAgQHJlbGF0aW9uKGZpZWxkczogW3RhZ19pZF0sIHJlZmVyZW5jZXM6IFt0YWdfaWRdLCBvbkRlbGV0ZTogTm9BY3Rpb24sIG9uVXBkYXRlOiBOb0FjdGlvbikKfQoKbW9kZWwgY3VzdG9tX3N0dWR5IHsKICBjdXN0b21pZCAgIEludCAgQGlkIEBkZWZhdWx0KGF1dG9pbmNyZW1lbnQoKSkKICBjdXN0b21fZHVlIEludD8KfQoKbW9kZWwgZGVja3MgewogIGRlY2tfaWQgICAgIEludCAgICAgQGlkIEBkZWZhdWx0KGF1dG9pbmNyZW1lbnQoKSkKICB1c2VyX2lkICAgICBJbnQ/CiAgdGl0bGUgICAgICAgU3RyaW5nPyBAZGIuVmFyQ2hhcigyNTUpCiAgZGF0ZWNyZWF0ZWQgU3RyaW5nPyBAZGIuVmFyQ2hhcigyNTUpCiAgY2FyZHMgICAgICAgY2FyZHNbXQogIHVzZXJzICAgICAgIHVzZXJzPyAgQHJlbGF0aW9uKGZpZWxkczogW3VzZXJfaWRdLCByZWZlcmVuY2VzOiBbdXNlcl9pZF0sIG9uRGVsZXRlOiBOb0FjdGlvbiwgb25VcGRhdGU6IE5vQWN0aW9uKQp9Cgptb2RlbCB0YWdzIHsKICB0YWdfaWQgICBJbnQgICAgIEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgdGFnX25hbWUgU3RyaW5nPyBAZGIuVmFyQ2hhcigyNTUpCiAgY2FyZHMgICAgY2FyZHNbXQp9Cgptb2RlbCB1c2VycyB7CiAgdXNlcl9pZCAgICAgICBJbnQgICAgIEBpZCBAZGVmYXVsdChhdXRvaW5jcmVtZW50KCkpCiAgdXNlcm5hbWUgICAgICBTdHJpbmc/IEBkYi5WYXJDaGFyKDI1NSkKICBwYXNzd29yZF9oYXNoIFN0cmluZz8gQGRiLlZhckNoYXIoMjU1KQogIGRlY2tzICAgICAgICAgZGVja3NbXQp9Cg==',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/Users/kaleb/Documents/code/Computer-Science-NEA/node_modules/prisma/query-engine-darwin-arm64',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<Cards> get cards => _i1.ModelDelegate<Cards>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<CustomStudy> get customStudy =>
      _i1.ModelDelegate<CustomStudy>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Decks> get decks => _i1.ModelDelegate<Decks>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Tags> get tags => _i1.ModelDelegate<Tags>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Users> get users => _i1.ModelDelegate<Users>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
