.class public final Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field public final APP_SHORTCUTS_COMMAND_KEY_LIST:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 16

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const-string v14, "/Settings/General/AppShortcutsCommandS"

    const-string v15, "/Settings/General/AppShortcutsCommandZ"

    const-string v1, "/Settings/General/AppShortcutsCommandA"

    const-string v2, "/Settings/General/AppShortcutsCommandB"

    const-string v3, "/Settings/General/AppShortcutsCommandC"

    const-string v4, "/Settings/General/AppShortcutsCommandD"

    const-string v5, "/Settings/General/AppShortcutsCommandE"

    const-string v6, "/Settings/General/AppShortcutsCommandF"

    const-string v7, "/Settings/General/AppShortcutsCommandH"

    const-string v8, "/Settings/General/AppShortcutsCommandI"

    const-string v9, "/Settings/General/AppShortcutsCommandJ"

    const-string v10, "/Settings/General/AppShortcutsCommandK"

    const-string v11, "/Settings/General/AppShortcutsCommandM"

    const-string v12, "/Settings/General/AppShortcutsCommandP"

    const-string v13, "/Settings/General/AppShortcutsCommandR"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->APP_SHORTCUTS_COMMAND_KEY_LIST:Ljava/util/List;

    return-void
.end method

.method public static getAppLanguageInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "GeneralItem"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "PackageManager is null"

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-class v8, Landroid/app/LocaleManager;

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/LocaleManager;

    if-nez v8, :cond_2

    move-object v8, v2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-virtual {v8, v7}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "package name : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not correct. "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v7, v2

    :goto_3
    if-eqz v7, :cond_1

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo p0, "package"

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "locale"

    invoke-virtual {v0, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSONException(getAppLanguageInfo) = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    return-object v2
.end method

.method public static setAppDefaultLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Landroid/app/LocaleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/LocaleManager;

    :try_start_0
    invoke-static {p2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "package name : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not correct. "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GeneralItem"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setAppLanguageInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "GeneralItem"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "locale"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "PackageManager is null"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto/16 :goto_2

    :cond_0
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    :catch_2
    :try_start_2
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setAppDefaultLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Exception : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "JSONException(setAppLanguageInfo) = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void
.end method

.method public static setKeyCustomization(ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->setKeyCustomizationInfo(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 16

    move-object/from16 v0, p3

    const-string v1, "GeneralItem"

    const-string/jumbo v2, "unknown key : "

    const-string v3, "[KEY_GENERAL_ENABLED_INPUT_METHODS] getValue subtype : "

    const-string v4, "[KEY_GENERAL_ENABLED_INPUT_METHODS] getValue defaultKeyboard : "

    const-string v5, "[KEY_GENERAL_ENABLED_INPUT_METHODS] getValue enabledInputMethods : "

    new-instance v6, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v6, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x7

    const/4 v13, 0x1

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v9, "/Settings/General/MouseSecondaryKey"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0xd

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_11

    :sswitch_1
    const-string v9, "/Settings/General/AdditionalKey2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "/Settings/General/AdditionalKey1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "/Settings/General/Autofill"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v11

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "/Settings/General/AutoTime"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v12

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "/Settings/General/RedirectVibration"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v9, "/Settings/General/PrimaryMouseKey"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v9, "/Settings/General/PointerSpeed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v9, "/Settings/General/PointerColor"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string v9, "/Settings/General/AutoTimeZone"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v9, "/Settings/General/CredentialServices"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x5

    goto/16 :goto_1

    :sswitch_b
    const-string v9, "/Settings/General/EnhancePointerPrecision"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v9, "/Settings/General/ShowOnScreenKeyboard"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    goto/16 :goto_1

    :sswitch_d
    const-string v9, "/Settings/General/PointerSize"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x14

    goto/16 :goto_1

    :sswitch_e
    const-string v9, "/Settings/General/AppShortcutsCommandZ"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x24

    goto/16 :goto_1

    :sswitch_f
    const-string v9, "/Settings/General/AppShortcutsCommandS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x23

    goto/16 :goto_1

    :sswitch_10
    const-string v9, "/Settings/General/AppShortcutsCommandR"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x22

    goto/16 :goto_1

    :sswitch_11
    const-string v9, "/Settings/General/AppShortcutsCommandP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x21

    goto/16 :goto_1

    :sswitch_12
    const-string v9, "/Settings/General/AppShortcutsCommandM"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x20

    goto/16 :goto_1

    :sswitch_13
    const-string v9, "/Settings/General/AppShortcutsCommandK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x1f

    goto/16 :goto_1

    :sswitch_14
    const-string v9, "/Settings/General/AppShortcutsCommandJ"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x1e

    goto/16 :goto_1

    :sswitch_15
    const-string v9, "/Settings/General/AppShortcutsCommandI"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x1d

    goto/16 :goto_1

    :sswitch_16
    const-string v9, "/Settings/General/AppShortcutsCommandH"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x1c

    goto/16 :goto_1

    :sswitch_17
    const-string v9, "/Settings/General/AppShortcutsCommandF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x1b

    goto/16 :goto_1

    :sswitch_18
    const-string v9, "/Settings/General/AppShortcutsCommandE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x1a

    goto/16 :goto_1

    :sswitch_19
    const-string v9, "/Settings/General/AppShortcutsCommandD"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v9, "/Settings/General/AppShortcutsCommandC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x18

    goto/16 :goto_1

    :sswitch_1b
    const-string v9, "/Settings/General/AppShortcutsCommandB"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x17

    goto/16 :goto_1

    :sswitch_1c
    const-string v9, "/Settings/General/AppShortcutsCommandA"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x16

    goto/16 :goto_1

    :sswitch_1d
    const-string v9, "/Settings/General/WheelScrollingSpeed"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x12

    goto/16 :goto_1

    :sswitch_1e
    const-string v9, "/Settings/General/ChangeLanguageShortcut"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v13

    goto :goto_1

    :sswitch_1f
    const-string v9, "/Settings/General/EnabledInputMethods"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x26

    goto :goto_1

    :sswitch_20
    const-string v9, "/Settings/General/AppLanguage"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x25

    goto :goto_1

    :sswitch_21
    const-string v9, "/Settings/General/MouseMiddleKey"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0xe

    goto :goto_1

    :sswitch_22
    const-string v9, "/Settings/General/LocationTimeZoneDetection"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0xa

    goto :goto_1

    :sswitch_23
    const-string v9, "/Settings/General/ShowKeyboardButton"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v8

    goto :goto_1

    :sswitch_24
    const-string v9, "/Settings/General/CredentialServicePrimary"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    goto :goto_1

    :sswitch_25
    const-string v9, "/Settings/General/TimeFormat"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x6

    goto :goto_1

    :sswitch_26
    const-string v9, "/Settings/General/SystemLocale"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_0

    const/16 v9, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v9, -0x1

    :goto_1
    const-string v14, "dummy"

    const-string v15, "appComponent"

    packed-switch v9, :pswitch_data_0

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_0
    const-string v0, "enabled_input_methods"

    invoke-static {v7, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string v2, "default_input_method"

    invoke-static {v7, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v2, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    :cond_1
    const-string v9, "defaultKeyboard"

    invoke-virtual {v6, v2, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "selected_input_method_subtype"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "selectedInputMethodSubtype"

    invoke-virtual {v6, v7, v9}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->getAppLanguageInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6, v0, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_12

    :cond_2
    const-string v0, "[KEY_GENERAL_APP_LANGUAGE] Data is null"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_2
    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->APP_SHORTCUTS_COMMAND_KEY_LIST:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v2, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->SETTINGS_LIST:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->DEFAULT_SETTINGS_LIST:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_3
    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v3, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->DEFAULT_SETTINGS_LIST:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030118

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string/jumbo v2, "mouse_pointer_color"

    aget v3, v0, v8

    invoke-static {v7, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    aget v0, v0, v8

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move v13, v8

    :goto_2
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_4
    const-string/jumbo v0, "mouse_pointer_size_step"

    invoke-static {v7, v0, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v13, v0, :cond_5

    goto :goto_3

    :cond_5
    move v13, v8

    :goto_3
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_5
    const-string v0, "enhance_pointer_precision"

    invoke-static {v7, v0, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v13, v0, :cond_6

    goto :goto_4

    :cond_6
    move v13, v8

    :goto_4
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_6
    const-string/jumbo v0, "mouse_scrolling_speed"

    invoke-static {v7, v0, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v13, v0, :cond_7

    goto :goto_5

    :cond_7
    move v13, v8

    :goto_5
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_7
    const-string/jumbo v0, "pointer_speed"

    invoke-static {v7, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    move v13, v8

    :goto_6
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_8
    const-string/jumbo v0, "mouse_additional_2_option"

    invoke-static {v7, v0, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string/jumbo v2, "mouse_additional_2_app"

    invoke-static {v7, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v6, v2, v15}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    if-ne v10, v0, :cond_a

    goto :goto_7

    :cond_a
    move v13, v8

    :goto_7
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_9
    const-string/jumbo v0, "mouse_additional_1_option"

    invoke-static {v7, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string/jumbo v2, "mouse_additional_1_app"

    invoke-static {v7, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v6, v2, v15}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    if-ne v12, v0, :cond_c

    goto :goto_8

    :cond_c
    move v13, v8

    :goto_8
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_a
    const-string/jumbo v0, "mouse_middle_button_option"

    invoke-static {v7, v0, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string/jumbo v2, "mouse_middle_button_app"

    invoke-static {v7, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v6, v2, v15}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    if-ne v11, v0, :cond_e

    goto :goto_9

    :cond_e
    move v13, v8

    :goto_9
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_b
    const-string/jumbo v0, "mouse_secondary_button_option"

    invoke-static {v7, v0, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string/jumbo v2, "mouse_secondary_button_app"

    invoke-static {v7, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v6, v2, v15}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    if-ne v13, v0, :cond_10

    goto :goto_a

    :cond_10
    move v13, v8

    :goto_a
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_c
    const-string/jumbo v0, "primary_mouse_button_option"

    invoke-static {v7, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_11

    goto :goto_b

    :cond_11
    move v13, v8

    :goto_b
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_d
    const-string/jumbo v0, "system_locales"

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v6, v14, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_12

    :cond_12
    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-virtual {v6, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_e
    const-string v0, "location_time_zone_detection_enabled"

    invoke-static {v7, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_13

    goto :goto_c

    :cond_13
    move v13, v8

    :goto_c
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_f
    const-string/jumbo v0, "vibrate_input_devices"

    invoke-static {v7, v0, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-nez v0, :cond_14

    goto :goto_d

    :cond_14
    move v13, v8

    :goto_d
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_10
    const-string v0, "auto_time_zone"

    invoke-static {v7, v0, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v13, v0, :cond_15

    goto :goto_e

    :cond_15
    move v13, v8

    :goto_e
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_11
    const-string v0, "auto_time"

    invoke-static {v7, v0, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v13, v0, :cond_16

    goto :goto_f

    :cond_16
    move v13, v8

    :goto_f
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_12
    const-string/jumbo v0, "time_12_24"

    invoke-static {v7, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_12

    :pswitch_13
    const-string v0, "credential_service"

    invoke-static {v7, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v6, v14, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_12

    :cond_17
    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto/16 :goto_12

    :pswitch_14
    const-string v0, "credential_service_primary"

    invoke-static {v7, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v6, v14, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_12

    :cond_18
    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    const-string v2, "com.samsung.android.samsungpassautofill/com.samsung.android.samsungpassautofill.CredentialManagerService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_12

    :pswitch_15
    const-string v0, "autofill_service"

    invoke-static {v7, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v6, v14, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_12

    :cond_19
    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_12

    :pswitch_16
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    xor-int/2addr v0, v13

    const-string/jumbo v2, "show_ime_with_hard_keyboard"

    invoke-static {v7, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    if-ne v0, v2, :cond_1a

    goto :goto_10

    :cond_1a
    move v13, v8

    :goto_10
    invoke-virtual {v6, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_12

    :pswitch_17
    const-string v0, "enable_language_change_combination_key"

    invoke-static {v7, v0, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_12

    :pswitch_18
    const-string/jumbo v0, "show_keyboard_button"

    invoke-static {v7, v0, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e107c13 -> :sswitch_26
        -0x74f84f58 -> :sswitch_25
        -0x6ebf45b8 -> :sswitch_24
        -0x6cbf5626 -> :sswitch_23
        -0x6928e4cd -> :sswitch_22
        -0x65582517 -> :sswitch_21
        -0x5f3cd66b -> :sswitch_20
        -0x5448389b -> :sswitch_1f
        -0x486aaaee -> :sswitch_1e
        -0x3d0f6777 -> :sswitch_1d
        -0x523033a -> :sswitch_1c
        -0x5230339 -> :sswitch_1b
        -0x5230338 -> :sswitch_1a
        -0x5230337 -> :sswitch_19
        -0x5230336 -> :sswitch_18
        -0x5230335 -> :sswitch_17
        -0x5230333 -> :sswitch_16
        -0x5230332 -> :sswitch_15
        -0x5230331 -> :sswitch_14
        -0x5230330 -> :sswitch_13
        -0x523032e -> :sswitch_12
        -0x523032b -> :sswitch_11
        -0x5230329 -> :sswitch_10
        -0x5230328 -> :sswitch_f
        -0x5230321 -> :sswitch_e
        0x22f94da -> :sswitch_d
        0x9fd8bd3 -> :sswitch_c
        0x16f3848b -> :sswitch_b
        0x2a33d959 -> :sswitch_a
        0x3104956c -> :sswitch_9
        0x42e415aa -> :sswitch_8
        0x43c5e68e -> :sswitch_7
        0x51584698 -> :sswitch_6
        0x59a7ee12 -> :sswitch_5
        0x63b9cda0 -> :sswitch_4
        0x63c1fc36 -> :sswitch_3
        0x73cb53fd -> :sswitch_2
        0x73cb53fe -> :sswitch_1
        0x79d94d8c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, ":"

    const-string/jumbo v4, "time_12_24"

    const-string v5, ","

    const-string/jumbo v6, "sr-RS"

    const-string v7, "GeneralItem"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result v12

    new-instance v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v13, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object v14, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v14, "/Settings/General/MouseSecondaryKey"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0xd

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :sswitch_1
    const-string v14, "/Settings/General/AdditionalKey2"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v14, "/Settings/General/AdditionalKey1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v14, "/Settings/General/Autofill"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v14, "/Settings/General/AutoTime"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v14, "/Settings/General/RedirectVibration"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v14, "/Settings/General/PrimaryMouseKey"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v14, "/Settings/General/PointerSpeed"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v14, "/Settings/General/PointerColor"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string v14, "/Settings/General/AutoTimeZone"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v14, "/Settings/General/CredentialServices"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x5

    goto/16 :goto_1

    :sswitch_b
    const-string v14, "/Settings/General/EnhancePointerPrecision"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x13

    goto/16 :goto_1

    :sswitch_c
    const-string v14, "/Settings/General/ShowOnScreenKeyboard"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x2

    goto/16 :goto_1

    :sswitch_d
    const-string v14, "/Settings/General/PointerSize"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x14

    goto/16 :goto_1

    :sswitch_e
    const-string v14, "/Settings/General/AppShortcutsCommandZ"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x24

    goto/16 :goto_1

    :sswitch_f
    const-string v14, "/Settings/General/AppShortcutsCommandS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x23

    goto/16 :goto_1

    :sswitch_10
    const-string v14, "/Settings/General/AppShortcutsCommandR"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x22

    goto/16 :goto_1

    :sswitch_11
    const-string v14, "/Settings/General/AppShortcutsCommandP"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x21

    goto/16 :goto_1

    :sswitch_12
    const-string v14, "/Settings/General/AppShortcutsCommandM"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x20

    goto/16 :goto_1

    :sswitch_13
    const-string v14, "/Settings/General/AppShortcutsCommandK"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x1f

    goto/16 :goto_1

    :sswitch_14
    const-string v14, "/Settings/General/AppShortcutsCommandJ"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x1e

    goto/16 :goto_1

    :sswitch_15
    const-string v14, "/Settings/General/AppShortcutsCommandI"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x1d

    goto/16 :goto_1

    :sswitch_16
    const-string v14, "/Settings/General/AppShortcutsCommandH"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x1c

    goto/16 :goto_1

    :sswitch_17
    const-string v14, "/Settings/General/AppShortcutsCommandF"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x1b

    goto/16 :goto_1

    :sswitch_18
    const-string v14, "/Settings/General/AppShortcutsCommandE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x1a

    goto/16 :goto_1

    :sswitch_19
    const-string v14, "/Settings/General/AppShortcutsCommandD"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v14, "/Settings/General/AppShortcutsCommandC"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x18

    goto/16 :goto_1

    :sswitch_1b
    const-string v14, "/Settings/General/AppShortcutsCommandB"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x17

    goto/16 :goto_1

    :sswitch_1c
    const-string v14, "/Settings/General/AppShortcutsCommandA"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x16

    goto :goto_1

    :sswitch_1d
    const-string v14, "/Settings/General/WheelScrollingSpeed"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x12

    goto :goto_1

    :sswitch_1e
    const-string v14, "/Settings/General/ChangeLanguageShortcut"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :sswitch_1f
    const-string v14, "/Settings/General/AppLanguage"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0x25

    goto :goto_1

    :sswitch_20
    const-string v14, "/Settings/General/MouseMiddleKey"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0xe

    goto :goto_1

    :sswitch_21
    const-string v14, "/Settings/General/LocationTimeZoneDetection"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v14, 0xa

    goto :goto_1

    :sswitch_22
    const-string v14, "/Settings/General/ShowKeyboardButton"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    goto :goto_1

    :sswitch_23
    const-string v14, "/Settings/General/CredentialServicePrimary"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x4

    goto :goto_1

    :sswitch_24
    const-string v14, "/Settings/General/TimeFormat"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x6

    goto :goto_1

    :sswitch_25
    const-string v14, "/Settings/General/SystemLocale"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v14, :cond_0

    const/16 v14, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v14, -0x1

    :goto_1
    sget-object v10, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    const-string v9, "/"

    const-string v15, "dummy"

    move-object/from16 v16, v9

    const-string v9, "appComponent"

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setAppLanguageInfo(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v7, v11}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_1
    if-nez v12, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->APP_SHORTCUTS_COMMAND_KEY_LIST:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/inputmethod/AppShortcutsConstants;->SETTINGS_LIST:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v8, v0, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    :pswitch_2
    const-string/jumbo v0, "mouse_pointer_color"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_3
    const-string/jumbo v0, "mouse_pointer_size_step"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_4
    const-string v0, "enhance_pointer_precision"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_5
    const-string/jumbo v0, "mouse_scrolling_speed"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_6
    const-string/jumbo v0, "pointer_speed"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "touchpad_pointer_speed"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_7
    const-string/jumbo v0, "mouse_additional_2_option"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mouse_additional_2_app"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v1, 0xd

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setKeyCustomization(ILjava/lang/String;)V

    goto/16 :goto_e

    :pswitch_8
    const-string/jumbo v0, "mouse_additional_1_option"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mouse_additional_1_app"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setKeyCustomization(ILjava/lang/String;)V

    goto/16 :goto_e

    :pswitch_9
    const-string/jumbo v0, "mouse_middle_button_option"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mouse_middle_button_app"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setKeyCustomization(ILjava/lang/String;)V

    goto/16 :goto_e

    :pswitch_a
    const-string/jumbo v0, "mouse_secondary_button_option"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v2, v9}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mouse_secondary_button_app"

    invoke-static {v8, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;->setKeyCustomization(ILjava/lang/String;)V

    goto/16 :goto_e

    :pswitch_b
    const-string/jumbo v0, "primary_mouse_button_option"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_c
    const-string/jumbo v0, "system_locales"

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "sr-Latn-RS"

    invoke-virtual {v11, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_4

    aget-object v6, v1, v3

    aget-object v8, v0, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    if-gtz v5, :cond_5

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/util/Locale;

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    goto/16 :goto_e

    :cond_9
    :goto_6
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_SKIP:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    goto/16 :goto_e

    :pswitch_d
    const-string v0, "location_time_zone_detection_enabled"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_e
    const-string/jumbo v0, "vibrate_input_devices"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_f
    const-string v0, "auto_time_zone"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_10
    const-string v0, "auto_time"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :pswitch_11
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v10, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_e

    :cond_a
    invoke-static {v8, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "24"

    if-eqz v2, :cond_c

    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-ne v11, v3, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    :goto_7
    xor-int/2addr v1, v2

    if-nez v1, :cond_d

    goto/16 :goto_e

    :cond_c
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_e

    :cond_d
    invoke-static {v8, v4, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-ne v11, v3, :cond_e

    const/4 v15, 0x1

    goto :goto_8

    :cond_e
    const/4 v15, 0x0

    :goto_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v1, v2, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_e

    :pswitch_12
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_b

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_12

    aget-object v6, v2, v5

    move-object/from16 v9, v16

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_10

    iput-object v10, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_a

    :cond_10
    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v16, v9

    goto :goto_9

    :cond_12
    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, "credential_service"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    :cond_13
    :goto_b
    iput-object v10, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_e

    :pswitch_13
    move-object/from16 v9, v16

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "credential_service_primary"

    if-eqz v1, :cond_14

    :try_start_3
    const-string v0, ""

    invoke-static {v8, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    iput-object v10, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_e

    :cond_15
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {v8, v2, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    :pswitch_14
    move-object/from16 v9, v16

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    iput-object v10, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto/16 :goto_e

    :cond_16
    invoke-static {v15, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "autofill_service"

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v8, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    :cond_17
    invoke-virtual {v11, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_e

    :cond_18
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {v8, v2, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_e

    :pswitch_15
    const-string/jumbo v0, "show_ime_with_hard_keyboard"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :pswitch_16
    const-string v0, "enable_language_change_combination_key"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e

    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "task_bar"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_19

    move v15, v3

    goto :goto_c

    :cond_19
    const/4 v15, 0x0

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1a

    if-nez v15, :cond_1a

    iput-object v10, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object v0, v13, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    goto :goto_e

    :cond_1a
    const-string/jumbo v0, "show_keyboard_button"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_e
    invoke-virtual {v13}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7e107c13 -> :sswitch_25
        -0x74f84f58 -> :sswitch_24
        -0x6ebf45b8 -> :sswitch_23
        -0x6cbf5626 -> :sswitch_22
        -0x6928e4cd -> :sswitch_21
        -0x65582517 -> :sswitch_20
        -0x5f3cd66b -> :sswitch_1f
        -0x486aaaee -> :sswitch_1e
        -0x3d0f6777 -> :sswitch_1d
        -0x523033a -> :sswitch_1c
        -0x5230339 -> :sswitch_1b
        -0x5230338 -> :sswitch_1a
        -0x5230337 -> :sswitch_19
        -0x5230336 -> :sswitch_18
        -0x5230335 -> :sswitch_17
        -0x5230333 -> :sswitch_16
        -0x5230332 -> :sswitch_15
        -0x5230331 -> :sswitch_14
        -0x5230330 -> :sswitch_13
        -0x523032e -> :sswitch_12
        -0x523032b -> :sswitch_11
        -0x5230329 -> :sswitch_10
        -0x5230328 -> :sswitch_f
        -0x5230321 -> :sswitch_e
        0x22f94da -> :sswitch_d
        0x9fd8bd3 -> :sswitch_c
        0x16f3848b -> :sswitch_b
        0x2a33d959 -> :sswitch_a
        0x3104956c -> :sswitch_9
        0x42e415aa -> :sswitch_8
        0x43c5e68e -> :sswitch_7
        0x51584698 -> :sswitch_6
        0x59a7ee12 -> :sswitch_5
        0x63b9cda0 -> :sswitch_4
        0x63c1fc36 -> :sswitch_3
        0x73cb53fd -> :sswitch_2
        0x73cb53fe -> :sswitch_1
        0x79d94d8c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
