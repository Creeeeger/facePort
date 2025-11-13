.class public final Lcom/android/systemui/edgelighting/backup/BRUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/backup/BRUtils;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/backup/BRUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/edgelighting/backup/BRUtils;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/backup/BRUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->sInstance:Lcom/android/systemui/edgelighting/backup/BRUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final restoreSettingValue(Ljava/io/File;Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;

    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;-><init>(Landroid/content/Context;Ljava/io/File;)V

    iget-object p1, v2, Lcom/android/systemui/edgelighting/backup/CocktailBarXmlParser;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v4, v3, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mType:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mName:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/systemui/edgelighting/backup/CocktailBarSettingValue;->mValue:Ljava/lang/String;

    const-string v6, " "

    const-string v7, "BRUtils_systemui"

    if-eqz v5, :cond_14

    if-eqz v4, :cond_14

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v8, "edge_lighting_version"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v3, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_3
    sget-boolean v8, Lcom/android/systemui/edgelighting/Feature;->FEATURE_SUPPORT_EDGE_LIGHTING:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "turn_over_lighting"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    const-string v8, "edge_lighting_basic_color_index"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->rematchingSimilarColorChip(Landroid/content/ContentResolver;I)V

    goto :goto_0

    :cond_5
    const-string v8, "cocktailbar_shared_prefs"

    const/4 v9, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "STRING_SYSTEM"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v9, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "STRING_GLOBAL"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v9, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "EDGE_LIGHTING_CUSTOM_TEXT_FILTER"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v9, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "INT_SYSTEM"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "EDGE_LIGHTING_APP_LIST_SETTING"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_5
    const-string v10, "EDGE_LIGHTING_SETTINGS"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_6
    const-string v10, "INT_GLOBAL"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_7
    const-string v10, "INT_SHARED_PREFERENCE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_8
    const-string v10, "EDGE_LIGHTING_CUSTOM_COLOR_LIST_SETTING"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_1

    :cond_e
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_9
    const-string v10, "FLOAT_SYSTEM"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_1

    :cond_f
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_a
    const-string v10, "BOOLEAN_SHARED_PREFERENCE"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_1

    :cond_10
    move v9, v1

    goto :goto_1

    :sswitch_b
    const-string v10, "FLOAT_GLOBAL"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_1

    :cond_11
    move v9, v0

    :goto_1
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v4, "edge_lighting_style_type_str"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v2, :cond_12

    const-string v4, "preload/basic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "preload/noframe"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "edgelighting style will be restored from basic to noFrame"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_13
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :pswitch_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "custom_text_filter_color"

    invoke-virtual {v4, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->TEXT_FILTER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :pswitch_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_list"

    invoke-virtual {v4, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->APP_LIST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    :pswitch_5
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->SETTINGS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :pswitch_6
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :pswitch_7
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :pswitch_8
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "custom_color_list"

    invoke-virtual {v4, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/edgelighting/backup/EdgeLightingContentProvider;->CUSTOM_COLOR_LIST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :pswitch_9
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_2

    :pswitch_a
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    :pswitch_b
    iget-object v4, p0, Lcom/android/systemui/edgelighting/backup/BRUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "restore Setting  Value - "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74aef0fa -> :sswitch_b
        -0x63917382 -> :sswitch_a
        -0x5f7b826e -> :sswitch_9
        -0x5f43df18 -> :sswitch_8
        -0x49e8137b -> :sswitch_7
        0xa99c213 -> :sswitch_6
        0xd2091f4 -> :sswitch_5
        0x1d9ce5de -> :sswitch_4
        0x1fcd309f -> :sswitch_3
        0x24c3938d -> :sswitch_2
        0x50311b91 -> :sswitch_1
        0x65648a1d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
