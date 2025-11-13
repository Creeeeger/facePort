.class public final Lcom/android/systemui/wallpaper/provider/VideoThumbnailGenerator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVideoFrameTime(Landroid/media/MediaMetadataRetriever;I)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lez v2, :cond_2

    if-lez p1, :cond_2

    if-gt p1, v2, :cond_2

    mul-int/lit16 p0, p0, 0x3e8

    int-to-float p0, p0

    int-to-float p1, p1

    int-to-float v0, v2

    div-float/2addr p1, v0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    int-to-long p0, p0

    return-wide p0

    :cond_2
    :goto_0
    return-wide v0
.end method
