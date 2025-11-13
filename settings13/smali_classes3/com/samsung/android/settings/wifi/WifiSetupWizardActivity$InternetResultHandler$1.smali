.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->handleResult(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;I)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 724
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_internet_unavailable_message:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsFristResultReceived(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 726
    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->val$result:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 741
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceWithPopUp()Z

    move-result v4

    .line 742
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceDisableNextButton()Z

    move-result v1

    goto :goto_0

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 734
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_captive_portal_message:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceWithPopUp()Z

    move-result v4

    .line 736
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceDisableNextButton()Z

    move-result v1

    goto :goto_0

    .line 746
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 747
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmButtonUpdater(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceDisableNextButton()Z

    move-result v1

    :goto_0
    xor-int/2addr v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    .line 752
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0, v2, v4, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$mallowToGoNext(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;ZZLjava/lang/String;)V

    return-void
.end method
