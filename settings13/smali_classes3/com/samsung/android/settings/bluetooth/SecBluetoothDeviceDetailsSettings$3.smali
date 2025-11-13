.class Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$3;
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

    .line 596
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 598
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
