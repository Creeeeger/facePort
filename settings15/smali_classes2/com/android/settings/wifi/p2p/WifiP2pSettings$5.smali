.class public final Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    const-string v0, "WifiP2pSettings"

    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    const-string p0, " stopPeerDiscovery fail "

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v1, " cancelConnect fail "

    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    sget p1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void

    :pswitch_1
    const-string p0, " remove group fail "

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, " discover fail "

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess()V
    .locals 3

    const-string v0, "WifiP2pSettings"

    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void

    :pswitch_0
    const-string v1, " cancelConnect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void

    :pswitch_1
    const-string v1, " remove group success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$5;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    const v2, 0x7f0d0a88

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->progressBarItem:Landroid/view/MenuItem;

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
