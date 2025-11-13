.class public final Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser;
.super Ljava/lang/Object;
.source "SCloudParser.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static toJSONArray(Landroid/util/JsonReader;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 94
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    const/4 v1, 0x0

    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    sget-object v2, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/JsonToken;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser;->toJSONObject(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 103
    :cond_3
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 113
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public static toJSONObject(Landroid/util/JsonReader;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, ""

    const/4 v2, 0x0

    .line 127
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    :try_start_2
    sget-object v3, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 160
    :pswitch_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_0

    .line 151
    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser;->toJSONArray(Landroid/util/JsonReader;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 147
    :pswitch_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextNull()V

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 144
    :pswitch_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 133
    :pswitch_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 154
    :pswitch_6
    invoke-static {p0}, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser;->toJSONObject(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 140
    :pswitch_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 141
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 136
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 164
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 167
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toString(Landroid/util/JsonReader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/oem/lib/utils/SCloudParser$1;->$SwitchMap$android$util$JsonToken:[I

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method
