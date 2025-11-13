.class public final Landroidx/datastore/preferences/core/PreferencesSerializer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/datastore/core/okio/OkioSerializer;


# static fields
.field public static final INSTANCE:Landroidx/datastore/preferences/core/PreferencesSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/core/PreferencesSerializer;

    invoke-direct {v0}, Landroidx/datastore/preferences/core/PreferencesSerializer;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/core/PreferencesSerializer;->INSTANCE:Landroidx/datastore/preferences/core/PreferencesSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final readFrom(Lokio/RealBufferedSource;)Landroidx/datastore/preferences/core/MutablePreferences;
    .locals 7

    sget-object p0, Landroidx/datastore/preferences/PreferencesMapCompat;->Companion:Landroidx/datastore/preferences/PreferencesMapCompat$Companion;

    new-instance v0, Lokio/RealBufferedSource$inputStream$1;

    invoke-direct {v0, p1}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v0}, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;->parseFrom(Ljava/io/InputStream;)Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;

    move-result-object p0
    :try_end_0
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    new-array v0, p1, [Landroidx/datastore/preferences/core/Preferences$Pair;

    new-instance v1, Landroidx/datastore/preferences/core/MutablePreferences;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3, v2}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/core/Preferences$Pair;

    invoke-virtual {v1}, Landroidx/datastore/preferences/core/MutablePreferences;->checkNotFrozen$datastore_preferences_core()V

    array-length v4, v0

    :goto_0
    if-ge p1, v4, :cond_0

    aget-object v5, v0, p1

    iget-object v6, v5, Landroidx/datastore/preferences/core/Preferences$Pair;->key:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v5, v5, Landroidx/datastore/preferences/core/Preferences$Pair;->value:Ljava/lang/Object;

    invoke-virtual {v1, v6, v5}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;->getPreferencesMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    sget-object v4, Landroidx/datastore/preferences/core/PreferencesSerializer;->INSTANCE:Landroidx/datastore/preferences/core/PreferencesSerializer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getValueCase()Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_2

    :cond_1
    sget-object v5, Landroidx/datastore/preferences/core/PreferencesSerializer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    :goto_2
    const/4 v5, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Landroidx/datastore/core/CorruptionException;

    const-string p1, "Value not set."

    invoke-direct {p0, p1, v2, v5, v2}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :pswitch_2
    new-instance v4, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v4, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getBytes()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Landroidx/datastore/preferences/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    goto :goto_3

    :cond_2
    new-array v5, v0, [B

    invoke-virtual {p1, v0, v5}, Landroidx/datastore/preferences/protobuf/ByteString;->copyToInternal(I[B)V

    move-object p1, v5

    :goto_3
    invoke-virtual {v1, v4, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    new-instance v4, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v4, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getStringSet()Landroidx/datastore/preferences/PreferencesProto$StringSet;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->getStringsList()Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    new-instance v4, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v4, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    new-instance v4, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v4, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v4, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v4, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getInteger()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v4, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v4, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v4, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v4, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v4, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v4, v0}, Landroidx/datastore/preferences/core/Preferences$Key;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/datastore/preferences/PreferencesProto$Value;->getBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    new-instance p0, Landroidx/datastore/core/CorruptionException;

    const-string p1, "Value case is null."

    invoke-direct {p0, p1, v2, v5, v2}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_3
    new-instance p0, Landroidx/datastore/preferences/core/MutablePreferences;

    invoke-virtual {v1}, Landroidx/datastore/preferences/core/MutablePreferences;->asMap()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0, v3}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/Map;Z)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/datastore/core/CorruptionException;

    const-string v0, "Unable to parse preferences proto."

    invoke-direct {p1, v0, p0}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final writeTo(Ljava/lang/Object;Lokio/RealBufferedSink;)Lkotlin/Unit;
    .locals 5

    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    invoke-virtual {p1}, Landroidx/datastore/preferences/core/Preferences;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$PreferenceMap$Builder;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v1, Landroidx/datastore/preferences/core/Preferences$Key;->name:Ljava/lang/String;

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$500(Landroidx/datastore/preferences/PreferencesProto$Value;Z)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto/16 :goto_1

    :cond_0
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$700(Landroidx/datastore/preferences/PreferencesProto$Value;F)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto/16 :goto_1

    :cond_1
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_2

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, v3, v4}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1900(Landroidx/datastore/preferences/PreferencesProto$Value;D)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto/16 :goto_1

    :cond_2
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$900(Landroidx/datastore/preferences/PreferencesProto$Value;I)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto/16 :goto_1

    :cond_3
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v0, v3, v4}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1100(Landroidx/datastore/preferences/PreferencesProto$Value;J)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto :goto_1

    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1300(Landroidx/datastore/preferences/PreferencesProto$Value;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto :goto_1

    :cond_5
    instance-of v2, v0, Ljava/util/Set;

    if-eqz v2, :cond_6

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    move-result-object v2

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$StringSet$Builder;

    move-result-object v3

    check-cast v0, Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v4, v3, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v4, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v4, v0}, Landroidx/datastore/preferences/PreferencesProto$StringSet;->access$2700(Landroidx/datastore/preferences/PreferencesProto$StringSet;Ljava/lang/Iterable;)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$StringSet;

    invoke-static {v0, v3}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$1600(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/PreferencesProto$StringSet;)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto :goto_1

    :cond_6
    instance-of v2, v0, [B

    if-eqz v2, :cond_7

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->newBuilder()Landroidx/datastore/preferences/PreferencesProto$Value$Builder;

    move-result-object v2

    check-cast v0, [B

    sget-object v3, Landroidx/datastore/preferences/protobuf/ByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v4, v3, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom(II[B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v3, Landroidx/datastore/preferences/PreferencesProto$Value;

    invoke-static {v3, v0}, Landroidx/datastore/preferences/PreferencesProto$Value;->access$2100(Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/protobuf/ByteString;)V

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v2, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;

    invoke-static {v2}, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;->access$100(Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreferencesSerializer does not support type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;->build()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/PreferencesProto$PreferenceMap;

    new-instance p1, Lokio/RealBufferedSink$outputStream$1;

    invoke-direct {p1, p2}, Lokio/RealBufferedSink$outputStream$1;-><init>(Lokio/RealBufferedSink;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result p2

    sget-object v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->logger:Ljava/util/logging/Logger;

    const/16 v0, 0x1000

    if-le p2, v0, :cond_9

    move p2, v0

    :cond_9
    new-instance v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;

    invoke-direct {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;-><init>(Ljava/io/OutputStream;I)V

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->writeTo(Landroidx/datastore/preferences/protobuf/CodedOutputStream;)V

    iget p0, v0, Landroidx/datastore/preferences/protobuf/CodedOutputStream$AbstractBufferedEncoder;->position:I

    if-lez p0, :cond_a

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
