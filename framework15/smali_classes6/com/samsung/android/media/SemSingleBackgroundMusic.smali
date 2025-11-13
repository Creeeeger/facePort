.class public Lcom/samsung/android/media/SemSingleBackgroundMusic;
.super Lcom/samsung/android/media/SemBackgroundMusic;
.source "SemSingleBackgroundMusic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemBackgroundMusic;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 2

    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public set(Ljava/io/FileDescriptor;II)V
    .locals 2

    new-instance v0, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    invoke-direct {v0}, Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;-><init>()V

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemBackgroundMusic;->addInfo(Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemBackgroundMusic$BGMInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemSingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
