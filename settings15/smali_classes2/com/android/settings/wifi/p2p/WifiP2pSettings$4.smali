.class public final Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 1

    iget p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, " remove client fail "

    const-string v0, "WifiP2pSettings"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, " connect fail "

    const-string v0, "WifiP2pSettings"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess()V
    .locals 1

    iget p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "WifiP2pSettings"

    const-string v0, " remove client success"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string p0, "WifiP2pSettings"

    const-string v0, " connect success"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
