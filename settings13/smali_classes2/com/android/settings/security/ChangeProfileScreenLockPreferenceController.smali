.class public Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;
.super Lcom/android/settings/security/ChangeScreenLockPreferenceController;
.source "ChangeProfileScreenLockPreferenceController.java"


# instance fields
.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    const-string/jumbo v0, "unlock_set_or_change_profile"

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 57
    iput-object p3, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBiometricsSummary(ZZ)Ljava/lang/String;
    .locals 12

    .line 184
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    const-string v2, "knox_finger_print_plus"

    const/4 v3, 0x0

    .line 184
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/high16 v2, 0x60000

    const/high16 v4, 0x50000

    const/high16 v5, 0x40000

    const/high16 v6, 0x30000

    const/high16 v7, 0x20000

    const/high16 v8, 0x10000

    if-eqz v0, :cond_4

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    iget-object p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v2, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->text_two_locktype_multifactor:I

    new-array v0, v1, [Ljava/lang/Object;

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 194
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->text_two_locktype_multifactor:I

    new-array v0, v1, [Ljava/lang/Object;

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 190
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->text_two_locktype_multifactor:I

    new-array v0, v1, [Ljava/lang/Object;

    sget v1, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 207
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    iget-object v9, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ar"

    .line 213
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v9, "\u060c "

    goto :goto_2

    :cond_5
    const-string v10, "ja"

    .line 215
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string/jumbo v9, "\u3001"

    goto :goto_2

    :cond_6
    const-string/jumbo v10, "zh"

    .line 217
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v9, "\uff0c"

    goto :goto_2

    :cond_7
    const-string v9, ", "

    .line 221
    :goto_2
    iget-object v10, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "4digits_pin_enabled"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v1, :cond_8

    move v3, v1

    .line 222
    :cond_8
    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v1, v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    if-eq v1, v8, :cond_d

    if-eq v1, v7, :cond_b

    if-eq v1, v6, :cond_b

    if-eq v1, v5, :cond_a

    if-eq v1, v4, :cond_a

    if-eq v1, v2, :cond_a

    const/high16 v2, 0x70000

    if-eq v1, v2, :cond_9

    goto :goto_3

    .line 240
    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_cac_pin_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 237
    :cond_a
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_c

    .line 229
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title_4digits:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 231
    :cond_c
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 224
    :cond_d
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-eqz p2, :cond_e

    .line 244
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_face_title:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz p1, :cond_f

    .line 248
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_fingerprint:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 89
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {p1, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    .line 96
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isAvailableWithMultiWindowForKnox(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    .line 101
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 102
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "fromScreenLock"

    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    .line 108
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTransitionType(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1
.end method

.method public isAvailable()Z
    .locals 3

    .line 61
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    .line 62
    invoke-virtual {v2, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x70000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x80000

    if-eq p0, v0, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->unlock_set_unlock_mode_off:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 132
    :goto_0
    iget-object v3, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x100

    iget v5, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 137
    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 140
    :cond_3
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    .line 144
    :cond_4
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->getBiometricsSummary(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->basic_primary_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->basic_secondary_text_color_dimmed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 150
    :goto_3
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 160
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->knox_onelock_settings_lock_summary:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_4

    .line 169
    :cond_6
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    .line 172
    :goto_4
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->getBiometricsSummary(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    iget p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {p1}, Lcom/samsung/android/settings/ucm/UCMUtils;->isEnforcedCredentialStorageExistAsUser(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 175
    iget-object p0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_7
    return-void
.end method
