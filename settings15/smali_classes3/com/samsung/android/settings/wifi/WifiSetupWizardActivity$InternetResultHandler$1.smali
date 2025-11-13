.class public final Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

.field public final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->val$result:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const v1, 0x7f1435a8

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFristResultReceived:Z

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->val$result:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->enforceWithPopUp()Z

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->isNextStepBlocked()Z

    move-result v1

    :goto_0
    xor-int/2addr v1, v2

    move v7, v5

    move v5, v1

    move v1, v7

    goto :goto_4

    :cond_1
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v3, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mAllowCaptiveByKme:Z

    if-nez v3, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v3, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByKme:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsNetworkRequiredByFrp:Z

    if-nez v3, :cond_3

    iget-boolean v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsFrpChallengeRequired:Z

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const v1, 0x7f1434a7    # 1.9699913E38f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->enforceWithPopUp()Z

    move-result v5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->isNextStepBlocked()Z

    move-result v1

    goto :goto_0

    :cond_4
    :goto_2
    move v1, v5

    move v5, v2

    goto :goto_4

    :cond_5
    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->isNextStepBlocked()Z

    move-result v1

    goto :goto_0

    :cond_6
    :goto_3
    move v1, v5

    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    const-string v4, "WifiSetupWizard"

    if-eqz v3, :cond_7

    const-string v3, "allow to Go Next : "

    const-string v6, "/"

    invoke-static {v3, v5, v6, v1, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v0, v4}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mIsWifiCompletelyAvailable:Z

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mButtonUpdater:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;

    invoke-virtual {v3, v2, v5}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$DataOnButtonUpdater;->updateButton(ZZ)V

    :cond_7
    if-eqz v1, :cond_9

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->showNetworkErrorWarningDialogForFrp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "Exception on allowToGoNext: "

    invoke-static {v1, v0, v4}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mActivity:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->forgetCurrentNetwork()V

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_5
    return-void
.end method
