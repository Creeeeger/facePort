.class public final Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    return-void
.end method
