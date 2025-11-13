.class public final Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;
.super Lcom/android/systemui/bixby2/controller/volume/VolumeType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final audioManagerWrapper$delegate:Lkotlin/Lazy;

.field private final editor$delegate:Lkotlin/Lazy;

.field private final preferences$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;-><init>()V

    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;

    invoke-direct {v0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$audioManagerWrapper$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->audioManagerWrapper$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$preferences$2;-><init>(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->preferences$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$editor$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController$editor$2;-><init>(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->editor$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getPreferences(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSharedPreferences(Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->audioManagerWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    return-object p0
.end method

.method private final getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->editor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private final getPreferences()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->preferences$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    const-string p0, "VolumeController_preferences"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final getStreamVolume(I)I
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method private final loadStreamVolume(Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getMaxVolume()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method private final saveStreamVolume(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final setMute(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->saveStreamVolume(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private final setRingerMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string v1, "Ringtone"

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->saveStreamVolume(Ljava/lang/String;I)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    move-result v0

    const-string v1, "Notification"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->saveStreamVolume(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    move-result v0

    const-string v1, "System"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->saveStreamVolume(Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->setRingerMode(I)V

    return-void
.end method

.method private final setUnMuteStream(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isStreamMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->loadStreamVolume(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {v0, p2, p0, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method private final showVolumePanel(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->adjustStreamVolume(III)V

    return-void
.end method


# virtual methods
.method public isStreamMute()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isAllStreamMute()Z

    move-result p0

    return p0
.end method

.method public final setAllMute()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isAllStreamMute()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const/4 v0, 0x2

    const-string v1, "VolumeAlreadyMute"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setRingerMode(I)V

    const-string v1, "Media"

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setMute(Ljava/lang/String;II)V

    const-string v1, "Bixby"

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getStreamVolume(I)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setMute(Ljava/lang/String;II)V

    invoke-direct {p0, v0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->showVolumePanel(I)V

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string/jumbo v1, "success"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final setAllUnMute()Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->getAudioManagerWrapper()Lcom/android/systemui/bixby2/util/AudioManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bixby2/util/AudioManagerWrapper;->isAllStreamMute()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string v0, "VolumeAlreadyUnMute"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/VolumeType;->getRingerMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setRingerMode(I)V

    :cond_1
    const-string v0, "System"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setUnMuteStream(Ljava/lang/String;I)V

    const-string v0, "Notification"

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setUnMuteStream(Ljava/lang/String;I)V

    const-string v0, "Media"

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setUnMuteStream(Ljava/lang/String;I)V

    const-string v0, "Bixby"

    const/16 v3, 0xb

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setUnMuteStream(Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->showVolumePanel(I)V

    new-instance p0, Lcom/android/systemui/bixby2/CommandActionResponse;

    const-string/jumbo v0, "success"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/bixby2/CommandActionResponse;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setMute(Z)Lcom/android/systemui/bixby2/CommandActionResponse;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setAllMute()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/bixby2/controller/volume/AllVolumeController;->setAllUnMute()Lcom/android/systemui/bixby2/CommandActionResponse;

    move-result-object p0

    :goto_0
    return-object p0
.end method
