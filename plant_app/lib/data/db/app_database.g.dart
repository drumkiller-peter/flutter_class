// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NewsTableTable extends NewsTable
    with TableInfo<$NewsTableTable, NewsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NewsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant("Hello World"));
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _urlToImageMeta =
      const VerificationMeta('urlToImage');
  @override
  late final GeneratedColumn<String> urlToImage = GeneratedColumn<String>(
      'url_to_image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _publishedAtMeta =
      const VerificationMeta('publishedAt');
  @override
  late final GeneratedColumn<String> publishedAt = GeneratedColumn<String>(
      'published_at', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sourceModelMeta =
      const VerificationMeta('sourceModel');
  @override
  late final GeneratedColumnWithTypeConverter<SourceModel?, String>
      sourceModel = GeneratedColumn<String>('source_model', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<SourceModel?>($NewsTableTable.$convertersourceModeln);
  @override
  List<GeneratedColumn> get $columns => [
        uuid,
        source,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
        sourceModel
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'news_table';
  @override
  VerificationContext validateIntegrity(Insertable<NewsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    }
    if (data.containsKey('url_to_image')) {
      context.handle(
          _urlToImageMeta,
          urlToImage.isAcceptableOrUnknown(
              data['url_to_image']!, _urlToImageMeta));
    }
    if (data.containsKey('published_at')) {
      context.handle(
          _publishedAtMeta,
          publishedAt.isAcceptableOrUnknown(
              data['published_at']!, _publishedAtMeta));
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    context.handle(_sourceModelMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid, title, urlToImage};
  @override
  NewsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NewsTableData(
      uuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source']),
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url']),
      urlToImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url_to_image']),
      publishedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}published_at']),
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content']),
      sourceModel: $NewsTableTable.$convertersourceModeln.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}source_model'])),
    );
  }

  @override
  $NewsTableTable createAlias(String alias) {
    return $NewsTableTable(attachedDatabase, alias);
  }

  static TypeConverter<SourceModel, String> $convertersourceModel =
      SourceTypeConverter();
  static TypeConverter<SourceModel?, String?> $convertersourceModeln =
      NullAwareTypeConverter.wrap($convertersourceModel);
}

class NewsTableData extends DataClass implements Insertable<NewsTableData> {
  final String uuid;
  final String? source;
  final String? author;
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;
  final SourceModel? sourceModel;
  const NewsTableData(
      {required this.uuid,
      this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content,
      this.sourceModel});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    if (!nullToAbsent || source != null) {
      map['source'] = Variable<String>(source);
    }
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || urlToImage != null) {
      map['url_to_image'] = Variable<String>(urlToImage);
    }
    if (!nullToAbsent || publishedAt != null) {
      map['published_at'] = Variable<String>(publishedAt);
    }
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    if (!nullToAbsent || sourceModel != null) {
      map['source_model'] = Variable<String>(
          $NewsTableTable.$convertersourceModeln.toSql(sourceModel));
    }
    return map;
  }

  NewsTableCompanion toCompanion(bool nullToAbsent) {
    return NewsTableCompanion(
      uuid: Value(uuid),
      source:
          source == null && nullToAbsent ? const Value.absent() : Value(source),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      urlToImage: urlToImage == null && nullToAbsent
          ? const Value.absent()
          : Value(urlToImage),
      publishedAt: publishedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(publishedAt),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      sourceModel: sourceModel == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceModel),
    );
  }

  factory NewsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NewsTableData(
      uuid: serializer.fromJson<String>(json['uuid']),
      source: serializer.fromJson<String?>(json['source']),
      author: serializer.fromJson<String?>(json['author']),
      title: serializer.fromJson<String?>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      url: serializer.fromJson<String?>(json['url']),
      urlToImage: serializer.fromJson<String?>(json['urlToImage']),
      publishedAt: serializer.fromJson<String?>(json['publishedAt']),
      content: serializer.fromJson<String?>(json['content']),
      sourceModel: serializer.fromJson<SourceModel?>(json['sourceModel']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'source': serializer.toJson<String?>(source),
      'author': serializer.toJson<String?>(author),
      'title': serializer.toJson<String?>(title),
      'description': serializer.toJson<String?>(description),
      'url': serializer.toJson<String?>(url),
      'urlToImage': serializer.toJson<String?>(urlToImage),
      'publishedAt': serializer.toJson<String?>(publishedAt),
      'content': serializer.toJson<String?>(content),
      'sourceModel': serializer.toJson<SourceModel?>(sourceModel),
    };
  }

  NewsTableData copyWith(
          {String? uuid,
          Value<String?> source = const Value.absent(),
          Value<String?> author = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> url = const Value.absent(),
          Value<String?> urlToImage = const Value.absent(),
          Value<String?> publishedAt = const Value.absent(),
          Value<String?> content = const Value.absent(),
          Value<SourceModel?> sourceModel = const Value.absent()}) =>
      NewsTableData(
        uuid: uuid ?? this.uuid,
        source: source.present ? source.value : this.source,
        author: author.present ? author.value : this.author,
        title: title.present ? title.value : this.title,
        description: description.present ? description.value : this.description,
        url: url.present ? url.value : this.url,
        urlToImage: urlToImage.present ? urlToImage.value : this.urlToImage,
        publishedAt: publishedAt.present ? publishedAt.value : this.publishedAt,
        content: content.present ? content.value : this.content,
        sourceModel: sourceModel.present ? sourceModel.value : this.sourceModel,
      );
  @override
  String toString() {
    return (StringBuffer('NewsTableData(')
          ..write('uuid: $uuid, ')
          ..write('source: $source, ')
          ..write('author: $author, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('publishedAt: $publishedAt, ')
          ..write('content: $content, ')
          ..write('sourceModel: $sourceModel')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, source, author, title, description, url,
      urlToImage, publishedAt, content, sourceModel);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NewsTableData &&
          other.uuid == this.uuid &&
          other.source == this.source &&
          other.author == this.author &&
          other.title == this.title &&
          other.description == this.description &&
          other.url == this.url &&
          other.urlToImage == this.urlToImage &&
          other.publishedAt == this.publishedAt &&
          other.content == this.content &&
          other.sourceModel == this.sourceModel);
}

class NewsTableCompanion extends UpdateCompanion<NewsTableData> {
  final Value<String> uuid;
  final Value<String?> source;
  final Value<String?> author;
  final Value<String?> title;
  final Value<String?> description;
  final Value<String?> url;
  final Value<String?> urlToImage;
  final Value<String?> publishedAt;
  final Value<String?> content;
  final Value<SourceModel?> sourceModel;
  final Value<int> rowid;
  const NewsTableCompanion({
    this.uuid = const Value.absent(),
    this.source = const Value.absent(),
    this.author = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    this.urlToImage = const Value.absent(),
    this.publishedAt = const Value.absent(),
    this.content = const Value.absent(),
    this.sourceModel = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NewsTableCompanion.insert({
    required String uuid,
    this.source = const Value.absent(),
    this.author = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    this.urlToImage = const Value.absent(),
    this.publishedAt = const Value.absent(),
    this.content = const Value.absent(),
    this.sourceModel = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : uuid = Value(uuid);
  static Insertable<NewsTableData> custom({
    Expression<String>? uuid,
    Expression<String>? source,
    Expression<String>? author,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? url,
    Expression<String>? urlToImage,
    Expression<String>? publishedAt,
    Expression<String>? content,
    Expression<String>? sourceModel,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (source != null) 'source': source,
      if (author != null) 'author': author,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (url != null) 'url': url,
      if (urlToImage != null) 'url_to_image': urlToImage,
      if (publishedAt != null) 'published_at': publishedAt,
      if (content != null) 'content': content,
      if (sourceModel != null) 'source_model': sourceModel,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NewsTableCompanion copyWith(
      {Value<String>? uuid,
      Value<String?>? source,
      Value<String?>? author,
      Value<String?>? title,
      Value<String?>? description,
      Value<String?>? url,
      Value<String?>? urlToImage,
      Value<String?>? publishedAt,
      Value<String?>? content,
      Value<SourceModel?>? sourceModel,
      Value<int>? rowid}) {
    return NewsTableCompanion(
      uuid: uuid ?? this.uuid,
      source: source ?? this.source,
      author: author ?? this.author,
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      urlToImage: urlToImage ?? this.urlToImage,
      publishedAt: publishedAt ?? this.publishedAt,
      content: content ?? this.content,
      sourceModel: sourceModel ?? this.sourceModel,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (urlToImage.present) {
      map['url_to_image'] = Variable<String>(urlToImage.value);
    }
    if (publishedAt.present) {
      map['published_at'] = Variable<String>(publishedAt.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (sourceModel.present) {
      map['source_model'] = Variable<String>(
          $NewsTableTable.$convertersourceModeln.toSql(sourceModel.value));
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NewsTableCompanion(')
          ..write('uuid: $uuid, ')
          ..write('source: $source, ')
          ..write('author: $author, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('publishedAt: $publishedAt, ')
          ..write('content: $content, ')
          ..write('sourceModel: $sourceModel, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AuthTableTable extends AuthTable
    with TableInfo<$AuthTableTable, AuthTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AuthTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastLoginMeta =
      const VerificationMeta('lastLogin');
  @override
  late final GeneratedColumn<DateTime> lastLogin = GeneratedColumn<DateTime>(
      'last_login', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [uuid, email, lastLogin];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'auth_table';
  @override
  VerificationContext validateIntegrity(Insertable<AuthTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('last_login')) {
      context.handle(_lastLoginMeta,
          lastLogin.isAcceptableOrUnknown(data['last_login']!, _lastLoginMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {uuid};
  @override
  AuthTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AuthTableData(
      uuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      lastLogin: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_login']),
    );
  }

  @override
  $AuthTableTable createAlias(String alias) {
    return $AuthTableTable(attachedDatabase, alias);
  }
}

class AuthTableData extends DataClass implements Insertable<AuthTableData> {
  final String uuid;
  final String? email;
  final DateTime? lastLogin;
  const AuthTableData({required this.uuid, this.email, this.lastLogin});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || lastLogin != null) {
      map['last_login'] = Variable<DateTime>(lastLogin);
    }
    return map;
  }

  AuthTableCompanion toCompanion(bool nullToAbsent) {
    return AuthTableCompanion(
      uuid: Value(uuid),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      lastLogin: lastLogin == null && nullToAbsent
          ? const Value.absent()
          : Value(lastLogin),
    );
  }

  factory AuthTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AuthTableData(
      uuid: serializer.fromJson<String>(json['uuid']),
      email: serializer.fromJson<String?>(json['email']),
      lastLogin: serializer.fromJson<DateTime?>(json['lastLogin']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'email': serializer.toJson<String?>(email),
      'lastLogin': serializer.toJson<DateTime?>(lastLogin),
    };
  }

  AuthTableData copyWith(
          {String? uuid,
          Value<String?> email = const Value.absent(),
          Value<DateTime?> lastLogin = const Value.absent()}) =>
      AuthTableData(
        uuid: uuid ?? this.uuid,
        email: email.present ? email.value : this.email,
        lastLogin: lastLogin.present ? lastLogin.value : this.lastLogin,
      );
  @override
  String toString() {
    return (StringBuffer('AuthTableData(')
          ..write('uuid: $uuid, ')
          ..write('email: $email, ')
          ..write('lastLogin: $lastLogin')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, email, lastLogin);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AuthTableData &&
          other.uuid == this.uuid &&
          other.email == this.email &&
          other.lastLogin == this.lastLogin);
}

class AuthTableCompanion extends UpdateCompanion<AuthTableData> {
  final Value<String> uuid;
  final Value<String?> email;
  final Value<DateTime?> lastLogin;
  final Value<int> rowid;
  const AuthTableCompanion({
    this.uuid = const Value.absent(),
    this.email = const Value.absent(),
    this.lastLogin = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AuthTableCompanion.insert({
    required String uuid,
    this.email = const Value.absent(),
    this.lastLogin = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : uuid = Value(uuid);
  static Insertable<AuthTableData> custom({
    Expression<String>? uuid,
    Expression<String>? email,
    Expression<DateTime>? lastLogin,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (email != null) 'email': email,
      if (lastLogin != null) 'last_login': lastLogin,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AuthTableCompanion copyWith(
      {Value<String>? uuid,
      Value<String?>? email,
      Value<DateTime?>? lastLogin,
      Value<int>? rowid}) {
    return AuthTableCompanion(
      uuid: uuid ?? this.uuid,
      email: email ?? this.email,
      lastLogin: lastLogin ?? this.lastLogin,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (lastLogin.present) {
      map['last_login'] = Variable<DateTime>(lastLogin.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AuthTableCompanion(')
          ..write('uuid: $uuid, ')
          ..write('email: $email, ')
          ..write('lastLogin: $lastLogin, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $NewsTableTable newsTable = $NewsTableTable(this);
  late final $AuthTableTable authTable = $AuthTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [newsTable, authTable];
}

typedef $$NewsTableTableInsertCompanionBuilder = NewsTableCompanion Function({
  required String uuid,
  Value<String?> source,
  Value<String?> author,
  Value<String?> title,
  Value<String?> description,
  Value<String?> url,
  Value<String?> urlToImage,
  Value<String?> publishedAt,
  Value<String?> content,
  Value<SourceModel?> sourceModel,
  Value<int> rowid,
});
typedef $$NewsTableTableUpdateCompanionBuilder = NewsTableCompanion Function({
  Value<String> uuid,
  Value<String?> source,
  Value<String?> author,
  Value<String?> title,
  Value<String?> description,
  Value<String?> url,
  Value<String?> urlToImage,
  Value<String?> publishedAt,
  Value<String?> content,
  Value<SourceModel?> sourceModel,
  Value<int> rowid,
});

class $$NewsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NewsTableTable,
    NewsTableData,
    $$NewsTableTableFilterComposer,
    $$NewsTableTableOrderingComposer,
    $$NewsTableTableProcessedTableManager,
    $$NewsTableTableInsertCompanionBuilder,
    $$NewsTableTableUpdateCompanionBuilder> {
  $$NewsTableTableTableManager(_$AppDatabase db, $NewsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$NewsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$NewsTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$NewsTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> uuid = const Value.absent(),
            Value<String?> source = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<String?> urlToImage = const Value.absent(),
            Value<String?> publishedAt = const Value.absent(),
            Value<String?> content = const Value.absent(),
            Value<SourceModel?> sourceModel = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NewsTableCompanion(
            uuid: uuid,
            source: source,
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            publishedAt: publishedAt,
            content: content,
            sourceModel: sourceModel,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String uuid,
            Value<String?> source = const Value.absent(),
            Value<String?> author = const Value.absent(),
            Value<String?> title = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> url = const Value.absent(),
            Value<String?> urlToImage = const Value.absent(),
            Value<String?> publishedAt = const Value.absent(),
            Value<String?> content = const Value.absent(),
            Value<SourceModel?> sourceModel = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NewsTableCompanion.insert(
            uuid: uuid,
            source: source,
            author: author,
            title: title,
            description: description,
            url: url,
            urlToImage: urlToImage,
            publishedAt: publishedAt,
            content: content,
            sourceModel: sourceModel,
            rowid: rowid,
          ),
        ));
}

class $$NewsTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $NewsTableTable,
    NewsTableData,
    $$NewsTableTableFilterComposer,
    $$NewsTableTableOrderingComposer,
    $$NewsTableTableProcessedTableManager,
    $$NewsTableTableInsertCompanionBuilder,
    $$NewsTableTableUpdateCompanionBuilder> {
  $$NewsTableTableProcessedTableManager(super.$state);
}

class $$NewsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $NewsTableTable> {
  $$NewsTableTableFilterComposer(super.$state);
  ColumnFilters<String> get uuid => $state.composableBuilder(
      column: $state.table.uuid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get source => $state.composableBuilder(
      column: $state.table.source,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get author => $state.composableBuilder(
      column: $state.table.author,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get urlToImage => $state.composableBuilder(
      column: $state.table.urlToImage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get publishedAt => $state.composableBuilder(
      column: $state.table.publishedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<SourceModel?, SourceModel, String>
      get sourceModel => $state.composableBuilder(
          column: $state.table.sourceModel,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$NewsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $NewsTableTable> {
  $$NewsTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uuid => $state.composableBuilder(
      column: $state.table.uuid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get source => $state.composableBuilder(
      column: $state.table.source,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get author => $state.composableBuilder(
      column: $state.table.author,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get url => $state.composableBuilder(
      column: $state.table.url,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get urlToImage => $state.composableBuilder(
      column: $state.table.urlToImage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get publishedAt => $state.composableBuilder(
      column: $state.table.publishedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get content => $state.composableBuilder(
      column: $state.table.content,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sourceModel => $state.composableBuilder(
      column: $state.table.sourceModel,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$AuthTableTableInsertCompanionBuilder = AuthTableCompanion Function({
  required String uuid,
  Value<String?> email,
  Value<DateTime?> lastLogin,
  Value<int> rowid,
});
typedef $$AuthTableTableUpdateCompanionBuilder = AuthTableCompanion Function({
  Value<String> uuid,
  Value<String?> email,
  Value<DateTime?> lastLogin,
  Value<int> rowid,
});

class $$AuthTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AuthTableTable,
    AuthTableData,
    $$AuthTableTableFilterComposer,
    $$AuthTableTableOrderingComposer,
    $$AuthTableTableProcessedTableManager,
    $$AuthTableTableInsertCompanionBuilder,
    $$AuthTableTableUpdateCompanionBuilder> {
  $$AuthTableTableTableManager(_$AppDatabase db, $AuthTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AuthTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AuthTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$AuthTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> uuid = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<DateTime?> lastLogin = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AuthTableCompanion(
            uuid: uuid,
            email: email,
            lastLogin: lastLogin,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String uuid,
            Value<String?> email = const Value.absent(),
            Value<DateTime?> lastLogin = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AuthTableCompanion.insert(
            uuid: uuid,
            email: email,
            lastLogin: lastLogin,
            rowid: rowid,
          ),
        ));
}

class $$AuthTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $AuthTableTable,
    AuthTableData,
    $$AuthTableTableFilterComposer,
    $$AuthTableTableOrderingComposer,
    $$AuthTableTableProcessedTableManager,
    $$AuthTableTableInsertCompanionBuilder,
    $$AuthTableTableUpdateCompanionBuilder> {
  $$AuthTableTableProcessedTableManager(super.$state);
}

class $$AuthTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $AuthTableTable> {
  $$AuthTableTableFilterComposer(super.$state);
  ColumnFilters<String> get uuid => $state.composableBuilder(
      column: $state.table.uuid,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get lastLogin => $state.composableBuilder(
      column: $state.table.lastLogin,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AuthTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $AuthTableTable> {
  $$AuthTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get uuid => $state.composableBuilder(
      column: $state.table.uuid,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get lastLogin => $state.composableBuilder(
      column: $state.table.lastLogin,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$NewsTableTableTableManager get newsTable =>
      $$NewsTableTableTableManager(_db, _db.newsTable);
  $$AuthTableTableTableManager get authTable =>
      $$AuthTableTableTableManager(_db, _db.authTable);
}
