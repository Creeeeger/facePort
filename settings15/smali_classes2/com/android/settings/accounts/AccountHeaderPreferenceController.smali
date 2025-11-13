.class public final Lcom/android/settings/accounts/AccountHeaderPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field public final mAccount:Landroid/accounts/Account;

.field public final mActivity:Landroid/app/Activity;

.field public mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public final mHost:Landroidx/preference/PreferenceFragmentCompat;

.field public final mSummary:Ljava/lang/CharSequence;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentActivity;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    const/4 p1, 0x0

    if-eqz p5, :cond_0

    const-string p3, "account"

    invoke-virtual {p5, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    :goto_0
    if-eqz p5, :cond_1

    const-string p3, "user_handle"

    invoke-virtual {p5, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    :goto_1
    if-eqz p5, :cond_2

    const-string p3, "account_summary"

    invoke-virtual {p5, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p5, p3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mSummary:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mSummary:Ljava/lang/CharSequence;

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "account_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const p1, 0x7f0a05cf

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "account_header"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onResume()V
    .locals 5

    new-instance v0, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a05c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mHost:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v2, v4, v3, v1}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mSummary:Ljava/lang/CharSequence;

    iput-object v3, v2, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Z)Landroid/view/View;

    return-void
.end method
