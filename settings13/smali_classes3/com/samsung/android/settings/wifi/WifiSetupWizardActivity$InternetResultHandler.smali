.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;
.super Landroid/os/Handler;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternetResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    .line 711
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 715
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->handleResult(I)V

    return-void
.end method

.method protected handleResult(I)V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmActivity(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$InternetResultHandler;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
