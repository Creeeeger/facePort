.class public final Lcom/android/settings/wifi/p2p/WifiP2pSettings$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;


# virtual methods
.method public final onFailure(I)V
    .locals 1

    const-string p0, "sem remove client fail "

    const-string v0, "WifiP2pSettings"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 1

    const-string p0, "WifiP2pSettings"

    const-string v0, "sem remove client success"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
