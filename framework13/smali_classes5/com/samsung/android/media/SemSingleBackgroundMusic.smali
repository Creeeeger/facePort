.class public Lcom/samsung/android/media/SemSingleBackgroundMusic;
.super Lcom/samsung/android/media/SemBackgroundMusic;
.source "SemSingleBackgroundMusic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/media/SemBackgroundMusic;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 2
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 41
    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    .line 42
    .local v0, "bgmSingle":Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/samsung/android/media/SemSingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public set(Ljava/io/FileDescriptor;II)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 27
    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    .line 28
    .local v0, "bgmSingle":Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/samsung/android/media/SemSingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method
