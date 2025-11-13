.class public final Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final userId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput p1, p0, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;->userId:I

    iput-object p3, p0, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enhancedPinPrivacy"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;->userId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;->userId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/widget/LockPatternUtils;->setPinEnhancedPrivacyEnabled(ZI)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iget-object v0, p0, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/settings/security/screenlock/PinPrivacyPreferenceController;->userId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isPinEnhancedPrivacyEnabled(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
