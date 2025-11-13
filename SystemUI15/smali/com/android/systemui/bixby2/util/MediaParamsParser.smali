.class public Lcom/android/systemui/bixby2/util/MediaParamsParser;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final FOCUSED_APP:Ljava/lang/String; = "focusedApp"

.field private static final MEDIA_ACTIVE:Ljava/lang/String; = "media_control"

.field private static final MUSIC_ACTIVE:Ljava/lang/String; = "music_active"

.field private static final TAG:Ljava/lang/String; = "MediaParamsParser"

.field private static final TIME_INFO:Ljava/lang/String; = "time"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaInfoFromJson(Ljava/lang/String;)Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;
    .locals 16

    const-string v1, "MediaParamsParser"

    const-string/jumbo v0, "time"

    const-string v2, "focusedApp"

    const-string v3, "media_control"

    const-string v4, "music_active"

    const-string v5, ""

    const-wide/16 v7, -0x1

    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v11, v10, :cond_4

    :try_start_1
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v6, "true"

    if-eqz v15, :cond_0

    :try_start_2
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v14, 0x3e8

    mul-long/2addr v6, v14

    move-wide v7, v6

    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;

    invoke-direct {v0}, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;-><init>()V

    if-nez v13, :cond_6

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, v0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->isMediaActive:Z

    iput-object v5, v0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->focusedApp:Ljava/lang/String;

    iput-wide v7, v0, Lcom/android/systemui/bixby2/util/MediaModeInfoBixby;->time:J

    const-string v2, "isMediaActive "

    invoke-static {v2, v1, v13}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
