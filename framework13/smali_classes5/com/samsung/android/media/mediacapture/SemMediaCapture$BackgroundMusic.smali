.class public abstract Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;
.super Ljava/lang/Object;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackgroundMusic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    }
.end annotation


# instance fields
.field protected blacklist mBGMInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected blacklist addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    .locals 2
    .param p1, "bgmInfo"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    .param p2, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 990
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    .line 991
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->offset:J

    .line 992
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->length:J

    .line 993
    iput p3, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->startTimeMs:I

    .line 994
    iput p4, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->endTimeMs:I

    .line 995
    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->durationMs:I

    .line 997
    return-object p1
.end method

.method protected blacklist addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    .locals 2
    .param p1, "bgmInfo"    # Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "startTime"    # I
    .param p4, "endTime"    # I

    .line 978
    iput-object p2, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    .line 979
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->offset:J

    .line 980
    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->length:J

    .line 981
    iput p3, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->startTimeMs:I

    .line 982
    iput p4, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->endTimeMs:I

    .line 983
    sub-int v0, p4, p3

    iput v0, p1, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->durationMs:I

    .line 985
    return-object p1
.end method

.method public blacklist clear()V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 953
    return-void
.end method

.method protected blacklist writeToParcel()Landroid/os/Parcel;
    .locals 4

    .line 960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 961
    .local v0, "p":Landroid/os/Parcel;
    const-string v1, "android.media.IMediaCapture"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundMusic size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemMediaCapture"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 965
    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    iget-object v2, v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 966
    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    iget-wide v2, v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->offset:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 967
    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    iget-wide v2, v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->length:J

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 968
    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    iget v2, v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->startTimeMs:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    iget v2, v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->endTimeMs:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    iget v2, v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;->durationMs:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 973
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
