.class public Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;
.super Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentedBackgroundMusic"
.end annotation


# instance fields
.field private final blacklist BGM_SECTION_TYPE_BODY:I

.field private final blacklist BGM_SECTION_TYPE_INTRO:I

.field private final blacklist BGM_SECTION_TYPE_OUTRO:I

.field private blacklist mBodyCount:I

.field private blacklist mBodyCycle:I

.field private blacklist mEndOutro:Z

.field private blacklist mFBGMBody:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

.field private blacklist mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

.field private blacklist mLastIndex:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 3709
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;-><init>()V

    .line 3930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3932
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    .line 3936
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_INTRO:I

    .line 3938
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_BODY:I

    .line 3940
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_OUTRO:I

    .line 3942
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    .line 3944
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 3946
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    .line 3948
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    return-void
.end method

.method private blacklist addSections()V
    .locals 3

    .line 3913
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3914
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3917
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-eqz v0, :cond_1

    .line 3918
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3921
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3922
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3921
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3925
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-eqz v0, :cond_3

    .line 3926
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3928
    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist addBody(Landroid/content/res/AssetFileDescriptor;II)I
    .locals 2
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3834
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    .line 3835
    .local v0, "bgmInfo":Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 3836
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3838
    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    .line 3839
    return v1
.end method

.method public whitelist addBody(Ljava/io/FileDescriptor;II)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3810
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    .line 3811
    .local v0, "bgmInfo":Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 3812
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3814
    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    .line 3815
    return v1
.end method

.method public whitelist clear()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3719
    invoke-super {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->clear()V

    .line 3721
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3722
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3723
    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3725
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    .line 3726
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 3727
    iput v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    .line 3728
    iput-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    .line 3729
    return-void
.end method

.method public whitelist setIntro(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 1
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3788
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    .line 3789
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3791
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3792
    return-void
.end method

.method public whitelist setIntro(Ljava/io/FileDescriptor;II)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3767
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    .line 3768
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3770
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3771
    return-void
.end method

.method public whitelist setOutro(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 1
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3878
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    .line 3879
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3881
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3882
    return-void
.end method

.method public whitelist setOutro(Ljava/io/FileDescriptor;II)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3857
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    .line 3858
    new-instance v0, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3860
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->addInfo(Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic$BGMInfo;

    .line 3861
    return-void
.end method

.method public whitelist setPlaybackRule(IIZ)V
    .locals 2
    .param p1, "bodyRepeatCount"    # I
    .param p2, "bodyLastIndex"    # I
    .param p3, "useOutro"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3902
    iget v0, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    if-gt p2, v0, :cond_0

    .line 3907
    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 3908
    iput p2, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    .line 3909
    iput-boolean p3, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    .line 3910
    return-void

    .line 3903
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bodyLastIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is invalid; larger than BGM_SECTION_TYPE_BODY count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3904
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist writeToParcel()Landroid/os/Parcel;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "13.0"
    .end annotation

    .line 3741
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->addSections()V

    .line 3743
    invoke-super {p0}, Lcom/samsung/android/media/SemMediaPlayer$BackgroundMusic;->writeToParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 3744
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3745
    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mBodyCycle:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3746
    iget v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mLastIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3747
    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$FragmentedBackgroundMusic;->mEndOutro:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3749
    return-object v0
.end method
