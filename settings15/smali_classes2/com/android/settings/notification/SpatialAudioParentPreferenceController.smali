.class public Lcom/android/settings/notification/SpatialAudioParentPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SpatialAudioSetting"


# instance fields
.field private mSpatialAudioPreferenceController:Lcom/android/settings/notification/SpatialAudioPreferenceController;

.field private mSpatialAudioWiredHeadphonesController:Lcom/android/settings/notification/SpatialAudioWiredHeadphonesController;

.field private final mSpatializer:Landroid/media/Spatializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SpatialAudioSetting"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->mSpatializer:Landroid/media/Spatializer;

    new-instance p2, Lcom/android/settings/notification/SpatialAudioPreferenceController;

    const-string v0, "unused"

    invoke-direct {p2, p1, v0}, Lcom/android/settings/notification/SpatialAudioPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->mSpatialAudioPreferenceController:Lcom/android/settings/notification/SpatialAudioPreferenceController;

    new-instance p2, Lcom/android/settings/notification/SpatialAudioWiredHeadphonesController;

    invoke-direct {p2, p1, v0}, Lcom/android/settings/notification/SpatialAudioWiredHeadphonesController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->mSpatialAudioWiredHeadphonesController:Lcom/android/settings/notification/SpatialAudioWiredHeadphonesController;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    iget-object p0, p0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->mSpatializer:Landroid/media/Spatializer;

    invoke-virtual {p0}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result p0

    sget-boolean v0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "spatialization level: "

    const-string v1, "SpatialAudioSetting"

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->mSpatialAudioPreferenceController:Lcom/android/settings/notification/SpatialAudioPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->mSpatialAudioPreferenceController:Lcom/android/settings/notification/SpatialAudioPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/notification/SpatialAudioPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->mSpatialAudioWiredHeadphonesController:Lcom/android/settings/notification/SpatialAudioWiredHeadphonesController;

    invoke-virtual {v3}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notification/SpatialAudioParentPreferenceController;->mSpatialAudioWiredHeadphonesController:Lcom/android/settings/notification/SpatialAudioWiredHeadphonesController;

    invoke-virtual {v3}, Lcom/android/settings/notification/SpatialAudioWiredHeadphonesController;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    const v2, 0x7f142cf8

    const v3, 0x7f142cf5

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f142cfb

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v4, 0x7f142cfa

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f142cf9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
