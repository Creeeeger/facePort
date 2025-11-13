.class public final Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final mContext:Landroid/content/Context;

.field mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mPrivacyChangedListener:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;

.field public final mPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;-><init>(Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyChangedListener:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;

    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final initializePreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference;

    iget-object v1, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f140506

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f140273

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f1402ea

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText$1(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    new-instance v1, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public isCameraLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyChangedListener:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->mPrivacyChangedListener:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController$1;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method
