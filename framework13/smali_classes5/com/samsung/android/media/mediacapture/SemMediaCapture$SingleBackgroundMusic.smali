.class public Lcom/samsung/android/media/mediacapture/SemMediaCapture$SingleBackgroundMusic;
.super Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleBackgroundMusic"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1018
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist set(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 2
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 1044
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V

    .line 1045
    .local v0, "bgmSingle":Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$SingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    return-void
.end method

.method public blacklist set(Ljava/io/FileDescriptor;II)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 1029
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V

    .line 1030
    .local v0, "bgmSingle":Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 1031
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$SingleBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    return-void
.end method
