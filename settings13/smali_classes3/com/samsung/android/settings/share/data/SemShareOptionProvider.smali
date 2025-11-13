.class public Lcom/samsung/android/settings/share/data/SemShareOptionProvider;
.super Landroid/content/ContentProvider;
.source "SemShareOptionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 22

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    .line 39
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const-string v5, "com.samsung.android.settings.share.label.GetData"

    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "array_result"

    const-string v7, "uid"

    const-string v8, "activityName"

    const-string v9, "packageName"

    const-string v10, "Share_OptionProvider"

    if-eqz v5, :cond_9

    const-string v5, "sub_label"

    const-string v11, "main_label"

    const-string v12, "last_locale"

    const-string v13, ""

    const-string v14, "all_array_result"

    if-eqz v0, :cond_6

    .line 48
    new-instance v15, Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-direct {v15, v3}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string v4, "start extract bundle"

    .line 50
    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 53
    invoke-virtual {v0, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_1
    if-nez v4, :cond_2

    const-string v0, "Null Array Result bundle data"

    .line 58
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_2
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->open()V

    .line 62
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->createShareAppTable()V

    .line 63
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->removeAllApps()V

    .line 64
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "share label: NullJSONArray data from Result"

    .line 71
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 73
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_5

    .line 74
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_4

    const-string v0, "share label: Null package JSONObjct"

    .line 76
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    :cond_4
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v17, v14

    check-cast v17, Ljava/lang/String;

    .line 82
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v18, v14

    check-cast v18, Ljava/lang/String;

    .line 84
    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 86
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v20, v14

    check-cast v20, Ljava/lang/String;

    .line 88
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v21, v12

    check-cast v21, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v12, v15

    move-object v15, v12

    move-object/from16 v16, v13

    .line 89
    :try_start_1
    invoke-virtual/range {v15 .. v21}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->insertShareApps(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    move-object v15, v12

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    :cond_5
    :goto_1
    move-object v12, v15

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v12, v15

    .line 101
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Label caching Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v12, v15

    .line 97
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Label caching JSON exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :catch_5
    :goto_4
    invoke-virtual {v12}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->close()V

    goto/16 :goto_7

    .line 106
    :cond_6
    :try_start_2
    new-instance v0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->open()V

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->getAllShareAppComponents()Ljava/util/List;

    move-result-object v4

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->close()V

    .line 110
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 112
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/share/structure/LabelShareComponent;

    move-object/from16 p0, v4

    .line 115
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 p2, v6

    .line 117
    :try_start_3
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-virtual {v4, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 119
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 121
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->getUserId()I

    move-result v6

    .line 120
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 123
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->getMainLabel()Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual {v4, v11, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 125
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->getSubLabel()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 126
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 127
    invoke-virtual {v15}, Lcom/samsung/android/settings/share/structure/LabelShareComponent;->getLocale()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    .line 129
    :cond_7
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    goto :goto_5

    :cond_8
    move-object/from16 p2, v6

    .line 132
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 133
    invoke-virtual {v4, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send result of call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {v2, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 p2, v6

    .line 141
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    :cond_9
    :goto_7
    move-object/from16 p2, v6

    :goto_8
    const-string v0, "com.samsung.android.settings.share.GetData"

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 151
    :try_start_4
    new-instance v0, Lcom/samsung/android/settings/share/data/ShareDBAdapter;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->open()V

    .line 153
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->getAllRankedLabelComponents()Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/settings/share/data/ShareDBAdapter;->close()V

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/settings/share/data/SemShareOptionProvider$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/share/data/SemShareOptionProvider$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/share/structure/DBShareComponent;

    .line 163
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 165
    invoke-virtual {v3}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 167
    invoke-virtual {v3}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    .line 169
    invoke-virtual {v3}, Lcom/samsung/android/settings/share/structure/ShareComponent;->getUserId()I

    move-result v3

    .line 168
    invoke-virtual {v4, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 173
    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "rank_app_item_array"

    .line 174
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result of call: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 178
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    .line 181
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b
    :goto_a
    return-object v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 190
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 195
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 200
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 217
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not yet implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
