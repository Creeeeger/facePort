.class public Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;
.super Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;
.source "SemMediaCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/mediacapture/SemMediaCapture;
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
            "Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

.field private blacklist mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

.field private blacklist mLastIndex:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 1055
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;-><init>()V

    .line 1248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1249
    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    .line 1252
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_INTRO:I

    .line 1253
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_BODY:I

    .line 1254
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->BGM_SECTION_TYPE_OUTRO:I

    .line 1256
    iput v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCount:I

    .line 1257
    iput v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 1258
    iput v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mLastIndex:I

    .line 1259
    iput-boolean v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mEndOutro:Z

    return-void
.end method

.method private blacklist addSections()V
    .locals 3

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    if-eqz v0, :cond_1

    .line 1236
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1240
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    if-eqz v0, :cond_3

    .line 1244
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBGMInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist addBody(Landroid/content/res/AssetFileDescriptor;II)I
    .locals 2
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 1161
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V

    .line 1162
    .local v0, "bgmInfo":Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 1163
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    iget v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCount:I

    .line 1166
    return v1
.end method

.method public blacklist addBody(Ljava/io/FileDescriptor;II)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 1140
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V

    .line 1141
    .local v0, "bgmInfo":Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;
    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    move-result-object v0

    .line 1142
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    iget v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCount:I

    .line 1145
    return v1
.end method

.method public blacklist clear()V
    .locals 2

    .line 1062
    invoke-super {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->clear()V

    .line 1064
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1065
    iget-object v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMBody:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1066
    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1068
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCount:I

    .line 1069
    iput v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 1070
    iput v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mLastIndex:I

    .line 1071
    iput-boolean v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mEndOutro:Z

    .line 1072
    return-void
.end method

.method public blacklist setIntro(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 1
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 1121
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1125
    return-void
.end method

.method public blacklist setIntro(Ljava/io/FileDescriptor;II)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    .line 1104
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMIntro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1107
    return-void
.end method

.method public blacklist setOutro(Landroid/content/res/AssetFileDescriptor;II)V
    .locals 1
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 1199
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    .line 1200
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Landroid/content/res/AssetFileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1203
    return-void
.end method

.method public blacklist setOutro(Ljava/io/FileDescriptor;II)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "startTime"    # I
    .param p3, "endTime"    # I

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    if-nez v0, :cond_0

    .line 1182
    new-instance v0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;-><init>(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;)V

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    invoke-super {p0, v0, p1, p2, p3}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->addInfo(Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;Ljava/io/FileDescriptor;II)Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mFBGMOutro:Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic$BGMInfo;

    .line 1185
    return-void
.end method

.method public blacklist setPlaybackRule(IIZ)V
    .locals 2
    .param p1, "bodyRepeatCount"    # I
    .param p2, "bodyLastIndex"    # I
    .param p3, "useOutro"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1220
    iget v0, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCount:I

    if-gt p2, v0, :cond_0

    .line 1225
    iput p1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCycle:I

    .line 1226
    iput p2, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mLastIndex:I

    .line 1227
    iput-boolean p3, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mEndOutro:Z

    .line 1228
    return-void

    .line 1221
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

    iget v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist writeToParcel()Landroid/os/Parcel;
    .locals 2

    .line 1080
    invoke-direct {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->addSections()V

    .line 1082
    invoke-super {p0}, Lcom/samsung/android/media/mediacapture/SemMediaCapture$BackgroundMusic;->writeToParcel()Landroid/os/Parcel;

    move-result-object v0

    .line 1083
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    iget v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mBodyCycle:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1085
    iget v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mLastIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    iget-boolean v1, p0, Lcom/samsung/android/media/mediacapture/SemMediaCapture$FragmentedBackgroundMusic;->mEndOutro:Z

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    return-object v0
.end method
