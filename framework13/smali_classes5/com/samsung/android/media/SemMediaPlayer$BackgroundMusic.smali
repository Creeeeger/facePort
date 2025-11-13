.class public abstract Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackgroundMusic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    }
.end annotation


# instance fields
.field protected blacklist mBGMInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 3590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected blacklist addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .locals 2
    .param p1, "bgmInfo"    # Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .param p2, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 3647
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    .line 3648
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    .line 3649
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    .line 3650
    iput p3, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    .line 3651
    iput p4, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    .line 3652
    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    .line 3654
    return-object p1
.end method

.method protected blacklist addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .locals 2
    .param p1, "bgmInfo"    # Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 3635
    iput-object p2, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    .line 3636
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    .line 3637
    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    .line 3638
    iput p3, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    .line 3639
    iput p4, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    .line 3640
    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    .line 3642
    return-object p1
.end method

.method public whitelist clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3601
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3602
    return-void
.end method

.method public whitelist writeToParcel()Landroid/os/Parcel;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3614
    .local v0, "p":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundMusic size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMediaPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3618
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-object v3, v3, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 3619
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3620
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-wide v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->offset:J

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3621
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget-wide v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->length:J

    invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3622
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->startTimeMs:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3623
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->endTimeMs:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3624
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    iget v4, v4, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;->durationMs:I

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3627
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 3625
    :catch_0
    move-exception v3

    .line 3626
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "setBackgroundMusic ParcelFileDescriptor.dup failed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3630
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
