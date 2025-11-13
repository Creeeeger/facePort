.class public Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/info/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileInfo"
.end annotation


# instance fields
.field public blacklist Author:I

.field public blacklist Bitdepth:I

.field public blacklist Bitrate:I

.field public blacklist Duration:J

.field public blacklist EditedDuration:J

.field public blacklist HDR10:Z

.field public blacklist Height:I

.field public blacklist Is360:Z

.field public blacklist IsLocationAvailable:Z

.field public blacklist MimeType:Ljava/lang/String;

.field public blacklist NumOfSVCLayers:I

.field public blacklist RecordingFramerate:I

.field public blacklist RecordingMode:I

.field public blacklist Rotation:I

.field public blacklist Width:I

.field public blacklist latitude:F

.field public blacklist longitude:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    .line 19
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    .line 20
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    .line 21
    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    .line 22
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    .line 25
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    .line 26
    iput-wide v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    .line 29
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 30
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    .line 32
    iput v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    .line 34
    iput v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    return-void
.end method
