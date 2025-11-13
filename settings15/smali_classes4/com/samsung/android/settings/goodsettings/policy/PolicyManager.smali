.class public Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[GS]PolicyManager"

.field private static mInstance:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;


# instance fields
.field private mLastUpdated:J

.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyLocale:Ljava/lang/String;

.field private mVersion:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;
    .locals 9

    sget-object v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mInstance:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    if-nez v0, :cond_d

    new-instance v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    sget-object v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;->V1:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;

    iput-object v1, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mVersion:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "good_settings_policy.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->initializePolicy(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_0
    const-string v1, "[GS]PolicyJSONManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_1
    move-object v2, v3

    goto/16 :goto_13

    :catch_0
    move-exception v6

    goto :goto_6

    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_c

    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw p0

    :catchall_2
    move-exception p0

    move-object v5, v2

    goto :goto_1

    :catch_4
    move-exception v6

    move-object v5, v2

    goto :goto_6

    :catchall_3
    move-exception p0

    move-object v5, v2

    goto/16 :goto_13

    :catch_5
    move-exception v6

    move-object v3, v2

    move-object v5, v3

    :goto_6
    :try_start_8
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_3

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_4
    move-exception p0

    goto :goto_9

    :catch_6
    move-exception v3

    goto :goto_8

    :cond_3
    :goto_7
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_b

    :goto_8
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v5, :cond_6

    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_c

    :goto_9
    if-eqz v5, :cond_4

    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_a
    throw p0

    :cond_5
    :goto_b
    if-eqz v5, :cond_6

    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :cond_6
    :goto_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_e
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;
    :try_end_e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_10

    :catch_8
    move-exception v3

    goto :goto_d

    :catch_9
    move-exception v4

    goto :goto_e

    :goto_d
    const-string/jumbo v4, "parsePolicy: unexpected exception occurred"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :goto_e
    const-string/jumbo v5, "parsePolicy: json data = "

    invoke-static {v5, v3, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "parsePolicy: JsonSyntaxException occurred"

    invoke-static {v1, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    move-object v4, v2

    :goto_10
    if-eqz v4, :cond_8

    iget-wide v5, v4, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicyVersion:J

    const-wide/16 v7, 0x5

    cmp-long v1, v5, v7

    if-eqz v1, :cond_7

    goto :goto_11

    :cond_7
    iget-object p0, v4, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicies:Ljava/util/ArrayList;

    iput-object p0, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    iget-object p0, v4, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;->mPolicyLocale:Ljava/lang/String;

    iput-object p0, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    goto :goto_12

    :cond_8
    :goto_11
    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->initializePolicy(Landroid/content/Context;Ljava/lang/String;)V

    :goto_12
    sput-object v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mInstance:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    goto :goto_1a

    :goto_13
    if-eqz v2, :cond_9

    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_14

    :catchall_5
    move-exception p0

    goto :goto_16

    :catch_a
    move-exception v0

    goto :goto_15

    :cond_9
    :goto_14
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_18

    :goto_15
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v5, :cond_c

    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_19

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    :goto_16
    if-eqz v5, :cond_a

    :try_start_12
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_17

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_17
    throw p0

    :cond_b
    :goto_18
    if-eqz v5, :cond_c

    :try_start_13
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    :cond_c
    :goto_19
    throw p0

    :cond_d
    :goto_1a
    sget-object p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mInstance:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;

    return-object p0
.end method


# virtual methods
.method public final getLastUpdated()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    return-wide v0
.end method

.method public final getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "home_configuration_is_enabled"

    const-string/jumbo v4, "show_samsung_account_nick_name"

    const-string v5, "home_configuration_top_level_preferences"

    const-string v6, "hide_samsung_account_email"

    const/4 v8, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_6

    iget-object v10, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v12, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda3;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    invoke-interface {v10, v12}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    if-eqz v10, :cond_5

    iget-object v12, v10, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v12, v10, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    sget-object v13, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->SKIPPING_PREFERENCE_KEY_SET:Ljava/util/HashSet;

    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    const-class v14, Lcom/google/gson/JsonArray;

    invoke-virtual {v13, v12, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gson/JsonArray;

    if-nez v13, :cond_1

    const-string/jumbo v13, "updateLocale: json array is empty. dump = "

    const-string v14, "GoodSettingsTopLevelPreferenceParser"

    invoke-static {v13, v12, v14}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v11

    goto :goto_1

    :cond_1
    sget-wide v14, Lcom/samsung/android/settings/goodsettings/GoodSettingsContract;->FLAGS_PHASE_1:J

    invoke-static {v1, v11, v14, v15}, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->getTopLevelPreferences(Landroid/content/Context;Ljava/util/ArrayList;J)Lcom/google/gson/JsonArray;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->convertToMap(Lcom/google/gson/JsonArray;)Ljava/util/Map;

    move-result-object v12

    iget-object v14, v13, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/gson/JsonElement;

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v15

    iget-object v11, v15, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    const-string v7, "key"

    invoke-virtual {v11, v7}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v15, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    move-object v11, v12

    check-cast v11, Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonObject;

    const-string/jumbo v11, "title"

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v11, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    iput-object v9, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    new-instance v9, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    iget-object v11, v10, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mKey:Ljava/lang/String;

    iget-object v10, v10, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    invoke-direct {v9, v11, v10, v7}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->setPolicy(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)V

    goto :goto_3

    :cond_5
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updatePolicyLocale: policy or policy.value is empty. policy = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "[GS]PolicyManager"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    iget-object v7, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v9, v8, v2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "Boolean"

    const/4 v10, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x3

    goto :goto_4

    :sswitch_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x2

    :goto_4
    move v10, v2

    goto :goto_5

    :sswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    move v10, v8

    goto :goto_5

    :sswitch_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :goto_5
    packed-switch v10, :pswitch_data_0

    const/4 v11, 0x0

    goto :goto_6

    :pswitch_0
    new-instance v11, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v3, v9, v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_1
    new-instance v11, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v4, v9, v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    sget-wide v2, Lcom/samsung/android/settings/goodsettings/GoodSettingsContract;->FLAGS_PHASE_1:J

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/samsung/android/settings/goodsettings/GoodSettingsTopLevelPreferenceParser;->getTopLevelPreferences(Landroid/content/Context;Ljava/util/ArrayList;J)Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "String"

    invoke-direct {v0, v5, v2, v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v0

    goto :goto_6

    :pswitch_3
    new-instance v11, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v6, v9, v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v7, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x773be7b8 -> :sswitch_3
        -0x24135796 -> :sswitch_2
        0x1f4e528e -> :sswitch_1
        0x20314775 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final initializePolicy(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p2, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyJSONManager;->writeJson(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyData;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    return-void
.end method

.method public final isEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "home_configuration_is_enabled"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->getPolicy(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mType:Ljava/lang/String;

    const-string v0, "Boolean"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isSupportGoodSettingsV1()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mVersion:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;

    sget-object v0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;->V1:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setPolicy(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;

    iget-object v0, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicyLocale:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mPolicies:Ljava/util/ArrayList;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/settings/goodsettings/policy/PolicyData;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Lcom/samsung/android/settings/goodsettings/policy/PolicyJSONManager;->writeJson(Landroid/content/Context;Lcom/samsung/android/settings/goodsettings/policy/PolicyData;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mLastUpdated:J

    return-void
.end method

.method public final setSupportGoodSettingsVersion(Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/goodsettings/policy/PolicyManager;->mVersion:Lcom/samsung/android/settings/goodsettings/policy/PolicyManager$Version;

    return-void
.end method
