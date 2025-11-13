.class final Lcom/samsung/android/allshare/MediaInfoImpl;
.super Lcom/samsung/android/allshare/media/MediaInfo;
.source "MediaInfoImpl.java"


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;

.field private blacklist mMediaDuration:J


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/media/MediaInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaInfoImpl;->mBundle:Landroid/os/Bundle;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/MediaInfoImpl;->mMediaDuration:J

    iput-object p1, p0, Lcom/samsung/android/allshare/MediaInfoImpl;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist getDuration()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/allshare/MediaInfoImpl;->mMediaDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/MediaInfoImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaInfoImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_LONG_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/samsung/android/allshare/MediaInfoImpl;->mMediaDuration:J

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/allshare/MediaInfoImpl;->mMediaDuration:J

    return-wide v0
.end method
