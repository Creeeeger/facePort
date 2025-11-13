.class public final Lcom/android/settings/search/actionbar/SearchMenuController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;


# instance fields
.field public final mHost:Landroidx/fragment/app/Fragment;

.field public final mIsEmbeddingActivityEnabled:Z

.field public mKnoxCustomIsProKioskMode:Z

.field public final mPageId:I

.field public mSearchItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mKnoxCustomIsProKioskMode:Z

    iput-object p1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mPageId:I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mIsEmbeddingActivityEnabled:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    new-instance p2, Lcom/android/settings/search/actionbar/SearchMenuController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/search/actionbar/SearchMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/search/actionbar/SearchMenuController;)V

    iput-object p2, p1, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->mOnConfigurationChangedListener:Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onConfigurationChangedListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    iget-object p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f140a2b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    const/16 v3, 0xb

    const-string v4, "SearchMenuController"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const-string p2, "isSearchAvailable : Secure folder"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p2, v5

    goto/16 :goto_6

    :cond_0
    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p2, "isSearchAvailable : SettingsIntelligence is not enabled"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const-string p2, "isSearchAvailable : Menu is null"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v6, "need_search_icon_in_action_bar"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string p2, "isSearchAvailable() : menu does not contains search item"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mKnoxCustomIsProKioskMode:Z

    :cond_6
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-boolean v2, Lcom/samsung/android/settings/knox/KnoxUtils;->appRestrictionState:Z

    if-eqz v2, :cond_8

    if-eqz p2, :cond_7

    invoke-static {p2}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p2

    goto :goto_1

    :cond_7
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_8

    invoke-virtual {p2, v1, v5}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "Settings_Search"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "hide"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_2

    :cond_8
    move p2, v5

    :goto_2
    if-nez p2, :cond_a

    iget-boolean p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mKnoxCustomIsProKioskMode:Z

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 p2, 0x1

    goto :goto_6

    :cond_a
    :goto_3
    const-string p2, "isSearchAvailable() : KNOX restriction"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    :goto_4
    const-string p2, "isSearchAvailable() : arguments is null or needSearchIconInActionBar is false"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    :goto_5
    const-string p2, "isSearchAvailable : Device is not provisioned or Setup wizard is running"

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_6
    if-nez p2, :cond_d

    const-string p0, "onCreateOptionsMenu(). Not support search menu"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const p2, 0x7f14207f

    invoke-interface {p1, v5, v3, v5, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f080a58

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance p2, Lcom/android/settings/search/actionbar/SearchMenuController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/search/actionbar/SearchMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/search/actionbar/SearchMenuController;Landroidx/fragment/app/FragmentActivity;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-boolean p2, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mIsEmbeddingActivityEnabled:Z

    if-eqz p2, :cond_e

    iput-object p1, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mSearchItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/search/actionbar/SearchMenuController;->updateSearchItemVisibility()V

    :cond_e
    return-void
.end method

.method public final updateSearchItemVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/search/actionbar/SearchMenuController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method
