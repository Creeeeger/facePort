.class public final Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService;


# static fields
.field public static final Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

.field public static final allowedPackageNamesByType:Ljava/util/Map;


# instance fields
.field public final contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->Companion:Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl$Companion;

    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT_FOR_PHONE:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    const-string v1, "com.sec.android.app.soundalive"

    const-string v2, "com.android.systemui"

    const-string v3, "com.samsung.android.app.routines"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->SOUND_CRAFT_FOR_BUDS:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;->GAME_CRAFT:Lcom/samsung/android/sdk/routines/automationservice/interfaces/AutomationService$SystemRoutineType;

    const-string v1, "com.samsung.android.game.gos"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5, v2, v3}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->allowedPackageNamesByType:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    return-void
.end method

.method public static createContentValue(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string v1, "v2IntentParam"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    return-object v1

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->toJsonString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static getParameterValues(Landroid/database/Cursor;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;
    .locals 9

    const-string v0, "intent_param"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "AutomationServiceImpl@SDK"

    const-string v0, "getParameterValues(parameter is null) - "

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-direct {p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>()V

    goto/16 :goto_5

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->Companion:Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;

    invoke-direct {v6, v3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;->parseType(Lorg/json/JSONObject;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->access$setMValueType$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;)V

    invoke-static {v6}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->access$getMValueType$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;)Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v7, v3

    :cond_2
    invoke-static {v8, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$Companion;->parseValue(Lorg/json/JSONObject;Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue$ValueType;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;->access$setValue$p(Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    new-instance v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;-><init>(Ljava/util/Map;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    iget-object v1, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->parameterValueMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "is_negative"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    int-to-float p0, p0

    iget-object v1, v2, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->parameterValueMap:Ljava/util/Map;

    new-instance v3, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues$ParameterValue;-><init>(F)V

    check-cast v1, Ljava/util/HashMap;

    const-string p0, "v2IsNegative"

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "v2IntentParam"

    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/sdk/routines/automationservice/data/ParameterValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object p0, v2

    :goto_5
    return-object p0
.end method


# virtual methods
.method public final filterSupportedTags(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 9

    const-string v0, "tag"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/routines/automationservice/internal/AutomationServiceImpl;->contentHandler:Lcom/samsung/android/sdk/routines/automationservice/interfaces/ContentHandler;

    check-cast p0, Lcom/samsung/android/sdk/routines/automationservice/internal/ContentHandlerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.samsung.android.app.routines.routineinfoprovider/core_service/tag_supported"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    :try_start_2
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    sget-object p1, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->INSTANCE:Lcom/samsung/android/sdk/routines/automationservice/internal/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "filterSupportedTags: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "AutomationServiceImpl@SDK"

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/routines/automationservice/internal/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-object v1
.end method
