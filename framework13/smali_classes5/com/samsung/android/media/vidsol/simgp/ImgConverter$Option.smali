.class public Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;
.super Ljava/lang/Object;
.source "ImgConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/vidsol/simgp/ImgConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;
    }
.end annotation


# instance fields
.field public blacklist mode:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

.field public blacklist preferHw:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->preferHw:Z

    .line 68
    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;->NORMAL:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    iput-object v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->mode:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    return-void
.end method


# virtual methods
.method blacklist toJson()Ljava/lang/String;
    .locals 3

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .local v0, "obj":Lorg/json/JSONObject;
    const-string/jumbo v1, "preferHw"

    iget-boolean v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->preferHw:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    const-string v1, "mode"

    iget-object v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option;->mode:Lcom/samsung/android/media/vidsol/simgp/ImgConverter$Option$Mode;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 76
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 78
    const/4 v1, 0x0

    return-object v1
.end method
