.class Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$4;
.super Ljava/lang/Object;
.source "SecBluetoothDeviceDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->showUnpairDialog(Z)V
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

    .line 589
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 591
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$munpairDevice(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    .line 592
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 593
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->-$$Nest$mfinishActivity(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    return-void
.end method
