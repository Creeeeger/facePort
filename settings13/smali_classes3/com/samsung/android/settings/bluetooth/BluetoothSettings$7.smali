.class Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 1611
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmTipsDescriptionPopup(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmTipsDescriptionPopup(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmTipsDescriptionPopup(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/widget/SemTipPopup;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    return-void
.end method
