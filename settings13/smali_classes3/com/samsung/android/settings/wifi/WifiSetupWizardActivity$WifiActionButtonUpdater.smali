.class Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;
.super Ljava/lang/Object;
.source "WifiSetupWizardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiActionButtonUpdater"
.end annotation


# instance fields
.field private final mIsDebugSkipDialog:Z

.field private mIsNorthAmericaOperator:I

.field private final mIsSetupWizardForSamsungAccount:Z

.field private mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;


# direct methods
.method static bridge synthetic -$$Nest$mupdateButton(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/content/Intent;)V
    .locals 2

    .line 519
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 514
    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    const-string v0, "extra_samsungaccount_for_wifisetupwizard"

    .line 520
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string p2, "WifiSetupWizard"

    const-string v1, "Wi-Fi setup wizard for samsung account"

    .line 521
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 522
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsSetupWizardForSamsungAccount:Z

    goto :goto_0

    .line 524
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsSetupWizardForSamsungAccount:Z

    .line 526
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$sfgetDEV()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "wifi.test.skip"

    .line 527
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsDebugSkipDialog:Z

    goto :goto_1

    .line 529
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsDebugSkipDialog:Z

    .line 531
    :goto_1
    new-instance p2, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    return-void
.end method

.method private isNetworkRequired()Z
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 645
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->isNetworkRequired()Z

    move-result p0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNetworkRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSetupWizard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isNorthAmericaOperator()Z
    .locals 3

    .line 651
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "ro.csc.countryiso_code"

    .line 652
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "US"

    .line 653
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    return v1

    :cond_0
    const-string v0, "ro.csc.country_code"

    .line 657
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "USA"

    .line 658
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    return v1

    .line 664
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsDebugSkipDialog:Z

    if-nez v0, :cond_3

    iget p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsNorthAmericaOperator:I

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private updateButton(ZZ)V
    .locals 4

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateButton isNext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", viewEnable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WifiSetupWizard"

    invoke-static {v3, v0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$000(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    .line 621
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$100(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 623
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    sget v2, Lcom/android/settings/R$string;->next_button_label:I

    invoke-static {p1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$200(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    .line 624
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$300(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Ljava/lang/Boolean;)V

    .line 625
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$400(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    .line 626
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsSkipButtonEnabled(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 627
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsAutoFinished(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsNetworkValidated(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 628
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsAutoFinished(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    .line 629
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->mainAction(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "Ignore mainAction, mIsAutoFinished is true"

    .line 631
    invoke-static {v3, p0}, Lcom/samsung/android/settings/wifi/SetupWizardLogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    sget v1, Lcom/android/settings/R$string;->wifi_skip_button:I

    invoke-static {p1, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$500(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    .line 635
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->access$600(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;I)V

    .line 636
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0, p2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmIsSkipButtonEnabled(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAndShowNetworkRestrictionDialog()V
    .locals 1

    .line 535
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNetworkRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misWifiNetworkConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->showOnceWarningDialog()V

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->checkAndUpdateButton(Z)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misNetworkAvailable(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->checkAndUpdateButton(Z)V

    :goto_0
    return-void
.end method

.method public checkAndUpdateButton(Z)V
    .locals 6

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndUpdateButton isNetworkAvailable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiSetupWizard"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 573
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misWifiNetworkConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceWithPopUp()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmWifiNetwork(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/Network;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 575
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmCm(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/ConnectivityManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 576
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fputmCm(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;Landroid/net/ConnectivityManager;)V

    .line 578
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmCm(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/ConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmWifiNetwork(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 579
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmCm(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/ConnectivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmWifiNetwork(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    :cond_1
    if-eqz p1, :cond_4

    .line 581
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    iget-boolean v3, v3, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->isWifiInternetAvailable:Z

    if-nez v3, :cond_4

    const-string v3, "check internet service available or not"

    .line 583
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsSetupWizardForSamsungAccount:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetisNetworkRequiredByKme(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetisNetworkRequiredByFrp(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    .line 587
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misBlockedSkipByRequest(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->is523JigOn()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 591
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_2

    .line 589
    :cond_3
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_2

    .line 594
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_2

    .line 597
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsSetupWizardForSamsungAccount:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetisNetworkRequiredByKme(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetisNetworkRequiredByFrp(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    .line 600
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misBlockedSkipByRequest(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->is523JigOn()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 608
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNorthAmericaOperator()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 610
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_2

    .line 612
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNetworkRequired()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_2

    .line 602
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsUsedSprintNewSetupWizard(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 603
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    goto :goto_2

    .line 606
    :cond_9
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->updateButton(ZZ)V

    :goto_2
    return-void
.end method

.method public enforceDisableNextButton()Z
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->enforceWithPopUp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misBlockedSkipByRequest(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->is523JigOn()Z

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
    return p0
.end method

.method public enforceWithPopUp()Z
    .locals 1

    .line 668
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNetworkRequired()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mIsSetupWizardForSamsungAccount:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public possibleGoToNextStep()Z
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misWifiNetworkConnected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 545
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->showSkipDialog(Z)V

    const/4 p0, 0x0

    return p0

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->isNetworkRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$misNetworkAvailable(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public showSkipDialog(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EsimSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsEsimSupported(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", eSIM detected = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsEsimDetected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pSIM detected = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsPsimDetected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSetupWizard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsEsimSupported(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsEsimDetected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->this$0:Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;->-$$Nest$fgetmIsPsimDetected(Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 561
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->showEsimNonDetectedSkipDialog()V

    goto :goto_0

    .line 563
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->showSkipDialog()V

    goto :goto_0

    .line 566
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiSetupWizardActivity$WifiActionButtonUpdater;->mNetworkChecker:Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiNetworkRequiredChecker;->showSkipBlockedDialog()V

    :goto_0
    return-void
.end method
