.class public Lcom/android/settings/display/SmartAutoRotateCameraStateController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private final mPrivacyChangedListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

.field private final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public static synthetic $r8$lambda$HDBD6xNDFjPa1tVKvJpVJYUhl1Y(Lcom/android/settings/display/SmartAutoRotateCameraStateController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotateCameraStateController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/display/SmartAutoRotateCameraStateController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/SmartAutoRotateCameraStateController$1;-><init>(Lcom/android/settings/display/SmartAutoRotateCameraStateController;)V

    iput-object p2, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPrivacyChangedListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Lcom/android/settingslib/widget/BannerMessagePreference;

    const v0, 0x7f1402ea

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText$1(I)V

    new-instance v0, Lcom/android/settings/display/SmartAutoRotateCameraStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/display/SmartAutoRotateCameraStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/SmartAutoRotateCameraStateController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/SmartAutoRotateController;->isRotationResolverServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->isCameraLocked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

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

.method public isCameraLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result p0

    return p0
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

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPrivacyChangedListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateCameraStateController;->mPrivacyChangedListener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
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
