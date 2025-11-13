.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$3;
.super Landroid/util/SparseIntArray;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p2, 0x4

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
