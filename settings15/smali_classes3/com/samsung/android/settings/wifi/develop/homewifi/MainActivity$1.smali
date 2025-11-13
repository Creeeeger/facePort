.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    iget-boolean v0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mWaitingForScanResult:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mWaitingForScanResult:Z

    iget-object v2, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v3, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    if-ne v2, v3, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mRightButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mProgressBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string/jumbo p1, "resultsUpdated"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$1;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->scanResultUpdated(Ljava/util/List;)V

    :cond_1
    return-void
.end method
