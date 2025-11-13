.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/samsung/android/settings/general/ResetSettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mActivity:Landroid/app/Activity;

.field public mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field mContentView:Landroid/view/View;

.field mEraseEsim:Z

.field public mIsUnderProgress:Z

.field mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

.field mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

.field mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

.field public mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/general/ResetSettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsUnderProgress:Z

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x54

    return p0
.end method

.method public final getResetButtonTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f141ebd

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    new-instance v0, Lcom/android/settings/ResetNetworkRequest;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/settings/ResetNetworkRequest;->mResetOptions:I

    iput v1, v0, Lcom/android/settings/ResetNetworkRequest;->mResetTelephonyManager:I

    iput v1, v0, Lcom/android/settings/ResetNetworkRequest;->mResetApn:I

    iput v1, v0, Lcom/android/settings/ResetNetworkRequest;->mSubscriptionIdToResetIms:I

    const-string v3, "resetNetworkOptions"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/ResetNetworkRequest;->mResetOptions:I

    const-string v2, "resetEsimPackage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/ResetNetworkRequest;->mResetEsimPackageName:Ljava/lang/String;

    const-string v2, "resetTelephonyNetPolicySubId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/ResetNetworkRequest;->mResetTelephonyManager:I

    const-string v2, "resetApnSubId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/ResetNetworkRequest;->mResetApn:I

    const-string v2, "resetImsSubId"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/android/settings/ResetNetworkRequest;->mSubscriptionIdToResetIms:I

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    new-instance p1, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;Lcom/android/settings/ResetNetworkRequest;)V

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;

    iget-object p3, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, p3}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p2}, Lcom/android/settings/network/ResetNetworkRestrictionViewBuilder;->build()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    invoke-virtual {p0}, Lcom/android/settings/ResetSubscriptionContract;->close()V

    const-string p0, "ResetNetworkConfirm"

    const-string p1, "Access deny."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    const p2, 0x7f0d097d

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/ResetSubscriptionContract;->close()V

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public final onResetButtonClick()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsUnderProgress:Z

    const-string v1, "ResetNetworkConfirm"

    if-eqz v0, :cond_0

    const-string p0, "resetMobileNetwork already under progress. Skip request"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mIsUnderProgress:Z

    const/16 v2, 0x54

    const/16 v3, 0x1238

    invoke-static {v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetSubscriptionContract:Lcom/android/settings/ResetSubscriptionContract;

    invoke-virtual {v2}, Lcom/android/settings/ResetSubscriptionContract;->getAnyMissingSubscriptionId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "subId "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " no longer active"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void

    :cond_2
    const-string v2, "secResetNetwork is started."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Reset Allowed Network for apps"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "netpolicy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getAllFirewallRuleMobileData()[I

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_3

    aget v7, v3, v6

    invoke-virtual {v2, v7, v0}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/net/ConnectivitySettingsManager;->setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V

    const-string v0, "secResetNetwork is done"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    new-array p0, v5, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    iget v0, p0, Lcom/android/settings/ResetNetworkRequest;->mResetOptions:I

    const-string v1, "resetNetworkOptions"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "resetEsimPackage"

    iget-object v1, p0, Lcom/android/settings/ResetNetworkRequest;->mResetEsimPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "resetTelephonyNetPolicySubId"

    iget v1, p0, Lcom/android/settings/ResetNetworkRequest;->mResetTelephonyManager:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "resetApnSubId"

    iget v1, p0, Lcom/android/settings/ResetNetworkRequest;->mResetApn:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "resetImsSubId"

    iget p0, p0, Lcom/android/settings/ResetNetworkRequest;->mSubscriptionIdToResetIms:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setSubtitle()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkRequest:Lcom/android/settings/ResetNetworkRequest;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkRequest;->mResetEsimPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v0, 0x7f0a0c9d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f141edd

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
