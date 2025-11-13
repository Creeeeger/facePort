.class public final Lcom/android/settings/wifi/WifiStatusTest$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/wifi/WifiStatusTest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v1, v0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->setWifiStateText(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit16 v2, v0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    ushr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mTxLinkSpeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Mbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mRxLinkSpeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiStatusTest$2;->this$0:Lcom/android/settings/wifi/WifiStatusTest;

    sget p1, Lcom/android/settings/wifi/WifiStatusTest;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141df4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$4;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    new-instance v1, Lcom/android/settings/wifi/WifiStatusTest$5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/settings/wifi/WifiStatusTest$5;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Lcom/android/settings/wifi/WifiStatusTest$4;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/settings/wifi/WifiStatusTest$5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/settings/wifi/WifiStatusTest$5;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Lcom/android/settings/wifi/WifiStatusTest$4;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
