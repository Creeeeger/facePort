.class public Lcom/android/settings/accounts/ProviderPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mIsSignedIn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 67
    iput-boolean p5, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsSignedIn:Z

    .line 68
    sget p1, Lcom/android/settings/R$layout;->sec_account_provider_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 69
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 71
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->useAdminDisabledSummary(Z)V

    return-void
.end method


# virtual methods
.method public checkAccountManagementAndSetDisabled(I)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 78
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 79
    sget v0, Lcom/android/settings/R$id;->signStatusIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 81
    iget-boolean p0, p0, Lcom/android/settings/accounts/ProviderPreference;->mIsSignedIn:Z

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 82
    sget p0, Lcom/android/settings/R$drawable;->sec_sync_account_on:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->sec_sync_account_off:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
