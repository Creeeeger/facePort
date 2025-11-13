.class Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;
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

    .line 717
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 720
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothAdvancedSettings"

    if-nez p1, :cond_0

    const-string p0, "onReceive :: Intent.getAction() is return null"

    .line 722
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive :: getAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 728
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 729
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmRenamePreference(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Landroidx/preference/SecPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 730
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$3;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$mupdateDeviceName(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)V

    :cond_1
    return-void
.end method
