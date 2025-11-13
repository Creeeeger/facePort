.class public final synthetic Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->sChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setMyDeviceDescriptionMargin(Landroid/widget/TextView;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDeviceDescriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setMyDeviceDescriptionMargin(Landroid/widget/TextView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
