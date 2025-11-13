.class public final Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPowerManager:Landroid/os/PowerManager;

.field mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final initializePreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference;

    iget-object v1, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f140308

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    const v1, 0x7f140d09

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText$1(I)V

    iget-object v0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPreference:Lcom/android/settingslib/widget/BannerMessagePreference;

    new-instance v1, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public isPowerSaveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method
