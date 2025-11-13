.class public Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DualDarDoScreenLockTypePreferenceController.java"


# static fields
.field public static final CHOOSE_LOCK_GENERIC:Ljava/lang/String; = "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment"

.field public static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "DualDarDoScreenLockTypePreferenceController"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mPreference:Landroidx/preference/SecPreferenceScreen;

.field private mRequestCode:I

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    sget-object p2, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "DualDarDoScreenLockTypePreferenceController"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDualDarDoInnerAuthUserId(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mUserId:I

    .line 45
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private getBiometricsSummary()Ljava/lang/String;
    .locals 3

    .line 107
    sget-object v0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "getBiometricsSummary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSupportMultiWindow()Z
    .locals 2

    .line 148
    sget-object v0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "isSupportMultiWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportSubLockscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method private startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 5

    .line 159
    sget-object v0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "startFragment called.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 161
    :goto_0
    instance-of v3, v1, Lcom/android/settings/SettingsActivity;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 162
    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 165
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 167
    invoke-virtual {p0, p5}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 168
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 169
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 171
    instance-of p2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p2, :cond_1

    .line 172
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v4

    .line 171
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0

    .line 179
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", requestCode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 51
    sget-object v0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 59
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 74
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isDualDarDoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget-object p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "disable DualDarDo pref controller"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    return v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 93
    sget-object v0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "getSummary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_smart_lock_disabled_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->getBiometricsSummary()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    .line 127
    sget-object v0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "handlePreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferenceKey() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preference.getKey() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mParentFragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->isSupportMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1130

    const/16 v2, 0x1131

    .line 137
    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 138
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fromScreenLock"

    .line 139
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "fromDualDarDoScreenLock"

    .line 140
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    sget v6, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    const/16 v7, 0x7b

    const-string v5, "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 144
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public init(Landroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 86
    sget-object v0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 88
    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mRequestCode:I

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updatePreference()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/DualDarDoScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
