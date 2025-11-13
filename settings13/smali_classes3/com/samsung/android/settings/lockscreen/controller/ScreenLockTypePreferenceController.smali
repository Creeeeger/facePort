.class public Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ScreenLockTypePreferenceController.java"


# static fields
.field public static final CHOOSE_LOCK_GENERIC:Ljava/lang/String; = "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment"

.field public static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "ScreenLockTypePreferenceController"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mPreference:Landroidx/preference/SecPreferenceScreen;

.field private mRequestCode:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    .line 56
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private getBiometricsSummary(ZZ)Ljava/lang/String;
    .locals 12

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    const-string v2, "knox_finger_print_plus"

    const/4 v3, 0x0

    .line 139
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

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v2, :cond_1

    goto :goto_1

    .line 154
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

    .line 149
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

    .line 145
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

    .line 157
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iget-object v9, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ar"

    .line 168
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v9, "\u060c "

    goto :goto_2

    :cond_5
    const-string v10, "ja"

    .line 170
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v9, "\u3001"

    goto :goto_2

    :cond_6
    const-string v10, "zh"

    .line 172
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "\uff0c"

    goto :goto_2

    :cond_7
    const-string v9, ", "

    .line 176
    :goto_2
    iget-object v10, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "4digits_pin_enabled"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v1, :cond_8

    move v3, v1

    .line 177
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

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

    .line 195
    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->unlock_set_unlock_cac_pin_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 192
    :cond_a
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    if-eqz v3, :cond_c

    .line 184
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title_4digits:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 186
    :cond_c
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 179
    :cond_d
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-eqz p2, :cond_e

    .line 199
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_face_title:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz p1, :cond_f

    .line 203
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_fingerprint:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLockType()I
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 230
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_off:I

    goto :goto_0

    .line 232
    :cond_0
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_none:I

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    .line 236
    sget-object v0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passwordQulity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_5

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x70000

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 253
    :cond_2
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_cac_pin_title:I

    goto :goto_0

    .line 249
    :cond_3
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_password_title:I

    goto :goto_0

    .line 244
    :cond_4
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_pin_title:I

    goto :goto_0

    .line 240
    :cond_5
    sget p0, Lcom/android/settings/R$string;->unlock_set_unlock_pattern_title:I

    :goto_0
    return p0
.end method

.method private startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 2

    .line 264
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 265
    instance-of v0, p0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 268
    invoke-virtual {p0, p5}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 269
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 270
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 271
    instance-of p2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p2, :cond_0

    .line 272
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    .line 271
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0

    .line 277
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", requestCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 65
    invoke-virtual {p1, p0}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockSettingsBlockonDexMode(Landroid/content/Context;)Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 77
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnforced()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x5

    return p0
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
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->unlock_set_unlock_mode_none:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 121
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x100

    iget v5, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    .line 126
    :goto_1
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mUserId:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabledByDPM(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    .line 132
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->getBiometricsSummary(ZZ)Ljava/lang/String;

    move-result-object p0

    :goto_3
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

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    const/16 v0, 0x1130

    const/16 v2, 0x1131

    .line 216
    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 217
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fromScreenLock"

    .line 218
    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    sget v6, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    const/16 v7, 0x7b

    const-string v5, "com.android.settings.password.ChooseLockGeneric$ChooseLockGenericFragment"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 222
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
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 88
    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mRequestCode:I

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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/ScreenLockTypePreferenceController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 99
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
