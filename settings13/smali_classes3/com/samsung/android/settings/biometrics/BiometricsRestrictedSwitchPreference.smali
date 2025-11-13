.class public Lcom/samsung/android/settings/biometrics/BiometricsRestrictedSwitchPreference;
.super Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;
.source "BiometricsRestrictedSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020040

    .line 73
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const p0, 0x1020010

    .line 78
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public performClick()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x10e

    invoke-static {v0, v1}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->performClick()V

    goto :goto_0

    :cond_0
    const-string v1, "BiometricsRestrictedSwitchPreference"

    const-string v2, "Request for Parental Consent!!"

    .line 94
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const-string v2, "disallow_biometric"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 100
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->performClick()V

    :goto_0
    return-void
.end method
