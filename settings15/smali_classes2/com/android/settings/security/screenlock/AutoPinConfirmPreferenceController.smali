.class public final Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mParentFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mUserId:I

    iput-object p3, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p4, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mParentFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "auto_pin_confirm"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPinLength(I)I

    move-result p0

    const/4 v0, 0x6

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v0, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mParentFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    iget v0, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mUserId:I

    iput v0, p2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    if-eqz p1, :cond_0

    const/16 v0, 0x6f

    goto :goto_0

    :cond_0
    const/16 v0, 0x70

    :goto_0
    iput v0, p2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f141547

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f1404ed

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f1404ec

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    iput-object p0, p2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    iput-boolean p0, p2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    invoke-virtual {p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/screenlock/AutoPinConfirmPreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
