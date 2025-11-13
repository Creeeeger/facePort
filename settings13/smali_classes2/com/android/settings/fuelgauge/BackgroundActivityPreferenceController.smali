.class public Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BackgroundActivityPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final KEY_BACKGROUND_ACTIVITY:Ljava/lang/String; = "background_activity"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

.field private mTargetPackage:Ljava/lang/String;

.field private final mUid:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V
    .locals 6

    .line 63
    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    const-string/jumbo p5, "user"

    .line 71
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/UserManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string p5, "device_policy"

    .line 72
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string p5, "appops"

    .line 73
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/AppOpsManager;

    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 74
    iput p3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    .line 75
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 76
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "background_activity"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 147
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p2, 0x9

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;II)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 83
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    iget v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 91
    invoke-static {v0, v1, p0}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 94
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 92
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public updateSummary(Landroidx/preference/Preference;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget p0, Lcom/android/settings/R$string;->background_activity_summary_allowlisted:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    iget v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 136
    sget p0, Lcom/android/settings/R$string;->background_activity_summary_disabled:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 139
    sget p0, Lcom/android/settings/R$string;->restricted_true_label:I

    goto :goto_1

    .line 140
    :cond_3
    sget p0, Lcom/android/settings/R$string;->restricted_false_label:I

    .line 139
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method
