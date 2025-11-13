.class public final Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;


# instance fields
.field public final mAllApplication:Z

.field public final mAppNameComparator:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;

.field public final mContext:Landroid/content/Context;

.field public final mEnableSet:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)V

    iput-object v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAppNameComparator:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const-string v1, "edge_lighting_settings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "version"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "all_application"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    const/4 v4, 0x0

    const v5, -0xb37941

    if-nez v3, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f12001c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_1
    move-object v4, v3

    goto/16 :goto_11

    :catch_0
    move-exception v7

    goto :goto_6

    :cond_0
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_1
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
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
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_c

    :goto_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw p0

    :catchall_2
    move-exception p0

    move-object v6, v4

    goto :goto_1

    :catch_4
    move-exception v7

    move-object v6, v4

    goto :goto_6

    :catchall_3
    move-exception p0

    move-object v6, v4

    goto/16 :goto_11

    :catch_5
    move-exception v7

    move-object v3, v4

    move-object v6, v3

    :goto_6
    :try_start_8
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v3, :cond_2

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_4
    move-exception p0

    goto :goto_9

    :catch_6
    move-exception v3

    goto :goto_8

    :cond_2
    :goto_7
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_b

    :goto_8
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v6, :cond_5

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_c

    :goto_9
    if-eqz v6, :cond_3

    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_a

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_a
    throw p0

    :cond_4
    :goto_b
    if-eqz v6, :cond_5

    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    :cond_5
    :goto_c
    :try_start_e
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "edge_lighting_default_type"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_6

    move v1, v0

    goto :goto_d

    :cond_6
    move v1, v2

    :goto_d
    iput-boolean v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    if-nez v1, :cond_a

    invoke-static {p1, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_12

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    iget-boolean v6, v6, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppInfoSupportingEdgeLighting(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v8, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    invoke-direct {v8, v7, v5}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_9

    :try_start_f
    invoke-virtual {v6, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_8
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_f

    :catch_8
    move-object v8, v4

    :goto_f
    if-eqz v8, :cond_8

    :try_start_10
    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_8
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catch_9
    move-exception p0

    goto :goto_10

    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->writeAppNameList(Ljava/util/List;)V

    goto/16 :goto_1a

    :cond_a
    new-instance v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;I)V

    new-array p0, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_1a

    :goto_10
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1a

    :goto_11
    if-eqz v4, :cond_b

    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_12

    :catchall_5
    move-exception p0

    goto :goto_14

    :catch_a
    move-exception p1

    goto :goto_13

    :cond_b
    :goto_12
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_16

    :goto_13
    :try_start_12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v6, :cond_e

    :try_start_13
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_17

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    :goto_14
    if-eqz v6, :cond_c

    :try_start_14
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_15

    :catch_c
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_15
    throw p0

    :cond_d
    :goto_16
    if-eqz v6, :cond_e

    :try_start_15
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    :cond_e
    :goto_17
    throw p0

    :cond_f
    const-string v3, "enable_list"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_12

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v8, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    invoke-direct {v8, v6, v5}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    :try_start_16
    invoke-virtual {v7, v6, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_16} :catch_d

    goto :goto_19

    :catch_d
    move-object v8, v4

    :goto_19
    if-eqz v8, :cond_10

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_10
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_11
    invoke-virtual {p0, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->writeAppNameList(Ljava/util/List;)V

    :cond_12
    :goto_1a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initializeSettingValue(Landroid/content/ContentResolver;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_13

    new-instance p0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "forUpdatePolicy"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_13
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/Utils;->getEffectEnglishName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "edgelighting_pref"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "36105"

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/Utils;->getColorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "36106"

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "edge_lighting_transparency"

    const/4 v3, -0x2

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "36107"

    invoke-interface {v1, v4, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "edge_lighting_thickness"

    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "36108"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_17
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final removeBlockListInEnabledEdgeLightingList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string p2, "edge_lighting_settings"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "version"

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "all_application"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string p2, "enable_list"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final replaceSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-string v0, "edge_lighting_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "update_package_name"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "update_package_enable"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "replaceSilentInstalledPackage : "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", packageName = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "EdgeLightingSettingManager"

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v7, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setEnablePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setDisablePackage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "silent_remove_list"

    const-string/jumbo p1, "silent_add_list"

    if-eqz v7, :cond_2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {v0, p1, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p0, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {v0, p0, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {v0, p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    :cond_3
    :goto_1
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDisablePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "edge_lighting_settings"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "enable_list"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;Z)V

    return-void
.end method

.method public final setEnablePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v1, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    const v2, -0xb37941

    invoke-direct {v1, p2, v2}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "edge_lighting_settings"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "version"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string p2, "enable_list"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final writeAppNameList(Ljava/util/List;)V
    .locals 3

    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    if-eqz p0, :cond_0

    const-string p0, "AllAppsAvailable"

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string v0, ""

    if-lez p0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object p1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v2, ","

    invoke-static {p1, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p0, p1

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "write default enable app list... "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingSettingManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
