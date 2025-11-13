.class public abstract Lcom/samsung/android/media/SemBackgroundMusic;
.super Ljava/lang/Object;
.source "SemBackgroundMusic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemBackgroundMusic"


# instance fields
.field protected blacklist mBGMInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected blacklist addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    .locals 2
    .param p1, "bgmInfo"    # Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    .param p2, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 79
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    .line 80
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->offset:J

    .line 81
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->length:J

    .line 82
    iput p3, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->startTimeMs:I

    .line 83
    iput p4, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->endTimeMs:I

    .line 84
    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->durationMs:I

    .line 86
    return-object p1
.end method

.method protected blacklist addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    .locals 2
    .param p1, "bgmInfo"    # Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 67
    iput-object p2, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->offset:J

    .line 69
    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->length:J

    .line 70
    iput p3, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->startTimeMs:I

    .line 71
    iput p4, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->endTimeMs:I

    .line 72
    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->durationMs:I

    .line 74
    return-object p1
.end method

.method public whitelist clear()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 29
    return-void
.end method

.method public whitelist writeToParcel(Ljava/lang/String;)Landroid/os/Parcel;
    .locals 5
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 36
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 37
    .local v0, "p":Landroid/os/Parcel;
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundMusic size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBackgroundMusic"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 44
    if-eqz p1, :cond_1

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    iget-object v3, v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    iget-object v3, v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 50
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    iget-wide v3, v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->offset:J

    invoke-virtual {v0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-object v3, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    iget-wide v3, v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->length:J

    invoke-virtual {v0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v3, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    iget v3, v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->startTimeMs:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v3, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    iget v3, v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->endTimeMs:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v3, p0, Lcom/samsung/android/media/SemBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    iget v3, v3, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;->durationMs:I

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v4, "setBackgroundMusic ParcelFileDescriptor.dup failed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method
