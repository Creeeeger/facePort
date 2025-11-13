.class public Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;
.super Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBackgroundMusic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3671
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 2
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3703
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    .line 3704
    .local v0, "bgmSingle":Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 3705
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3706
    return-void
.end method

.method public set(Ljava/io/FileDescriptor;II)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3685
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    .line 3686
    .local v0, "bgmSingle":Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 3687
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$SingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3688
    return-void
.end method
