.class public Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;
.super Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# instance fields
.field public mContentView:Landroid/view/ViewGroup;

.field public mContext:Landroid/content/Context;

.field public mPersonalAccRegistered:Z

.field public mSelectedTab:I

.field public mUserId:I

.field public mWorkProfileAccRegistered:Z

.field public mWorkUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mSelectedTab:I

    return-void
.end method


# virtual methods
.method public final finishOrReturnToPlaceHolder()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/activityembedding/ActivityEmbeddingUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.CONNECTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public final getFragments()[Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const/4 v1, 0x2

    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;

    invoke-direct {v1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/IntelligenceServiceSettings;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    filled-new-array {v0, v1}, [Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult: requestCode : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resultCode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ProfileSelectGalaxyAI"

    invoke-static {v0, p3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x7d2

    const-string v1, "ai_info_confirmed"

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p1, p3, :cond_2

    if-ne p2, v2, :cond_1

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExistsAsUser(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkProfileAccRegistered:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isChildAccount(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkUserId:I

    invoke-static {p1, v1, v3, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->finishOrReturnToPlaceHolder()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->finishOrReturnToPlaceHolder()V

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x7d1

    const-string v5, "ActivityNotFoundException"

    if-ne p1, v4, :cond_5

    if-ne p2, v2, :cond_4

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExistsAsUser(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkProfileAccRegistered:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkUserId:I

    invoke-static {p1, v1, v3, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkUserId:I

    invoke-static {p1, p0, p3, v3, p2}, Lcom/samsung/android/settings/account/AccountUtils;->addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;III)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->finishOrReturnToPlaceHolder()V

    goto/16 :goto_0

    :cond_5
    const/16 p3, 0x3ea

    if-ne p1, p3, :cond_8

    if-ne p2, v2, :cond_7

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExists(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mPersonalAccRegistered:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/account/AccountUtils;->isChildAccount(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->finishOrReturnToPlaceHolder()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->finishOrReturnToPlaceHolder()V

    goto :goto_0

    :cond_8
    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_b

    if-ne p2, v2, :cond_a

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExistsAsUser(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mPersonalAccRegistered:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_9
    :try_start_1
    const-string p1, "addSamsungAccount"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mUserId:I

    invoke-static {p1, p0, p3, v3, p2}, Lcom/samsung/android/settings/account/AccountUtils;->addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;III)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->finishOrReturnToPlaceHolder()V

    :cond_b
    :goto_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ":settings:show_fragment_tab"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mSelectedTab:I

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportedIntelligenceService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ProfileSelectGalaxyAI"

    const-string v0, "not support IntelligenceService"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->enableAutoFlowLogging(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mUserId:I

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getManagedProfileId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkUserId:I

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExists(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mPersonalAccRegistered:Z

    iget-object v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getManagedProfileId(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExistsAsUser(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkProfileAccRegistered:Z

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContentView:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p2, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI$1;

    invoke-direct {p2, p0}, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI$1;-><init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-boolean p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mPersonalAccRegistered:Z

    const p2, 0x7f0a0fb9

    const p3, 0x7f0a0fab

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkProfileAccRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mSelectedTab:I

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->refreshUI(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final refreshUI(I)V
    .locals 3

    const/high16 v0, 0x24000000

    const-string v1, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mPersonalAccRegistered:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const/16 v1, 0x3e9

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkProfileAccRegistered:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectGalaxyAI;->mWorkUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const/16 v1, 0x7d1

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "refreshUI() postion error : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProfileSelectGalaxyAI"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
