.class Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$1;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()Ljava/lang/String;
    .locals 0

    .line 257
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->SYNC:Ljava/lang/String;

    return-object p0
.end method

.method public onBind(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fputmIsSCBinded(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;Z)V

    .line 249
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->updateCloudPreference()V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothAdvancedSettings"

    const-string p1, "CloudRPC bind fail"

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
