// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardsWhereInput _$CardsWhereInputFromJson(Map<String, dynamic> json) =>
    CardsWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => CardsWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => CardsWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => CardsWhereInput.fromJson(e as Map<String, dynamic>)),
      cardId: json['card_id'] == null
          ? null
          : IntFilter.fromJson(json['card_id'] as Map<String, dynamic>),
      deckId: json['deck_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['deck_id'] as Map<String, dynamic>),
      question: json['question'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : IntNullableFilter.fromJson(json['due'] as Map<String, dynamic>),
      tagId: json['tag_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['tag_id'] as Map<String, dynamic>),
      decks: json['decks'] == null
          ? null
          : DecksNullableRelationFilter.fromJson(
              json['decks'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagsNullableRelationFilter.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsWhereInputToJson(CardsWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tag_id', instance.tagId?.toJson());
  writeNotNull('decks', instance.decks?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

CardsOrderByWithRelationInput _$CardsOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    CardsOrderByWithRelationInput(
      cardId: $enumDecodeNullable(_$SortOrderEnumMap, json['card_id']),
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      question: $enumDecodeNullable(_$SortOrderEnumMap, json['question']),
      answer: $enumDecodeNullable(_$SortOrderEnumMap, json['answer']),
      due: $enumDecodeNullable(_$SortOrderEnumMap, json['due']),
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
      decks: json['decks'] == null
          ? null
          : DecksOrderByWithRelationInput.fromJson(
              json['decks'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagsOrderByWithRelationInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsOrderByWithRelationInputToJson(
    CardsOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', _$SortOrderEnumMap[instance.cardId]);
  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('question', _$SortOrderEnumMap[instance.question]);
  writeNotNull('answer', _$SortOrderEnumMap[instance.answer]);
  writeNotNull('due', _$SortOrderEnumMap[instance.due]);
  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  writeNotNull('decks', instance.decks?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

CardsWhereUniqueInput _$CardsWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    CardsWhereUniqueInput(
      cardId: json['card_id'] as int?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => CardsWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => CardsWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => CardsWhereInput.fromJson(e as Map<String, dynamic>)),
      deckId: json['deck_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['deck_id'] as Map<String, dynamic>),
      question: json['question'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : IntNullableFilter.fromJson(json['due'] as Map<String, dynamic>),
      tagId: json['tag_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['tag_id'] as Map<String, dynamic>),
      decks: json['decks'] == null
          ? null
          : DecksNullableRelationFilter.fromJson(
              json['decks'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagsNullableRelationFilter.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsWhereUniqueInputToJson(
    CardsWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tag_id', instance.tagId?.toJson());
  writeNotNull('decks', instance.decks?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

CardsOrderByWithAggregationInput _$CardsOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    CardsOrderByWithAggregationInput(
      cardId: $enumDecodeNullable(_$SortOrderEnumMap, json['card_id']),
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      question: $enumDecodeNullable(_$SortOrderEnumMap, json['question']),
      answer: $enumDecodeNullable(_$SortOrderEnumMap, json['answer']),
      due: $enumDecodeNullable(_$SortOrderEnumMap, json['due']),
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
      $count: json['_count'] == null
          ? null
          : CardsCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : CardsAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : CardsMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : CardsMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : CardsSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsOrderByWithAggregationInputToJson(
    CardsOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', _$SortOrderEnumMap[instance.cardId]);
  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('question', _$SortOrderEnumMap[instance.question]);
  writeNotNull('answer', _$SortOrderEnumMap[instance.answer]);
  writeNotNull('due', _$SortOrderEnumMap[instance.due]);
  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

CardsScalarWhereWithAggregatesInput
    _$CardsScalarWhereWithAggregatesInputFromJson(Map<String, dynamic> json) =>
        CardsScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              CardsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              CardsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              CardsScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          cardId: json['card_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['card_id'] as Map<String, dynamic>),
          deckId: json['deck_id'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['deck_id'] as Map<String, dynamic>),
          question: json['question'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['question'] as Map<String, dynamic>),
          answer: json['answer'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['answer'] as Map<String, dynamic>),
          due: json['due'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['due'] as Map<String, dynamic>),
          tagId: json['tag_id'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['tag_id'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsScalarWhereWithAggregatesInputToJson(
    CardsScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tag_id', instance.tagId?.toJson());
  return val;
}

CustomStudyWhereInput _$CustomStudyWhereInputFromJson(
        Map<String, dynamic> json) =>
    CustomStudyWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => CustomStudyWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => CustomStudyWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => CustomStudyWhereInput.fromJson(e as Map<String, dynamic>)),
      customid: json['customid'] == null
          ? null
          : IntFilter.fromJson(json['customid'] as Map<String, dynamic>),
      customDue: json['custom_due'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['custom_due'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomStudyWhereInputToJson(
    CustomStudyWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('customid', instance.customid?.toJson());
  writeNotNull('custom_due', instance.customDue?.toJson());
  return val;
}

CustomStudyOrderByWithRelationInput
    _$CustomStudyOrderByWithRelationInputFromJson(Map<String, dynamic> json) =>
        CustomStudyOrderByWithRelationInput(
          customid: $enumDecodeNullable(_$SortOrderEnumMap, json['customid']),
          customDue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['custom_due']),
        );

Map<String, dynamic> _$CustomStudyOrderByWithRelationInputToJson(
    CustomStudyOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', _$SortOrderEnumMap[instance.customid]);
  writeNotNull('custom_due', _$SortOrderEnumMap[instance.customDue]);
  return val;
}

CustomStudyWhereUniqueInput _$CustomStudyWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    CustomStudyWhereUniqueInput(
      customid: json['customid'] as int?,
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => CustomStudyWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => CustomStudyWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => CustomStudyWhereInput.fromJson(e as Map<String, dynamic>)),
      customDue: json['custom_due'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['custom_due'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomStudyWhereUniqueInputToJson(
    CustomStudyWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', instance.customid);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('custom_due', instance.customDue?.toJson());
  return val;
}

CustomStudyOrderByWithAggregationInput
    _$CustomStudyOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        CustomStudyOrderByWithAggregationInput(
          customid: $enumDecodeNullable(_$SortOrderEnumMap, json['customid']),
          customDue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['custom_due']),
          $count: json['_count'] == null
              ? null
              : CustomStudyCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : CustomStudyAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : CustomStudyMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : CustomStudyMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : CustomStudySumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomStudyOrderByWithAggregationInputToJson(
    CustomStudyOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', _$SortOrderEnumMap[instance.customid]);
  writeNotNull('custom_due', _$SortOrderEnumMap[instance.customDue]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

CustomStudyScalarWhereWithAggregatesInput
    _$CustomStudyScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        CustomStudyScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              CustomStudyScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              CustomStudyScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              CustomStudyScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          customid: json['customid'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['customid'] as Map<String, dynamic>),
          customDue: json['custom_due'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['custom_due'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomStudyScalarWhereWithAggregatesInputToJson(
    CustomStudyScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('customid', instance.customid?.toJson());
  writeNotNull('custom_due', instance.customDue?.toJson());
  return val;
}

DecksWhereInput _$DecksWhereInputFromJson(Map<String, dynamic> json) =>
    DecksWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => DecksWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => DecksWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => DecksWhereInput.fromJson(e as Map<String, dynamic>)),
      deckId: json['deck_id'] == null
          ? null
          : IntFilter.fromJson(json['deck_id'] as Map<String, dynamic>),
      userId: json['user_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['user_id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['datecreated'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsListRelationFilter.fromJson(
              json['cards'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : UsersNullableRelationFilter.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksWhereInputToJson(DecksWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  writeNotNull('users', instance.users?.toJson());
  return val;
}

DecksOrderByWithRelationInput _$DecksOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    DecksOrderByWithRelationInput(
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      datecreated: $enumDecodeNullable(_$SortOrderEnumMap, json['datecreated']),
      cards: json['cards'] == null
          ? null
          : CardsOrderByRelationAggregateInput.fromJson(
              json['cards'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : UsersOrderByWithRelationInput.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksOrderByWithRelationInputToJson(
    DecksOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('datecreated', _$SortOrderEnumMap[instance.datecreated]);
  writeNotNull('cards', instance.cards?.toJson());
  writeNotNull('users', instance.users?.toJson());
  return val;
}

DecksWhereUniqueInput _$DecksWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    DecksWhereUniqueInput(
      deckId: json['deck_id'] as int?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => DecksWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => DecksWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => DecksWhereInput.fromJson(e as Map<String, dynamic>)),
      userId: json['user_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['user_id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['datecreated'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsListRelationFilter.fromJson(
              json['cards'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : UsersNullableRelationFilter.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksWhereUniqueInputToJson(
    DecksWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  writeNotNull('users', instance.users?.toJson());
  return val;
}

DecksOrderByWithAggregationInput _$DecksOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    DecksOrderByWithAggregationInput(
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      datecreated: $enumDecodeNullable(_$SortOrderEnumMap, json['datecreated']),
      $count: json['_count'] == null
          ? null
          : DecksCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : DecksAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : DecksMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : DecksMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : DecksSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksOrderByWithAggregationInputToJson(
    DecksOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('datecreated', _$SortOrderEnumMap[instance.datecreated]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

DecksScalarWhereWithAggregatesInput
    _$DecksScalarWhereWithAggregatesInputFromJson(Map<String, dynamic> json) =>
        DecksScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              DecksScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              DecksScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              DecksScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          deckId: json['deck_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['deck_id'] as Map<String, dynamic>),
          userId: json['user_id'] == null
              ? null
              : IntNullableWithAggregatesFilter.fromJson(
                  json['user_id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['title'] as Map<String, dynamic>),
          datecreated: json['datecreated'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['datecreated'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksScalarWhereWithAggregatesInputToJson(
    DecksScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  return val;
}

TagsWhereInput _$TagsWhereInputFromJson(Map<String, dynamic> json) =>
    TagsWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TagsWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TagsWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => TagsWhereInput.fromJson(e as Map<String, dynamic>)),
      tagId: json['tag_id'] == null
          ? null
          : IntFilter.fromJson(json['tag_id'] as Map<String, dynamic>),
      tagName: json['tag_name'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['tag_name'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsListRelationFilter.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsWhereInputToJson(TagsWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('tag_id', instance.tagId?.toJson());
  writeNotNull('tag_name', instance.tagName?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

TagsOrderByWithRelationInput _$TagsOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    TagsOrderByWithRelationInput(
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
      tagName: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_name']),
      cards: json['cards'] == null
          ? null
          : CardsOrderByRelationAggregateInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsOrderByWithRelationInputToJson(
    TagsOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  writeNotNull('tag_name', _$SortOrderEnumMap[instance.tagName]);
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

TagsWhereUniqueInput _$TagsWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    TagsWhereUniqueInput(
      tagId: json['tag_id'] as int?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => TagsWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => TagsWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => TagsWhereInput.fromJson(e as Map<String, dynamic>)),
      tagName: json['tag_name'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['tag_name'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsListRelationFilter.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsWhereUniqueInputToJson(
    TagsWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', instance.tagId);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('tag_name', instance.tagName?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

TagsOrderByWithAggregationInput _$TagsOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    TagsOrderByWithAggregationInput(
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
      tagName: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_name']),
      $count: json['_count'] == null
          ? null
          : TagsCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : TagsAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : TagsMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : TagsMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : TagsSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsOrderByWithAggregationInputToJson(
    TagsOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  writeNotNull('tag_name', _$SortOrderEnumMap[instance.tagName]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

TagsScalarWhereWithAggregatesInput _$TagsScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    TagsScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          TagsScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          TagsScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          TagsScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      tagId: json['tag_id'] == null
          ? null
          : IntWithAggregatesFilter.fromJson(
              json['tag_id'] as Map<String, dynamic>),
      tagName: json['tag_name'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['tag_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsScalarWhereWithAggregatesInputToJson(
    TagsScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('tag_id', instance.tagId?.toJson());
  writeNotNull('tag_name', instance.tagName?.toJson());
  return val;
}

UsersWhereInput _$UsersWhereInputFromJson(Map<String, dynamic> json) =>
    UsersWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UsersWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UsersWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UsersWhereInput.fromJson(e as Map<String, dynamic>)),
      userId: json['user_id'] == null
          ? null
          : IntFilter.fromJson(json['user_id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['username'] as Map<String, dynamic>),
      passwordHash: json['password_hash'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['password_hash'] as Map<String, dynamic>),
      decks: json['decks'] == null
          ? null
          : DecksListRelationFilter.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersWhereInputToJson(UsersWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

UsersOrderByWithRelationInput _$UsersOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UsersOrderByWithRelationInput(
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      passwordHash:
          $enumDecodeNullable(_$SortOrderEnumMap, json['password_hash']),
      decks: json['decks'] == null
          ? null
          : DecksOrderByRelationAggregateInput.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersOrderByWithRelationInputToJson(
    UsersOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password_hash', _$SortOrderEnumMap[instance.passwordHash]);
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

UsersWhereUniqueInput _$UsersWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UsersWhereUniqueInput(
      userId: json['user_id'] as int?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UsersWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UsersWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UsersWhereInput.fromJson(e as Map<String, dynamic>)),
      username: json['username'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['username'] as Map<String, dynamic>),
      passwordHash: json['password_hash'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['password_hash'] as Map<String, dynamic>),
      decks: json['decks'] == null
          ? null
          : DecksListRelationFilter.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersWhereUniqueInputToJson(
    UsersWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

UsersOrderByWithAggregationInput _$UsersOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UsersOrderByWithAggregationInput(
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      passwordHash:
          $enumDecodeNullable(_$SortOrderEnumMap, json['password_hash']),
      $count: json['_count'] == null
          ? null
          : UsersCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : UsersAvgOrderByAggregateInput.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UsersMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UsersMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : UsersSumOrderByAggregateInput.fromJson(
              json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersOrderByWithAggregationInputToJson(
    UsersOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password_hash', _$SortOrderEnumMap[instance.passwordHash]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

UsersScalarWhereWithAggregatesInput
    _$UsersScalarWhereWithAggregatesInputFromJson(Map<String, dynamic> json) =>
        UsersScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              UsersScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              UsersScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              UsersScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          userId: json['user_id'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['user_id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['username'] as Map<String, dynamic>),
          passwordHash: json['password_hash'] == null
              ? null
              : StringNullableWithAggregatesFilter.fromJson(
                  json['password_hash'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersScalarWhereWithAggregatesInputToJson(
    UsersScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  return val;
}

CardsCreateInput _$CardsCreateInputFromJson(Map<String, dynamic> json) =>
    CardsCreateInput(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
      decks: json['decks'] == null
          ? null
          : DecksCreateNestedOneWithoutCardsInput.fromJson(
              json['decks'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagsCreateNestedOneWithoutCardsInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsCreateInputToJson(CardsCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('decks', instance.decks?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

CardsUncheckedCreateInput _$CardsUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    CardsUncheckedCreateInput(
      cardId: json['card_id'] as int?,
      deckId: json['deck_id'] as int?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
      tagId: json['tag_id'] as int?,
    );

Map<String, dynamic> _$CardsUncheckedCreateInputToJson(
    CardsUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId);
  writeNotNull('deck_id', instance.deckId);
  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('tag_id', instance.tagId);
  return val;
}

CardsUpdateInput _$CardsUpdateInputFromJson(Map<String, dynamic> json) =>
    CardsUpdateInput(
      question: json['question'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['due'] as Map<String, dynamic>),
      decks: json['decks'] == null
          ? null
          : DecksUpdateOneWithoutCardsNestedInput.fromJson(
              json['decks'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagsUpdateOneWithoutCardsNestedInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsUpdateInputToJson(CardsUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('decks', instance.decks?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

CardsUncheckedUpdateInput _$CardsUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CardsUncheckedUpdateInput(
      cardId: json['card_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['card_id'] as Map<String, dynamic>),
      deckId: json['deck_id'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['deck_id'] as Map<String, dynamic>),
      question: json['question'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['due'] as Map<String, dynamic>),
      tagId: json['tag_id'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['tag_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsUncheckedUpdateInputToJson(
    CardsUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tag_id', instance.tagId?.toJson());
  return val;
}

CardsCreateManyInput _$CardsCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    CardsCreateManyInput(
      cardId: json['card_id'] as int?,
      deckId: json['deck_id'] as int?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
      tagId: json['tag_id'] as int?,
    );

Map<String, dynamic> _$CardsCreateManyInputToJson(
    CardsCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId);
  writeNotNull('deck_id', instance.deckId);
  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('tag_id', instance.tagId);
  return val;
}

CardsUpdateManyMutationInput _$CardsUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    CardsUpdateManyMutationInput(
      question: json['question'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['due'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsUpdateManyMutationInputToJson(
    CardsUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  return val;
}

CardsUncheckedUpdateManyInput _$CardsUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    CardsUncheckedUpdateManyInput(
      cardId: json['card_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['card_id'] as Map<String, dynamic>),
      deckId: json['deck_id'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['deck_id'] as Map<String, dynamic>),
      question: json['question'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['due'] as Map<String, dynamic>),
      tagId: json['tag_id'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['tag_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsUncheckedUpdateManyInputToJson(
    CardsUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tag_id', instance.tagId?.toJson());
  return val;
}

CustomStudyCreateInput _$CustomStudyCreateInputFromJson(
        Map<String, dynamic> json) =>
    CustomStudyCreateInput(
      customDue: json['custom_due'] as int?,
    );

Map<String, dynamic> _$CustomStudyCreateInputToJson(
    CustomStudyCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_due', instance.customDue);
  return val;
}

CustomStudyUncheckedCreateInput _$CustomStudyUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    CustomStudyUncheckedCreateInput(
      customid: json['customid'] as int?,
      customDue: json['custom_due'] as int?,
    );

Map<String, dynamic> _$CustomStudyUncheckedCreateInputToJson(
    CustomStudyUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', instance.customid);
  writeNotNull('custom_due', instance.customDue);
  return val;
}

CustomStudyUpdateInput _$CustomStudyUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CustomStudyUpdateInput(
      customDue: json['custom_due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['custom_due'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomStudyUpdateInputToJson(
    CustomStudyUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_due', instance.customDue?.toJson());
  return val;
}

CustomStudyUncheckedUpdateInput _$CustomStudyUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    CustomStudyUncheckedUpdateInput(
      customid: json['customid'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['customid'] as Map<String, dynamic>),
      customDue: json['custom_due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['custom_due'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomStudyUncheckedUpdateInputToJson(
    CustomStudyUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', instance.customid?.toJson());
  writeNotNull('custom_due', instance.customDue?.toJson());
  return val;
}

CustomStudyCreateManyInput _$CustomStudyCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    CustomStudyCreateManyInput(
      customid: json['customid'] as int?,
      customDue: json['custom_due'] as int?,
    );

Map<String, dynamic> _$CustomStudyCreateManyInputToJson(
    CustomStudyCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', instance.customid);
  writeNotNull('custom_due', instance.customDue);
  return val;
}

CustomStudyUpdateManyMutationInput _$CustomStudyUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    CustomStudyUpdateManyMutationInput(
      customDue: json['custom_due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['custom_due'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomStudyUpdateManyMutationInputToJson(
    CustomStudyUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_due', instance.customDue?.toJson());
  return val;
}

CustomStudyUncheckedUpdateManyInput
    _$CustomStudyUncheckedUpdateManyInputFromJson(Map<String, dynamic> json) =>
        CustomStudyUncheckedUpdateManyInput(
          customid: json['customid'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['customid'] as Map<String, dynamic>),
          customDue: json['custom_due'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['custom_due'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CustomStudyUncheckedUpdateManyInputToJson(
    CustomStudyUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', instance.customid?.toJson());
  writeNotNull('custom_due', instance.customDue?.toJson());
  return val;
}

DecksCreateInput _$DecksCreateInputFromJson(Map<String, dynamic> json) =>
    DecksCreateInput(
      title: json['title'] as String?,
      datecreated: json['datecreated'] as String?,
      cards: json['cards'] == null
          ? null
          : CardsCreateNestedManyWithoutDecksInput.fromJson(
              json['cards'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : UsersCreateNestedOneWithoutDecksInput.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksCreateInputToJson(DecksCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  writeNotNull('cards', instance.cards?.toJson());
  writeNotNull('users', instance.users?.toJson());
  return val;
}

DecksUncheckedCreateInput _$DecksUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    DecksUncheckedCreateInput(
      deckId: json['deck_id'] as int?,
      userId: json['user_id'] as int?,
      title: json['title'] as String?,
      datecreated: json['datecreated'] as String?,
      cards: json['cards'] == null
          ? null
          : CardsUncheckedCreateNestedManyWithoutDecksInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksUncheckedCreateInputToJson(
    DecksUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

DecksUpdateInput _$DecksUpdateInputFromJson(Map<String, dynamic> json) =>
    DecksUpdateInput(
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['datecreated'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsUpdateManyWithoutDecksNestedInput.fromJson(
              json['cards'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : UsersUpdateOneWithoutDecksNestedInput.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksUpdateInputToJson(DecksUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  writeNotNull('users', instance.users?.toJson());
  return val;
}

DecksUncheckedUpdateInput _$DecksUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    DecksUncheckedUpdateInput(
      deckId: json['deck_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['deck_id'] as Map<String, dynamic>),
      userId: json['user_id'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['user_id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['datecreated'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsUncheckedUpdateManyWithoutDecksNestedInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksUncheckedUpdateInputToJson(
    DecksUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

DecksCreateManyInput _$DecksCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    DecksCreateManyInput(
      deckId: json['deck_id'] as int?,
      userId: json['user_id'] as int?,
      title: json['title'] as String?,
      datecreated: json['datecreated'] as String?,
    );

Map<String, dynamic> _$DecksCreateManyInputToJson(
    DecksCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  return val;
}

DecksUpdateManyMutationInput _$DecksUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    DecksUpdateManyMutationInput(
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['datecreated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksUpdateManyMutationInputToJson(
    DecksUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  return val;
}

DecksUncheckedUpdateManyInput _$DecksUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    DecksUncheckedUpdateManyInput(
      deckId: json['deck_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['deck_id'] as Map<String, dynamic>),
      userId: json['user_id'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['user_id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['datecreated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksUncheckedUpdateManyInputToJson(
    DecksUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  return val;
}

TagsCreateInput _$TagsCreateInputFromJson(Map<String, dynamic> json) =>
    TagsCreateInput(
      tagName: json['tag_name'] as String?,
      cards: json['cards'] == null
          ? null
          : CardsCreateNestedManyWithoutTagsInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsCreateInputToJson(TagsCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_name', instance.tagName);
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

TagsUncheckedCreateInput _$TagsUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    TagsUncheckedCreateInput(
      tagId: json['tag_id'] as int?,
      tagName: json['tag_name'] as String?,
      cards: json['cards'] == null
          ? null
          : CardsUncheckedCreateNestedManyWithoutTagsInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsUncheckedCreateInputToJson(
    TagsUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', instance.tagId);
  writeNotNull('tag_name', instance.tagName);
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

TagsUpdateInput _$TagsUpdateInputFromJson(Map<String, dynamic> json) =>
    TagsUpdateInput(
      tagName: json['tag_name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['tag_name'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsUpdateManyWithoutTagsNestedInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsUpdateInputToJson(TagsUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_name', instance.tagName?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

TagsUncheckedUpdateInput _$TagsUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    TagsUncheckedUpdateInput(
      tagId: json['tag_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['tag_id'] as Map<String, dynamic>),
      tagName: json['tag_name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['tag_name'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsUncheckedUpdateManyWithoutTagsNestedInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsUncheckedUpdateInputToJson(
    TagsUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', instance.tagId?.toJson());
  writeNotNull('tag_name', instance.tagName?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

TagsCreateManyInput _$TagsCreateManyInputFromJson(Map<String, dynamic> json) =>
    TagsCreateManyInput(
      tagId: json['tag_id'] as int?,
      tagName: json['tag_name'] as String?,
    );

Map<String, dynamic> _$TagsCreateManyInputToJson(TagsCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', instance.tagId);
  writeNotNull('tag_name', instance.tagName);
  return val;
}

TagsUpdateManyMutationInput _$TagsUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    TagsUpdateManyMutationInput(
      tagName: json['tag_name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['tag_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsUpdateManyMutationInputToJson(
    TagsUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_name', instance.tagName?.toJson());
  return val;
}

TagsUncheckedUpdateManyInput _$TagsUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    TagsUncheckedUpdateManyInput(
      tagId: json['tag_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['tag_id'] as Map<String, dynamic>),
      tagName: json['tag_name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['tag_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsUncheckedUpdateManyInputToJson(
    TagsUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', instance.tagId?.toJson());
  writeNotNull('tag_name', instance.tagName?.toJson());
  return val;
}

UsersCreateInput _$UsersCreateInputFromJson(Map<String, dynamic> json) =>
    UsersCreateInput(
      username: json['username'] as String?,
      passwordHash: json['password_hash'] as String?,
      decks: json['decks'] == null
          ? null
          : DecksCreateNestedManyWithoutUsersInput.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersCreateInputToJson(UsersCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('password_hash', instance.passwordHash);
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

UsersUncheckedCreateInput _$UsersUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UsersUncheckedCreateInput(
      userId: json['user_id'] as int?,
      username: json['username'] as String?,
      passwordHash: json['password_hash'] as String?,
      decks: json['decks'] == null
          ? null
          : DecksUncheckedCreateNestedManyWithoutUsersInput.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersUncheckedCreateInputToJson(
    UsersUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('username', instance.username);
  writeNotNull('password_hash', instance.passwordHash);
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

UsersUpdateInput _$UsersUpdateInputFromJson(Map<String, dynamic> json) =>
    UsersUpdateInput(
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      passwordHash: json['password_hash'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password_hash'] as Map<String, dynamic>),
      decks: json['decks'] == null
          ? null
          : DecksUpdateManyWithoutUsersNestedInput.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersUpdateInputToJson(UsersUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

UsersUncheckedUpdateInput _$UsersUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UsersUncheckedUpdateInput(
      userId: json['user_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['user_id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      passwordHash: json['password_hash'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password_hash'] as Map<String, dynamic>),
      decks: json['decks'] == null
          ? null
          : DecksUncheckedUpdateManyWithoutUsersNestedInput.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersUncheckedUpdateInputToJson(
    UsersUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

UsersCreateManyInput _$UsersCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    UsersCreateManyInput(
      userId: json['user_id'] as int?,
      username: json['username'] as String?,
      passwordHash: json['password_hash'] as String?,
    );

Map<String, dynamic> _$UsersCreateManyInputToJson(
    UsersCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('username', instance.username);
  writeNotNull('password_hash', instance.passwordHash);
  return val;
}

UsersUpdateManyMutationInput _$UsersUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UsersUpdateManyMutationInput(
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      passwordHash: json['password_hash'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password_hash'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersUpdateManyMutationInputToJson(
    UsersUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  return val;
}

UsersUncheckedUpdateManyInput _$UsersUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UsersUncheckedUpdateManyInput(
      userId: json['user_id'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['user_id'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      passwordHash: json['password_hash'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password_hash'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersUncheckedUpdateManyInputToJson(
    UsersUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

IntNullableFilter _$IntNullableFilterFromJson(Map<String, dynamic> json) =>
    IntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableFilterToJson(IntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

StringNullableFilter _$StringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableFilterToJson(
    StringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

DecksNullableRelationFilter _$DecksNullableRelationFilterFromJson(
        Map<String, dynamic> json) =>
    DecksNullableRelationFilter(
      $is: json['is'] == null
          ? null
          : DecksWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : DecksWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksNullableRelationFilterToJson(
    DecksNullableRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

TagsNullableRelationFilter _$TagsNullableRelationFilterFromJson(
        Map<String, dynamic> json) =>
    TagsNullableRelationFilter(
      $is: json['is'] == null
          ? null
          : TagsWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : TagsWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsNullableRelationFilterToJson(
    TagsNullableRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

SortOrderInput _$SortOrderInputFromJson(Map<String, dynamic> json) =>
    SortOrderInput(
      sort: $enumDecode(_$SortOrderEnumMap, json['sort']),
      nulls: $enumDecodeNullable(_$NullsOrderEnumMap, json['nulls']),
    );

Map<String, dynamic> _$SortOrderInputToJson(SortOrderInput instance) {
  final val = <String, dynamic>{
    'sort': _$SortOrderEnumMap[instance.sort]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nulls', _$NullsOrderEnumMap[instance.nulls]);
  return val;
}

const _$NullsOrderEnumMap = {
  NullsOrder.first: 'first',
  NullsOrder.last: 'last',
};

CardsCountOrderByAggregateInput _$CardsCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CardsCountOrderByAggregateInput(
      cardId: $enumDecodeNullable(_$SortOrderEnumMap, json['card_id']),
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      question: $enumDecodeNullable(_$SortOrderEnumMap, json['question']),
      answer: $enumDecodeNullable(_$SortOrderEnumMap, json['answer']),
      due: $enumDecodeNullable(_$SortOrderEnumMap, json['due']),
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
    );

Map<String, dynamic> _$CardsCountOrderByAggregateInputToJson(
    CardsCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', _$SortOrderEnumMap[instance.cardId]);
  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('question', _$SortOrderEnumMap[instance.question]);
  writeNotNull('answer', _$SortOrderEnumMap[instance.answer]);
  writeNotNull('due', _$SortOrderEnumMap[instance.due]);
  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  return val;
}

CardsAvgOrderByAggregateInput _$CardsAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CardsAvgOrderByAggregateInput(
      cardId: $enumDecodeNullable(_$SortOrderEnumMap, json['card_id']),
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      due: $enumDecodeNullable(_$SortOrderEnumMap, json['due']),
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
    );

Map<String, dynamic> _$CardsAvgOrderByAggregateInputToJson(
    CardsAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', _$SortOrderEnumMap[instance.cardId]);
  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('due', _$SortOrderEnumMap[instance.due]);
  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  return val;
}

CardsMaxOrderByAggregateInput _$CardsMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CardsMaxOrderByAggregateInput(
      cardId: $enumDecodeNullable(_$SortOrderEnumMap, json['card_id']),
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      question: $enumDecodeNullable(_$SortOrderEnumMap, json['question']),
      answer: $enumDecodeNullable(_$SortOrderEnumMap, json['answer']),
      due: $enumDecodeNullable(_$SortOrderEnumMap, json['due']),
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
    );

Map<String, dynamic> _$CardsMaxOrderByAggregateInputToJson(
    CardsMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', _$SortOrderEnumMap[instance.cardId]);
  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('question', _$SortOrderEnumMap[instance.question]);
  writeNotNull('answer', _$SortOrderEnumMap[instance.answer]);
  writeNotNull('due', _$SortOrderEnumMap[instance.due]);
  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  return val;
}

CardsMinOrderByAggregateInput _$CardsMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CardsMinOrderByAggregateInput(
      cardId: $enumDecodeNullable(_$SortOrderEnumMap, json['card_id']),
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      question: $enumDecodeNullable(_$SortOrderEnumMap, json['question']),
      answer: $enumDecodeNullable(_$SortOrderEnumMap, json['answer']),
      due: $enumDecodeNullable(_$SortOrderEnumMap, json['due']),
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
    );

Map<String, dynamic> _$CardsMinOrderByAggregateInputToJson(
    CardsMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', _$SortOrderEnumMap[instance.cardId]);
  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('question', _$SortOrderEnumMap[instance.question]);
  writeNotNull('answer', _$SortOrderEnumMap[instance.answer]);
  writeNotNull('due', _$SortOrderEnumMap[instance.due]);
  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  return val;
}

CardsSumOrderByAggregateInput _$CardsSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CardsSumOrderByAggregateInput(
      cardId: $enumDecodeNullable(_$SortOrderEnumMap, json['card_id']),
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      due: $enumDecodeNullable(_$SortOrderEnumMap, json['due']),
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
    );

Map<String, dynamic> _$CardsSumOrderByAggregateInputToJson(
    CardsSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', _$SortOrderEnumMap[instance.cardId]);
  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('due', _$SortOrderEnumMap[instance.due]);
  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

IntNullableWithAggregatesFilter _$IntNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntNullableWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableWithAggregatesFilterToJson(
    IntNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringNullableWithAggregatesFilter _$StringNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableWithAggregatesFilterToJson(
    StringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

CustomStudyCountOrderByAggregateInput
    _$CustomStudyCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        CustomStudyCountOrderByAggregateInput(
          customid: $enumDecodeNullable(_$SortOrderEnumMap, json['customid']),
          customDue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['custom_due']),
        );

Map<String, dynamic> _$CustomStudyCountOrderByAggregateInputToJson(
    CustomStudyCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', _$SortOrderEnumMap[instance.customid]);
  writeNotNull('custom_due', _$SortOrderEnumMap[instance.customDue]);
  return val;
}

CustomStudyAvgOrderByAggregateInput
    _$CustomStudyAvgOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        CustomStudyAvgOrderByAggregateInput(
          customid: $enumDecodeNullable(_$SortOrderEnumMap, json['customid']),
          customDue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['custom_due']),
        );

Map<String, dynamic> _$CustomStudyAvgOrderByAggregateInputToJson(
    CustomStudyAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', _$SortOrderEnumMap[instance.customid]);
  writeNotNull('custom_due', _$SortOrderEnumMap[instance.customDue]);
  return val;
}

CustomStudyMaxOrderByAggregateInput
    _$CustomStudyMaxOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        CustomStudyMaxOrderByAggregateInput(
          customid: $enumDecodeNullable(_$SortOrderEnumMap, json['customid']),
          customDue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['custom_due']),
        );

Map<String, dynamic> _$CustomStudyMaxOrderByAggregateInputToJson(
    CustomStudyMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', _$SortOrderEnumMap[instance.customid]);
  writeNotNull('custom_due', _$SortOrderEnumMap[instance.customDue]);
  return val;
}

CustomStudyMinOrderByAggregateInput
    _$CustomStudyMinOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        CustomStudyMinOrderByAggregateInput(
          customid: $enumDecodeNullable(_$SortOrderEnumMap, json['customid']),
          customDue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['custom_due']),
        );

Map<String, dynamic> _$CustomStudyMinOrderByAggregateInputToJson(
    CustomStudyMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', _$SortOrderEnumMap[instance.customid]);
  writeNotNull('custom_due', _$SortOrderEnumMap[instance.customDue]);
  return val;
}

CustomStudySumOrderByAggregateInput
    _$CustomStudySumOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        CustomStudySumOrderByAggregateInput(
          customid: $enumDecodeNullable(_$SortOrderEnumMap, json['customid']),
          customDue:
              $enumDecodeNullable(_$SortOrderEnumMap, json['custom_due']),
        );

Map<String, dynamic> _$CustomStudySumOrderByAggregateInputToJson(
    CustomStudySumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', _$SortOrderEnumMap[instance.customid]);
  writeNotNull('custom_due', _$SortOrderEnumMap[instance.customDue]);
  return val;
}

CardsListRelationFilter _$CardsListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    CardsListRelationFilter(
      every: json['every'] == null
          ? null
          : CardsWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : CardsWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : CardsWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsListRelationFilterToJson(
    CardsListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

UsersNullableRelationFilter _$UsersNullableRelationFilterFromJson(
        Map<String, dynamic> json) =>
    UsersNullableRelationFilter(
      $is: json['is'] == null
          ? null
          : UsersWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : UsersWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersNullableRelationFilterToJson(
    UsersNullableRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

CardsOrderByRelationAggregateInput _$CardsOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    CardsOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
    );

Map<String, dynamic> _$CardsOrderByRelationAggregateInputToJson(
    CardsOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

DecksCountOrderByAggregateInput _$DecksCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    DecksCountOrderByAggregateInput(
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      datecreated: $enumDecodeNullable(_$SortOrderEnumMap, json['datecreated']),
    );

Map<String, dynamic> _$DecksCountOrderByAggregateInputToJson(
    DecksCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('datecreated', _$SortOrderEnumMap[instance.datecreated]);
  return val;
}

DecksAvgOrderByAggregateInput _$DecksAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    DecksAvgOrderByAggregateInput(
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
    );

Map<String, dynamic> _$DecksAvgOrderByAggregateInputToJson(
    DecksAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  return val;
}

DecksMaxOrderByAggregateInput _$DecksMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    DecksMaxOrderByAggregateInput(
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      datecreated: $enumDecodeNullable(_$SortOrderEnumMap, json['datecreated']),
    );

Map<String, dynamic> _$DecksMaxOrderByAggregateInputToJson(
    DecksMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('datecreated', _$SortOrderEnumMap[instance.datecreated]);
  return val;
}

DecksMinOrderByAggregateInput _$DecksMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    DecksMinOrderByAggregateInput(
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title']),
      datecreated: $enumDecodeNullable(_$SortOrderEnumMap, json['datecreated']),
    );

Map<String, dynamic> _$DecksMinOrderByAggregateInputToJson(
    DecksMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('title', _$SortOrderEnumMap[instance.title]);
  writeNotNull('datecreated', _$SortOrderEnumMap[instance.datecreated]);
  return val;
}

DecksSumOrderByAggregateInput _$DecksSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    DecksSumOrderByAggregateInput(
      deckId: $enumDecodeNullable(_$SortOrderEnumMap, json['deck_id']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
    );

Map<String, dynamic> _$DecksSumOrderByAggregateInputToJson(
    DecksSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', _$SortOrderEnumMap[instance.deckId]);
  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  return val;
}

TagsCountOrderByAggregateInput _$TagsCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagsCountOrderByAggregateInput(
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
      tagName: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_name']),
    );

Map<String, dynamic> _$TagsCountOrderByAggregateInputToJson(
    TagsCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  writeNotNull('tag_name', _$SortOrderEnumMap[instance.tagName]);
  return val;
}

TagsAvgOrderByAggregateInput _$TagsAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagsAvgOrderByAggregateInput(
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
    );

Map<String, dynamic> _$TagsAvgOrderByAggregateInputToJson(
    TagsAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  return val;
}

TagsMaxOrderByAggregateInput _$TagsMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagsMaxOrderByAggregateInput(
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
      tagName: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_name']),
    );

Map<String, dynamic> _$TagsMaxOrderByAggregateInputToJson(
    TagsMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  writeNotNull('tag_name', _$SortOrderEnumMap[instance.tagName]);
  return val;
}

TagsMinOrderByAggregateInput _$TagsMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagsMinOrderByAggregateInput(
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
      tagName: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_name']),
    );

Map<String, dynamic> _$TagsMinOrderByAggregateInputToJson(
    TagsMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  writeNotNull('tag_name', _$SortOrderEnumMap[instance.tagName]);
  return val;
}

TagsSumOrderByAggregateInput _$TagsSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    TagsSumOrderByAggregateInput(
      tagId: $enumDecodeNullable(_$SortOrderEnumMap, json['tag_id']),
    );

Map<String, dynamic> _$TagsSumOrderByAggregateInputToJson(
    TagsSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', _$SortOrderEnumMap[instance.tagId]);
  return val;
}

DecksListRelationFilter _$DecksListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    DecksListRelationFilter(
      every: json['every'] == null
          ? null
          : DecksWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : DecksWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : DecksWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksListRelationFilterToJson(
    DecksListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

DecksOrderByRelationAggregateInput _$DecksOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    DecksOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
    );

Map<String, dynamic> _$DecksOrderByRelationAggregateInputToJson(
    DecksOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

UsersCountOrderByAggregateInput _$UsersCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsersCountOrderByAggregateInput(
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      passwordHash:
          $enumDecodeNullable(_$SortOrderEnumMap, json['password_hash']),
    );

Map<String, dynamic> _$UsersCountOrderByAggregateInputToJson(
    UsersCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password_hash', _$SortOrderEnumMap[instance.passwordHash]);
  return val;
}

UsersAvgOrderByAggregateInput _$UsersAvgOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsersAvgOrderByAggregateInput(
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
    );

Map<String, dynamic> _$UsersAvgOrderByAggregateInputToJson(
    UsersAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  return val;
}

UsersMaxOrderByAggregateInput _$UsersMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsersMaxOrderByAggregateInput(
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      passwordHash:
          $enumDecodeNullable(_$SortOrderEnumMap, json['password_hash']),
    );

Map<String, dynamic> _$UsersMaxOrderByAggregateInputToJson(
    UsersMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password_hash', _$SortOrderEnumMap[instance.passwordHash]);
  return val;
}

UsersMinOrderByAggregateInput _$UsersMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsersMinOrderByAggregateInput(
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
      username: $enumDecodeNullable(_$SortOrderEnumMap, json['username']),
      passwordHash:
          $enumDecodeNullable(_$SortOrderEnumMap, json['password_hash']),
    );

Map<String, dynamic> _$UsersMinOrderByAggregateInputToJson(
    UsersMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('username', _$SortOrderEnumMap[instance.username]);
  writeNotNull('password_hash', _$SortOrderEnumMap[instance.passwordHash]);
  return val;
}

UsersSumOrderByAggregateInput _$UsersSumOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UsersSumOrderByAggregateInput(
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['user_id']),
    );

Map<String, dynamic> _$UsersSumOrderByAggregateInputToJson(
    UsersSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', _$SortOrderEnumMap[instance.userId]);
  return val;
}

DecksCreateNestedOneWithoutCardsInput
    _$DecksCreateNestedOneWithoutCardsInputFromJson(
            Map<String, dynamic> json) =>
        DecksCreateNestedOneWithoutCardsInput(
          create: json['create'] == null
              ? null
              : DecksCreateWithoutCardsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : DecksCreateOrConnectWithoutCardsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : DecksWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksCreateNestedOneWithoutCardsInputToJson(
    DecksCreateNestedOneWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

TagsCreateNestedOneWithoutCardsInput
    _$TagsCreateNestedOneWithoutCardsInputFromJson(Map<String, dynamic> json) =>
        TagsCreateNestedOneWithoutCardsInput(
          create: json['create'] == null
              ? null
              : TagsCreateWithoutCardsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : TagsCreateOrConnectWithoutCardsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : TagsWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagsCreateNestedOneWithoutCardsInputToJson(
    TagsCreateNestedOneWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

NullableStringFieldUpdateOperationsInput
    _$NullableStringFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableStringFieldUpdateOperationsInput(
          set: json['set'] as String?,
        );

Map<String, dynamic> _$NullableStringFieldUpdateOperationsInputToJson(
    NullableStringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NullableIntFieldUpdateOperationsInput
    _$NullableIntFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableIntFieldUpdateOperationsInput(
          set: json['set'] as int?,
          increment: json['increment'] as int?,
          decrement: json['decrement'] as int?,
          multiply: json['multiply'] as int?,
          divide: json['divide'] as int?,
        );

Map<String, dynamic> _$NullableIntFieldUpdateOperationsInputToJson(
    NullableIntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

DecksUpdateOneWithoutCardsNestedInput
    _$DecksUpdateOneWithoutCardsNestedInputFromJson(
            Map<String, dynamic> json) =>
        DecksUpdateOneWithoutCardsNestedInput(
          create: json['create'] == null
              ? null
              : DecksCreateWithoutCardsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : DecksCreateOrConnectWithoutCardsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : DecksUpsertWithoutCardsInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] == null
              ? null
              : DecksWhereInput.fromJson(
                  json['disconnect'] as Map<String, dynamic>),
          delete: json['delete'] == null
              ? null
              : DecksWhereInput.fromJson(
                  json['delete'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : DecksWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : DecksUpdateToOneWithWhereWithoutCardsInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUpdateOneWithoutCardsNestedInputToJson(
    DecksUpdateOneWithoutCardsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('disconnect', instance.disconnect?.toJson());
  writeNotNull('delete', instance.delete?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

TagsUpdateOneWithoutCardsNestedInput
    _$TagsUpdateOneWithoutCardsNestedInputFromJson(Map<String, dynamic> json) =>
        TagsUpdateOneWithoutCardsNestedInput(
          create: json['create'] == null
              ? null
              : TagsCreateWithoutCardsInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : TagsCreateOrConnectWithoutCardsInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : TagsUpsertWithoutCardsInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] == null
              ? null
              : TagsWhereInput.fromJson(
                  json['disconnect'] as Map<String, dynamic>),
          delete: json['delete'] == null
              ? null
              : TagsWhereInput.fromJson(json['delete'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : TagsWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : TagsUpdateToOneWithWhereWithoutCardsInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagsUpdateOneWithoutCardsNestedInputToJson(
    TagsUpdateOneWithoutCardsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('disconnect', instance.disconnect?.toJson());
  writeNotNull('delete', instance.delete?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

CardsCreateNestedManyWithoutDecksInput
    _$CardsCreateNestedManyWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsCreateNestedManyWithoutDecksInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CardsCreateWithoutDecksInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CardsCreateOrConnectWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CardsCreateManyDecksInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CardsCreateNestedManyWithoutDecksInputToJson(
    CardsCreateNestedManyWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

UsersCreateNestedOneWithoutDecksInput
    _$UsersCreateNestedOneWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        UsersCreateNestedOneWithoutDecksInput(
          create: json['create'] == null
              ? null
              : UsersCreateWithoutDecksInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UsersCreateOrConnectWithoutDecksInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UsersWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersCreateNestedOneWithoutDecksInputToJson(
    UsersCreateNestedOneWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

CardsUncheckedCreateNestedManyWithoutDecksInput
    _$CardsUncheckedCreateNestedManyWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsUncheckedCreateNestedManyWithoutDecksInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CardsCreateWithoutDecksInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CardsCreateOrConnectWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CardsCreateManyDecksInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CardsUncheckedCreateNestedManyWithoutDecksInputToJson(
    CardsUncheckedCreateNestedManyWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

CardsUpdateManyWithoutDecksNestedInput
    _$CardsUpdateManyWithoutDecksNestedInputFromJson(
            Map<String, dynamic> json) =>
        CardsUpdateManyWithoutDecksNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CardsCreateWithoutDecksInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CardsCreateOrConnectWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              CardsUpsertWithWhereUniqueWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CardsCreateManyDecksInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              CardsUpdateWithWhereUniqueWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              CardsUpdateManyWithWhereWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => CardsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CardsUpdateManyWithoutDecksNestedInputToJson(
    CardsUpdateManyWithoutDecksNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

UsersUpdateOneWithoutDecksNestedInput
    _$UsersUpdateOneWithoutDecksNestedInputFromJson(
            Map<String, dynamic> json) =>
        UsersUpdateOneWithoutDecksNestedInput(
          create: json['create'] == null
              ? null
              : UsersCreateWithoutDecksInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UsersCreateOrConnectWithoutDecksInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : UsersUpsertWithoutDecksInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] == null
              ? null
              : UsersWhereInput.fromJson(
                  json['disconnect'] as Map<String, dynamic>),
          delete: json['delete'] == null
              ? null
              : UsersWhereInput.fromJson(
                  json['delete'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UsersWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : UsersUpdateToOneWithWhereWithoutDecksInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersUpdateOneWithoutDecksNestedInputToJson(
    UsersUpdateOneWithoutDecksNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('disconnect', instance.disconnect?.toJson());
  writeNotNull('delete', instance.delete?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

CardsUncheckedUpdateManyWithoutDecksNestedInput
    _$CardsUncheckedUpdateManyWithoutDecksNestedInputFromJson(
            Map<String, dynamic> json) =>
        CardsUncheckedUpdateManyWithoutDecksNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CardsCreateWithoutDecksInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CardsCreateOrConnectWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              CardsUpsertWithWhereUniqueWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CardsCreateManyDecksInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              CardsUpdateWithWhereUniqueWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              CardsUpdateManyWithWhereWithoutDecksInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => CardsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CardsUncheckedUpdateManyWithoutDecksNestedInputToJson(
    CardsUncheckedUpdateManyWithoutDecksNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

CardsCreateNestedManyWithoutTagsInput
    _$CardsCreateNestedManyWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        CardsCreateNestedManyWithoutTagsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CardsCreateWithoutTagsInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CardsCreateOrConnectWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CardsCreateManyTagsInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CardsCreateNestedManyWithoutTagsInputToJson(
    CardsCreateNestedManyWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

CardsUncheckedCreateNestedManyWithoutTagsInput
    _$CardsUncheckedCreateNestedManyWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        CardsUncheckedCreateNestedManyWithoutTagsInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CardsCreateWithoutTagsInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CardsCreateOrConnectWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CardsCreateManyTagsInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CardsUncheckedCreateNestedManyWithoutTagsInputToJson(
    CardsUncheckedCreateNestedManyWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

CardsUpdateManyWithoutTagsNestedInput
    _$CardsUpdateManyWithoutTagsNestedInputFromJson(
            Map<String, dynamic> json) =>
        CardsUpdateManyWithoutTagsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CardsCreateWithoutTagsInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CardsCreateOrConnectWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              CardsUpsertWithWhereUniqueWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CardsCreateManyTagsInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              CardsUpdateWithWhereUniqueWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              CardsUpdateManyWithWhereWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => CardsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CardsUpdateManyWithoutTagsNestedInputToJson(
    CardsUpdateManyWithoutTagsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

CardsUncheckedUpdateManyWithoutTagsNestedInput
    _$CardsUncheckedUpdateManyWithoutTagsNestedInputFromJson(
            Map<String, dynamic> json) =>
        CardsUncheckedUpdateManyWithoutTagsNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              CardsCreateWithoutTagsInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => CardsCreateOrConnectWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              CardsUpsertWithWhereUniqueWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : CardsCreateManyTagsInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => CardsWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              CardsUpdateWithWhereUniqueWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              CardsUpdateManyWithWhereWithoutTagsInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => CardsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$CardsUncheckedUpdateManyWithoutTagsNestedInputToJson(
    CardsUncheckedUpdateManyWithoutTagsNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

DecksCreateNestedManyWithoutUsersInput
    _$DecksCreateNestedManyWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksCreateNestedManyWithoutUsersInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              DecksCreateWithoutUsersInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => DecksCreateOrConnectWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : DecksCreateManyUsersInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$DecksCreateNestedManyWithoutUsersInputToJson(
    DecksCreateNestedManyWithoutUsersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

DecksUncheckedCreateNestedManyWithoutUsersInput
    _$DecksUncheckedCreateNestedManyWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksUncheckedCreateNestedManyWithoutUsersInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              DecksCreateWithoutUsersInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => DecksCreateOrConnectWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : DecksCreateManyUsersInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$DecksUncheckedCreateNestedManyWithoutUsersInputToJson(
    DecksUncheckedCreateNestedManyWithoutUsersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

DecksUpdateManyWithoutUsersNestedInput
    _$DecksUpdateManyWithoutUsersNestedInputFromJson(
            Map<String, dynamic> json) =>
        DecksUpdateManyWithoutUsersNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              DecksCreateWithoutUsersInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => DecksCreateOrConnectWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              DecksUpsertWithWhereUniqueWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : DecksCreateManyUsersInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              DecksUpdateWithWhereUniqueWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              DecksUpdateManyWithWhereWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => DecksScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$DecksUpdateManyWithoutUsersNestedInputToJson(
    DecksUpdateManyWithoutUsersNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

DecksUncheckedUpdateManyWithoutUsersNestedInput
    _$DecksUncheckedUpdateManyWithoutUsersNestedInputFromJson(
            Map<String, dynamic> json) =>
        DecksUncheckedUpdateManyWithoutUsersNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              DecksCreateWithoutUsersInput.fromJson(e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => DecksCreateOrConnectWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              DecksUpsertWithWhereUniqueWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : DecksCreateManyUsersInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map(
              (e) => DecksWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              DecksUpdateWithWhereUniqueWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              DecksUpdateManyWithWhereWithoutUsersInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map(
              (e) => DecksScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$DecksUncheckedUpdateManyWithoutUsersNestedInputToJson(
    DecksUncheckedUpdateManyWithoutUsersNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
    NestedIntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringNullableFilter _$NestedStringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringNullableFilterToJson(
    NestedStringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntNullableWithAggregatesFilter
    _$NestedIntNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedIntNullableWithAggregatesFilter(
          equals: json['equals'] as int?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
          lt: json['lt'] as int?,
          lte: json['lte'] as int?,
          gt: json['gt'] as int?,
          gte: json['gte'] as int?,
          not: json['not'] == null
              ? null
              : NestedIntNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : NestedFloatNullableFilter.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_sum'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedIntNullableWithAggregatesFilterToJson(
    NestedIntNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatNullableFilter _$NestedFloatNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedFloatNullableFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatNullableFilterToJson(
    NestedFloatNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringNullableWithAggregatesFilter
    _$NestedStringNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedStringNullableWithAggregatesFilter(
          equals: json['equals'] as String?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
          lt: json['lt'] as String?,
          lte: json['lte'] as String?,
          gt: json['gt'] as String?,
          gte: json['gte'] as String?,
          contains: json['contains'] as String?,
          startsWith: json['startsWith'] as String?,
          endsWith: json['endsWith'] as String?,
          not: json['not'] == null
              ? null
              : NestedStringNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedStringNullableWithAggregatesFilterToJson(
    NestedStringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

DecksCreateWithoutCardsInput _$DecksCreateWithoutCardsInputFromJson(
        Map<String, dynamic> json) =>
    DecksCreateWithoutCardsInput(
      title: json['title'] as String?,
      datecreated: json['datecreated'] as String?,
      users: json['users'] == null
          ? null
          : UsersCreateNestedOneWithoutDecksInput.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksCreateWithoutCardsInputToJson(
    DecksCreateWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  writeNotNull('users', instance.users?.toJson());
  return val;
}

DecksUncheckedCreateWithoutCardsInput
    _$DecksUncheckedCreateWithoutCardsInputFromJson(
            Map<String, dynamic> json) =>
        DecksUncheckedCreateWithoutCardsInput(
          deckId: json['deck_id'] as int?,
          userId: json['user_id'] as int?,
          title: json['title'] as String?,
          datecreated: json['datecreated'] as String?,
        );

Map<String, dynamic> _$DecksUncheckedCreateWithoutCardsInputToJson(
    DecksUncheckedCreateWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  return val;
}

DecksCreateOrConnectWithoutCardsInput
    _$DecksCreateOrConnectWithoutCardsInputFromJson(
            Map<String, dynamic> json) =>
        DecksCreateOrConnectWithoutCardsInput(
          where: DecksWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: DecksCreateWithoutCardsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksCreateOrConnectWithoutCardsInputToJson(
        DecksCreateOrConnectWithoutCardsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

TagsCreateWithoutCardsInput _$TagsCreateWithoutCardsInputFromJson(
        Map<String, dynamic> json) =>
    TagsCreateWithoutCardsInput(
      tagName: json['tag_name'] as String?,
    );

Map<String, dynamic> _$TagsCreateWithoutCardsInputToJson(
    TagsCreateWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_name', instance.tagName);
  return val;
}

TagsUncheckedCreateWithoutCardsInput
    _$TagsUncheckedCreateWithoutCardsInputFromJson(Map<String, dynamic> json) =>
        TagsUncheckedCreateWithoutCardsInput(
          tagId: json['tag_id'] as int?,
          tagName: json['tag_name'] as String?,
        );

Map<String, dynamic> _$TagsUncheckedCreateWithoutCardsInputToJson(
    TagsUncheckedCreateWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', instance.tagId);
  writeNotNull('tag_name', instance.tagName);
  return val;
}

TagsCreateOrConnectWithoutCardsInput
    _$TagsCreateOrConnectWithoutCardsInputFromJson(Map<String, dynamic> json) =>
        TagsCreateOrConnectWithoutCardsInput(
          where: TagsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: TagsCreateWithoutCardsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagsCreateOrConnectWithoutCardsInputToJson(
        TagsCreateOrConnectWithoutCardsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

DecksUpsertWithoutCardsInput _$DecksUpsertWithoutCardsInputFromJson(
        Map<String, dynamic> json) =>
    DecksUpsertWithoutCardsInput(
      update: DecksUpdateWithoutCardsInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: DecksCreateWithoutCardsInput.fromJson(
          json['create'] as Map<String, dynamic>),
      where: json['where'] == null
          ? null
          : DecksWhereInput.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksUpsertWithoutCardsInputToJson(
    DecksUpsertWithoutCardsInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

DecksUpdateToOneWithWhereWithoutCardsInput
    _$DecksUpdateToOneWithWhereWithoutCardsInputFromJson(
            Map<String, dynamic> json) =>
        DecksUpdateToOneWithWhereWithoutCardsInput(
          where: json['where'] == null
              ? null
              : DecksWhereInput.fromJson(json['where'] as Map<String, dynamic>),
          data: DecksUpdateWithoutCardsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUpdateToOneWithWhereWithoutCardsInputToJson(
    DecksUpdateToOneWithWhereWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

DecksUpdateWithoutCardsInput _$DecksUpdateWithoutCardsInputFromJson(
        Map<String, dynamic> json) =>
    DecksUpdateWithoutCardsInput(
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['datecreated'] as Map<String, dynamic>),
      users: json['users'] == null
          ? null
          : UsersUpdateOneWithoutDecksNestedInput.fromJson(
              json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksUpdateWithoutCardsInputToJson(
    DecksUpdateWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  writeNotNull('users', instance.users?.toJson());
  return val;
}

DecksUncheckedUpdateWithoutCardsInput
    _$DecksUncheckedUpdateWithoutCardsInputFromJson(
            Map<String, dynamic> json) =>
        DecksUncheckedUpdateWithoutCardsInput(
          deckId: json['deck_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['deck_id'] as Map<String, dynamic>),
          userId: json['user_id'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['user_id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          datecreated: json['datecreated'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['datecreated'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUncheckedUpdateWithoutCardsInputToJson(
    DecksUncheckedUpdateWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  return val;
}

TagsUpsertWithoutCardsInput _$TagsUpsertWithoutCardsInputFromJson(
        Map<String, dynamic> json) =>
    TagsUpsertWithoutCardsInput(
      update: TagsUpdateWithoutCardsInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: TagsCreateWithoutCardsInput.fromJson(
          json['create'] as Map<String, dynamic>),
      where: json['where'] == null
          ? null
          : TagsWhereInput.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsUpsertWithoutCardsInputToJson(
    TagsUpsertWithoutCardsInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

TagsUpdateToOneWithWhereWithoutCardsInput
    _$TagsUpdateToOneWithWhereWithoutCardsInputFromJson(
            Map<String, dynamic> json) =>
        TagsUpdateToOneWithWhereWithoutCardsInput(
          where: json['where'] == null
              ? null
              : TagsWhereInput.fromJson(json['where'] as Map<String, dynamic>),
          data: TagsUpdateWithoutCardsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagsUpdateToOneWithWhereWithoutCardsInputToJson(
    TagsUpdateToOneWithWhereWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

TagsUpdateWithoutCardsInput _$TagsUpdateWithoutCardsInputFromJson(
        Map<String, dynamic> json) =>
    TagsUpdateWithoutCardsInput(
      tagName: json['tag_name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['tag_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TagsUpdateWithoutCardsInputToJson(
    TagsUpdateWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_name', instance.tagName?.toJson());
  return val;
}

TagsUncheckedUpdateWithoutCardsInput
    _$TagsUncheckedUpdateWithoutCardsInputFromJson(Map<String, dynamic> json) =>
        TagsUncheckedUpdateWithoutCardsInput(
          tagId: json['tag_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['tag_id'] as Map<String, dynamic>),
          tagName: json['tag_name'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['tag_name'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$TagsUncheckedUpdateWithoutCardsInputToJson(
    TagsUncheckedUpdateWithoutCardsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', instance.tagId?.toJson());
  writeNotNull('tag_name', instance.tagName?.toJson());
  return val;
}

CardsCreateWithoutDecksInput _$CardsCreateWithoutDecksInputFromJson(
        Map<String, dynamic> json) =>
    CardsCreateWithoutDecksInput(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
      tags: json['tags'] == null
          ? null
          : TagsCreateNestedOneWithoutCardsInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsCreateWithoutDecksInputToJson(
    CardsCreateWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

CardsUncheckedCreateWithoutDecksInput
    _$CardsUncheckedCreateWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsUncheckedCreateWithoutDecksInput(
          cardId: json['card_id'] as int?,
          question: json['question'] as String?,
          answer: json['answer'] as String?,
          due: json['due'] as int?,
          tagId: json['tag_id'] as int?,
        );

Map<String, dynamic> _$CardsUncheckedCreateWithoutDecksInputToJson(
    CardsUncheckedCreateWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId);
  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('tag_id', instance.tagId);
  return val;
}

CardsCreateOrConnectWithoutDecksInput
    _$CardsCreateOrConnectWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsCreateOrConnectWithoutDecksInput(
          where: CardsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CardsCreateWithoutDecksInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsCreateOrConnectWithoutDecksInputToJson(
        CardsCreateOrConnectWithoutDecksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

CardsCreateManyDecksInputEnvelope _$CardsCreateManyDecksInputEnvelopeFromJson(
        Map<String, dynamic> json) =>
    CardsCreateManyDecksInputEnvelope(
      data: (json['data'] as List<dynamic>).map(
          (e) => CardsCreateManyDecksInput.fromJson(e as Map<String, dynamic>)),
      skipDuplicates: json['skipDuplicates'] as bool?,
    );

Map<String, dynamic> _$CardsCreateManyDecksInputEnvelopeToJson(
    CardsCreateManyDecksInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

UsersCreateWithoutDecksInput _$UsersCreateWithoutDecksInputFromJson(
        Map<String, dynamic> json) =>
    UsersCreateWithoutDecksInput(
      username: json['username'] as String?,
      passwordHash: json['password_hash'] as String?,
    );

Map<String, dynamic> _$UsersCreateWithoutDecksInputToJson(
    UsersCreateWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('password_hash', instance.passwordHash);
  return val;
}

UsersUncheckedCreateWithoutDecksInput
    _$UsersUncheckedCreateWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        UsersUncheckedCreateWithoutDecksInput(
          userId: json['user_id'] as int?,
          username: json['username'] as String?,
          passwordHash: json['password_hash'] as String?,
        );

Map<String, dynamic> _$UsersUncheckedCreateWithoutDecksInputToJson(
    UsersUncheckedCreateWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('username', instance.username);
  writeNotNull('password_hash', instance.passwordHash);
  return val;
}

UsersCreateOrConnectWithoutDecksInput
    _$UsersCreateOrConnectWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        UsersCreateOrConnectWithoutDecksInput(
          where: UsersWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: UsersCreateWithoutDecksInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersCreateOrConnectWithoutDecksInputToJson(
        UsersCreateOrConnectWithoutDecksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

CardsUpsertWithWhereUniqueWithoutDecksInput
    _$CardsUpsertWithWhereUniqueWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsUpsertWithWhereUniqueWithoutDecksInput(
          where: CardsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: CardsUpdateWithoutDecksInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: CardsCreateWithoutDecksInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUpsertWithWhereUniqueWithoutDecksInputToJson(
        CardsUpsertWithWhereUniqueWithoutDecksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

CardsUpdateWithWhereUniqueWithoutDecksInput
    _$CardsUpdateWithWhereUniqueWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsUpdateWithWhereUniqueWithoutDecksInput(
          where: CardsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: CardsUpdateWithoutDecksInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUpdateWithWhereUniqueWithoutDecksInputToJson(
        CardsUpdateWithWhereUniqueWithoutDecksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

CardsUpdateManyWithWhereWithoutDecksInput
    _$CardsUpdateManyWithWhereWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsUpdateManyWithWhereWithoutDecksInput(
          where: CardsScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: CardsUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUpdateManyWithWhereWithoutDecksInputToJson(
        CardsUpdateManyWithWhereWithoutDecksInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

CardsScalarWhereInput _$CardsScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    CardsScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => CardsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => CardsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => CardsScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      cardId: json['card_id'] == null
          ? null
          : IntFilter.fromJson(json['card_id'] as Map<String, dynamic>),
      deckId: json['deck_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['deck_id'] as Map<String, dynamic>),
      question: json['question'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : IntNullableFilter.fromJson(json['due'] as Map<String, dynamic>),
      tagId: json['tag_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['tag_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsScalarWhereInputToJson(
    CardsScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tag_id', instance.tagId?.toJson());
  return val;
}

UsersUpsertWithoutDecksInput _$UsersUpsertWithoutDecksInputFromJson(
        Map<String, dynamic> json) =>
    UsersUpsertWithoutDecksInput(
      update: UsersUpdateWithoutDecksInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: UsersCreateWithoutDecksInput.fromJson(
          json['create'] as Map<String, dynamic>),
      where: json['where'] == null
          ? null
          : UsersWhereInput.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersUpsertWithoutDecksInputToJson(
    UsersUpsertWithoutDecksInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

UsersUpdateToOneWithWhereWithoutDecksInput
    _$UsersUpdateToOneWithWhereWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        UsersUpdateToOneWithWhereWithoutDecksInput(
          where: json['where'] == null
              ? null
              : UsersWhereInput.fromJson(json['where'] as Map<String, dynamic>),
          data: UsersUpdateWithoutDecksInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersUpdateToOneWithWhereWithoutDecksInputToJson(
    UsersUpdateToOneWithWhereWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

UsersUpdateWithoutDecksInput _$UsersUpdateWithoutDecksInputFromJson(
        Map<String, dynamic> json) =>
    UsersUpdateWithoutDecksInput(
      username: json['username'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['username'] as Map<String, dynamic>),
      passwordHash: json['password_hash'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['password_hash'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersUpdateWithoutDecksInputToJson(
    UsersUpdateWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  return val;
}

UsersUncheckedUpdateWithoutDecksInput
    _$UsersUncheckedUpdateWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        UsersUncheckedUpdateWithoutDecksInput(
          userId: json['user_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['user_id'] as Map<String, dynamic>),
          username: json['username'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['username'] as Map<String, dynamic>),
          passwordHash: json['password_hash'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['password_hash'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UsersUncheckedUpdateWithoutDecksInputToJson(
    UsersUncheckedUpdateWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('username', instance.username?.toJson());
  writeNotNull('password_hash', instance.passwordHash?.toJson());
  return val;
}

CardsCreateWithoutTagsInput _$CardsCreateWithoutTagsInputFromJson(
        Map<String, dynamic> json) =>
    CardsCreateWithoutTagsInput(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
      decks: json['decks'] == null
          ? null
          : DecksCreateNestedOneWithoutCardsInput.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsCreateWithoutTagsInputToJson(
    CardsCreateWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

CardsUncheckedCreateWithoutTagsInput
    _$CardsUncheckedCreateWithoutTagsInputFromJson(Map<String, dynamic> json) =>
        CardsUncheckedCreateWithoutTagsInput(
          cardId: json['card_id'] as int?,
          deckId: json['deck_id'] as int?,
          question: json['question'] as String?,
          answer: json['answer'] as String?,
          due: json['due'] as int?,
        );

Map<String, dynamic> _$CardsUncheckedCreateWithoutTagsInputToJson(
    CardsUncheckedCreateWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId);
  writeNotNull('deck_id', instance.deckId);
  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  return val;
}

CardsCreateOrConnectWithoutTagsInput
    _$CardsCreateOrConnectWithoutTagsInputFromJson(Map<String, dynamic> json) =>
        CardsCreateOrConnectWithoutTagsInput(
          where: CardsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: CardsCreateWithoutTagsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsCreateOrConnectWithoutTagsInputToJson(
        CardsCreateOrConnectWithoutTagsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

CardsCreateManyTagsInputEnvelope _$CardsCreateManyTagsInputEnvelopeFromJson(
        Map<String, dynamic> json) =>
    CardsCreateManyTagsInputEnvelope(
      data: (json['data'] as List<dynamic>).map(
          (e) => CardsCreateManyTagsInput.fromJson(e as Map<String, dynamic>)),
      skipDuplicates: json['skipDuplicates'] as bool?,
    );

Map<String, dynamic> _$CardsCreateManyTagsInputEnvelopeToJson(
    CardsCreateManyTagsInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

CardsUpsertWithWhereUniqueWithoutTagsInput
    _$CardsUpsertWithWhereUniqueWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        CardsUpsertWithWhereUniqueWithoutTagsInput(
          where: CardsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: CardsUpdateWithoutTagsInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: CardsCreateWithoutTagsInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUpsertWithWhereUniqueWithoutTagsInputToJson(
        CardsUpsertWithWhereUniqueWithoutTagsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

CardsUpdateWithWhereUniqueWithoutTagsInput
    _$CardsUpdateWithWhereUniqueWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        CardsUpdateWithWhereUniqueWithoutTagsInput(
          where: CardsWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: CardsUpdateWithoutTagsInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUpdateWithWhereUniqueWithoutTagsInputToJson(
        CardsUpdateWithWhereUniqueWithoutTagsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

CardsUpdateManyWithWhereWithoutTagsInput
    _$CardsUpdateManyWithWhereWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        CardsUpdateManyWithWhereWithoutTagsInput(
          where: CardsScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: CardsUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUpdateManyWithWhereWithoutTagsInputToJson(
        CardsUpdateManyWithWhereWithoutTagsInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

DecksCreateWithoutUsersInput _$DecksCreateWithoutUsersInputFromJson(
        Map<String, dynamic> json) =>
    DecksCreateWithoutUsersInput(
      title: json['title'] as String?,
      datecreated: json['datecreated'] as String?,
      cards: json['cards'] == null
          ? null
          : CardsCreateNestedManyWithoutDecksInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksCreateWithoutUsersInputToJson(
    DecksCreateWithoutUsersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

DecksUncheckedCreateWithoutUsersInput
    _$DecksUncheckedCreateWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksUncheckedCreateWithoutUsersInput(
          deckId: json['deck_id'] as int?,
          title: json['title'] as String?,
          datecreated: json['datecreated'] as String?,
          cards: json['cards'] == null
              ? null
              : CardsUncheckedCreateNestedManyWithoutDecksInput.fromJson(
                  json['cards'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUncheckedCreateWithoutUsersInputToJson(
    DecksUncheckedCreateWithoutUsersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId);
  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

DecksCreateOrConnectWithoutUsersInput
    _$DecksCreateOrConnectWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksCreateOrConnectWithoutUsersInput(
          where: DecksWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: DecksCreateWithoutUsersInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksCreateOrConnectWithoutUsersInputToJson(
        DecksCreateOrConnectWithoutUsersInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

DecksCreateManyUsersInputEnvelope _$DecksCreateManyUsersInputEnvelopeFromJson(
        Map<String, dynamic> json) =>
    DecksCreateManyUsersInputEnvelope(
      data: (json['data'] as List<dynamic>).map(
          (e) => DecksCreateManyUsersInput.fromJson(e as Map<String, dynamic>)),
      skipDuplicates: json['skipDuplicates'] as bool?,
    );

Map<String, dynamic> _$DecksCreateManyUsersInputEnvelopeToJson(
    DecksCreateManyUsersInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

DecksUpsertWithWhereUniqueWithoutUsersInput
    _$DecksUpsertWithWhereUniqueWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksUpsertWithWhereUniqueWithoutUsersInput(
          where: DecksWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: DecksUpdateWithoutUsersInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: DecksCreateWithoutUsersInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUpsertWithWhereUniqueWithoutUsersInputToJson(
        DecksUpsertWithWhereUniqueWithoutUsersInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'update': instance.update.toJson(),
      'create': instance.create.toJson(),
    };

DecksUpdateWithWhereUniqueWithoutUsersInput
    _$DecksUpdateWithWhereUniqueWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksUpdateWithWhereUniqueWithoutUsersInput(
          where: DecksWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: DecksUpdateWithoutUsersInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUpdateWithWhereUniqueWithoutUsersInputToJson(
        DecksUpdateWithWhereUniqueWithoutUsersInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

DecksUpdateManyWithWhereWithoutUsersInput
    _$DecksUpdateManyWithWhereWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksUpdateManyWithWhereWithoutUsersInput(
          where: DecksScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: DecksUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUpdateManyWithWhereWithoutUsersInputToJson(
        DecksUpdateManyWithWhereWithoutUsersInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

DecksScalarWhereInput _$DecksScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    DecksScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => DecksScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => DecksScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => DecksScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      deckId: json['deck_id'] == null
          ? null
          : IntFilter.fromJson(json['deck_id'] as Map<String, dynamic>),
      userId: json['user_id'] == null
          ? null
          : IntNullableFilter.fromJson(json['user_id'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['datecreated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksScalarWhereInputToJson(
    DecksScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('user_id', instance.userId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  return val;
}

CardsCreateManyDecksInput _$CardsCreateManyDecksInputFromJson(
        Map<String, dynamic> json) =>
    CardsCreateManyDecksInput(
      cardId: json['card_id'] as int?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
      tagId: json['tag_id'] as int?,
    );

Map<String, dynamic> _$CardsCreateManyDecksInputToJson(
    CardsCreateManyDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId);
  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('tag_id', instance.tagId);
  return val;
}

CardsUpdateWithoutDecksInput _$CardsUpdateWithoutDecksInputFromJson(
        Map<String, dynamic> json) =>
    CardsUpdateWithoutDecksInput(
      question: json['question'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['due'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : TagsUpdateOneWithoutCardsNestedInput.fromJson(
              json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsUpdateWithoutDecksInputToJson(
    CardsUpdateWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tags', instance.tags?.toJson());
  return val;
}

CardsUncheckedUpdateWithoutDecksInput
    _$CardsUncheckedUpdateWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsUncheckedUpdateWithoutDecksInput(
          cardId: json['card_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['card_id'] as Map<String, dynamic>),
          question: json['question'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['question'] as Map<String, dynamic>),
          answer: json['answer'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['answer'] as Map<String, dynamic>),
          due: json['due'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['due'] as Map<String, dynamic>),
          tagId: json['tag_id'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['tag_id'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUncheckedUpdateWithoutDecksInputToJson(
    CardsUncheckedUpdateWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tag_id', instance.tagId?.toJson());
  return val;
}

CardsUncheckedUpdateManyWithoutDecksInput
    _$CardsUncheckedUpdateManyWithoutDecksInputFromJson(
            Map<String, dynamic> json) =>
        CardsUncheckedUpdateManyWithoutDecksInput(
          cardId: json['card_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['card_id'] as Map<String, dynamic>),
          question: json['question'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['question'] as Map<String, dynamic>),
          answer: json['answer'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['answer'] as Map<String, dynamic>),
          due: json['due'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['due'] as Map<String, dynamic>),
          tagId: json['tag_id'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['tag_id'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUncheckedUpdateManyWithoutDecksInputToJson(
    CardsUncheckedUpdateManyWithoutDecksInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('tag_id', instance.tagId?.toJson());
  return val;
}

CardsCreateManyTagsInput _$CardsCreateManyTagsInputFromJson(
        Map<String, dynamic> json) =>
    CardsCreateManyTagsInput(
      cardId: json['card_id'] as int?,
      deckId: json['deck_id'] as int?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
    );

Map<String, dynamic> _$CardsCreateManyTagsInputToJson(
    CardsCreateManyTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId);
  writeNotNull('deck_id', instance.deckId);
  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  return val;
}

CardsUpdateWithoutTagsInput _$CardsUpdateWithoutTagsInputFromJson(
        Map<String, dynamic> json) =>
    CardsUpdateWithoutTagsInput(
      question: json['question'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['question'] as Map<String, dynamic>),
      answer: json['answer'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['answer'] as Map<String, dynamic>),
      due: json['due'] == null
          ? null
          : NullableIntFieldUpdateOperationsInput.fromJson(
              json['due'] as Map<String, dynamic>),
      decks: json['decks'] == null
          ? null
          : DecksUpdateOneWithoutCardsNestedInput.fromJson(
              json['decks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CardsUpdateWithoutTagsInputToJson(
    CardsUpdateWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  writeNotNull('decks', instance.decks?.toJson());
  return val;
}

CardsUncheckedUpdateWithoutTagsInput
    _$CardsUncheckedUpdateWithoutTagsInputFromJson(Map<String, dynamic> json) =>
        CardsUncheckedUpdateWithoutTagsInput(
          cardId: json['card_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['card_id'] as Map<String, dynamic>),
          deckId: json['deck_id'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['deck_id'] as Map<String, dynamic>),
          question: json['question'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['question'] as Map<String, dynamic>),
          answer: json['answer'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['answer'] as Map<String, dynamic>),
          due: json['due'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['due'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUncheckedUpdateWithoutTagsInputToJson(
    CardsUncheckedUpdateWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  return val;
}

CardsUncheckedUpdateManyWithoutTagsInput
    _$CardsUncheckedUpdateManyWithoutTagsInputFromJson(
            Map<String, dynamic> json) =>
        CardsUncheckedUpdateManyWithoutTagsInput(
          cardId: json['card_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['card_id'] as Map<String, dynamic>),
          deckId: json['deck_id'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['deck_id'] as Map<String, dynamic>),
          question: json['question'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['question'] as Map<String, dynamic>),
          answer: json['answer'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['answer'] as Map<String, dynamic>),
          due: json['due'] == null
              ? null
              : NullableIntFieldUpdateOperationsInput.fromJson(
                  json['due'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CardsUncheckedUpdateManyWithoutTagsInputToJson(
    CardsUncheckedUpdateManyWithoutTagsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId?.toJson());
  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('question', instance.question?.toJson());
  writeNotNull('answer', instance.answer?.toJson());
  writeNotNull('due', instance.due?.toJson());
  return val;
}

DecksCreateManyUsersInput _$DecksCreateManyUsersInputFromJson(
        Map<String, dynamic> json) =>
    DecksCreateManyUsersInput(
      deckId: json['deck_id'] as int?,
      title: json['title'] as String?,
      datecreated: json['datecreated'] as String?,
    );

Map<String, dynamic> _$DecksCreateManyUsersInputToJson(
    DecksCreateManyUsersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId);
  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  return val;
}

DecksUpdateWithoutUsersInput _$DecksUpdateWithoutUsersInputFromJson(
        Map<String, dynamic> json) =>
    DecksUpdateWithoutUsersInput(
      title: json['title'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['title'] as Map<String, dynamic>),
      datecreated: json['datecreated'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['datecreated'] as Map<String, dynamic>),
      cards: json['cards'] == null
          ? null
          : CardsUpdateManyWithoutDecksNestedInput.fromJson(
              json['cards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecksUpdateWithoutUsersInputToJson(
    DecksUpdateWithoutUsersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

DecksUncheckedUpdateWithoutUsersInput
    _$DecksUncheckedUpdateWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksUncheckedUpdateWithoutUsersInput(
          deckId: json['deck_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['deck_id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          datecreated: json['datecreated'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['datecreated'] as Map<String, dynamic>),
          cards: json['cards'] == null
              ? null
              : CardsUncheckedUpdateManyWithoutDecksNestedInput.fromJson(
                  json['cards'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUncheckedUpdateWithoutUsersInputToJson(
    DecksUncheckedUpdateWithoutUsersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  writeNotNull('cards', instance.cards?.toJson());
  return val;
}

DecksUncheckedUpdateManyWithoutUsersInput
    _$DecksUncheckedUpdateManyWithoutUsersInputFromJson(
            Map<String, dynamic> json) =>
        DecksUncheckedUpdateManyWithoutUsersInput(
          deckId: json['deck_id'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['deck_id'] as Map<String, dynamic>),
          title: json['title'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['title'] as Map<String, dynamic>),
          datecreated: json['datecreated'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['datecreated'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DecksUncheckedUpdateManyWithoutUsersInputToJson(
    DecksUncheckedUpdateManyWithoutUsersInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId?.toJson());
  writeNotNull('title', instance.title?.toJson());
  writeNotNull('datecreated', instance.datecreated?.toJson());
  return val;
}

Cards _$CardsFromJson(Map<String, dynamic> json) => Cards(
      cardId: json['card_id'] as int,
      deckId: json['deck_id'] as int?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
      tagId: json['tag_id'] as int?,
    );

Map<String, dynamic> _$CardsToJson(Cards instance) {
  final val = <String, dynamic>{
    'card_id': instance.cardId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId);
  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('tag_id', instance.tagId);
  return val;
}

CustomStudy _$CustomStudyFromJson(Map<String, dynamic> json) => CustomStudy(
      customid: json['customid'] as int,
      customDue: json['custom_due'] as int?,
    );

Map<String, dynamic> _$CustomStudyToJson(CustomStudy instance) {
  final val = <String, dynamic>{
    'customid': instance.customid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('custom_due', instance.customDue);
  return val;
}

Decks _$DecksFromJson(Map<String, dynamic> json) => Decks(
      deckId: json['deck_id'] as int,
      userId: json['user_id'] as int?,
      title: json['title'] as String?,
      datecreated: json['datecreated'] as String?,
    );

Map<String, dynamic> _$DecksToJson(Decks instance) {
  final val = <String, dynamic>{
    'deck_id': instance.deckId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  return val;
}

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      tagId: json['tag_id'] as int,
      tagName: json['tag_name'] as String?,
    );

Map<String, dynamic> _$TagsToJson(Tags instance) {
  final val = <String, dynamic>{
    'tag_id': instance.tagId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_name', instance.tagName);
  return val;
}

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      userId: json['user_id'] as int,
      username: json['username'] as String?,
      passwordHash: json['password_hash'] as String?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) {
  final val = <String, dynamic>{
    'user_id': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('password_hash', instance.passwordHash);
  return val;
}

CardsGroupByOutputType _$CardsGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CardsGroupByOutputType(
      cardId: json['card_id'] as int?,
      deckId: json['deck_id'] as int?,
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      due: json['due'] as int?,
      tagId: json['tag_id'] as int?,
    );

Map<String, dynamic> _$CardsGroupByOutputTypeToJson(
    CardsGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_id', instance.cardId);
  writeNotNull('deck_id', instance.deckId);
  writeNotNull('question', instance.question);
  writeNotNull('answer', instance.answer);
  writeNotNull('due', instance.due);
  writeNotNull('tag_id', instance.tagId);
  return val;
}

CustomStudyGroupByOutputType _$CustomStudyGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    CustomStudyGroupByOutputType(
      customid: json['customid'] as int?,
      customDue: json['custom_due'] as int?,
    );

Map<String, dynamic> _$CustomStudyGroupByOutputTypeToJson(
    CustomStudyGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customid', instance.customid);
  writeNotNull('custom_due', instance.customDue);
  return val;
}

DecksGroupByOutputType _$DecksGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    DecksGroupByOutputType(
      deckId: json['deck_id'] as int?,
      userId: json['user_id'] as int?,
      title: json['title'] as String?,
      datecreated: json['datecreated'] as String?,
    );

Map<String, dynamic> _$DecksGroupByOutputTypeToJson(
    DecksGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deck_id', instance.deckId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('title', instance.title);
  writeNotNull('datecreated', instance.datecreated);
  return val;
}

TagsGroupByOutputType _$TagsGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    TagsGroupByOutputType(
      tagId: json['tag_id'] as int?,
      tagName: json['tag_name'] as String?,
    );

Map<String, dynamic> _$TagsGroupByOutputTypeToJson(
    TagsGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_id', instance.tagId);
  writeNotNull('tag_name', instance.tagName);
  return val;
}

UsersGroupByOutputType _$UsersGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UsersGroupByOutputType(
      userId: json['user_id'] as int?,
      username: json['username'] as String?,
      passwordHash: json['password_hash'] as String?,
    );

Map<String, dynamic> _$UsersGroupByOutputTypeToJson(
    UsersGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('username', instance.username);
  writeNotNull('password_hash', instance.passwordHash);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
