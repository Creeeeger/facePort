.class Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$5;
.super Ljava/lang/Object;
.source "SecBluetoothDeviceDetailsSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 631
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$fgetmNoiseController(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$fgetmNoiseController(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setDelayEnabled()V

    .line 634
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$fgetmAdvancedController(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$5;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$fgetmAdvancedController(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setDelayEnabled()V

    :cond_2
    :goto_0
    return v0
.end method
