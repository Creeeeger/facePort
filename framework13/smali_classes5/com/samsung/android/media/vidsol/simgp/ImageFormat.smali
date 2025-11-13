.class public final Lcom/samsung/android/media/vidsol/simgp/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$Usage;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$RotationType;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$HdrType;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$ColorTransfer;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$ColorRange;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$ColorStandard;,
        Lcom/samsung/android/media/vidsol/simgp/ImageFormat$ColorFormat;
    }
.end annotation


# static fields
.field public static final blacklist HDR_TYPE_HDR10:I = 0x1

.field public static final blacklist HDR_TYPE_HDR10_PULS:I = 0x3

.field public static final blacklist HDR_TYPE_HDR10_THUMB:I = 0x2

.field public static final blacklist ROTATION_0:I = 0x0

.field public static final blacklist ROTATION_180:I = 0x2

.field public static final blacklist ROTATION_270:I = 0x3

.field public static final blacklist ROTATION_90:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ImageFormat"

.field public static final blacklist USAGE_VID_DEC:I = 0x1

.field public static final blacklist USAGE_VID_ENC:I = 0x2


# instance fields
.field private blacklist mColorFormat:I

.field private blacklist mColorRange:I

.field private blacklist mColorStandard:I

.field private blacklist mColorTransfer:I

.field private blacklist mHdrType:I

.field private blacklist mHeight:I

.field private blacklist mRotation:I

.field private blacklist mUsage:I

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mWidth:I

    .line 99
    iput p2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHeight:I

    .line 100
    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "fmt"    # Landroid/media/MediaFormat;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mWidth:I

    .line 104
    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHeight:I

    .line 106
    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorFormat(I)V

    .line 109
    :cond_0
    const-string v0, "color-standard"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, "std":I
    const-string v1, "color-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "color-transfer"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(III)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(I)V

    .line 119
    .end local v0    # "std":I
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist setColorFormat(I)V
    .locals 0
    .param p1, "colorFormat"    # I

    .line 122
    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorFormat:I

    .line 123
    return-void
.end method

.method public blacklist setColorSpace(I)V
    .locals 2
    .param p1, "standard"    # I

    .line 126
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->setColorSpace(III)V

    .line 127
    return-void
.end method

.method public blacklist setColorSpace(III)V
    .locals 0
    .param p1, "standard"    # I
    .param p2, "range"    # I
    .param p3, "transfer"    # I

    .line 130
    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorStandard:I

    .line 131
    iput p2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorRange:I

    .line 132
    iput p3, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorTransfer:I

    .line 133
    return-void
.end method

.method public blacklist setHdrType(I)V
    .locals 0
    .param p1, "hdrType"    # I

    .line 136
    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHdrType:I

    .line 137
    return-void
.end method

.method public blacklist setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .line 139
    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mRotation:I

    return-void
.end method

.method public blacklist setUsage(I)V
    .locals 0
    .param p1, "usage"    # I

    .line 142
    iput p1, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mUsage:I

    .line 143
    return-void
.end method

.method public blacklist toJson()Ljava/lang/String;
    .locals 3

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v0, "obj":Lorg/json/JSONObject;
    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    const-string v1, "height"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v1, "color-format"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorFormat:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    const-string v1, "color-standard"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorStandard:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    const-string v1, "color-range"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorRange:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string v1, "color-transfer"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mColorTransfer:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v1, "hdr-type"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mHdrType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v1, "rotation"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mRotation:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v1, "usage"

    iget v2, p0, Lcom/samsung/android/media/vidsol/simgp/ImageFormat;->mUsage:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 158
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 160
    const/4 v1, 0x0

    return-object v1
.end method
