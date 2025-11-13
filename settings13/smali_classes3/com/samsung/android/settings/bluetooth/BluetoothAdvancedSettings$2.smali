.class Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 647
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    const-string v1, "BluetoothAdvancedSettings"

    if-eq p2, v0, :cond_4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "AlertDialog OnClickListener :: Positive "

    .line 652
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result p2

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc

    if-ne p2, v0, :cond_2

    .line 656
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 657
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "bluetooth_restart"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "key_bluetooth_restart"

    .line 658
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 659
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 662
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$misInBandRingtoneEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "true"

    goto :goto_0

    :cond_3
    const-string p2, "false"

    :goto_0
    const-string v0, "persist.bluetooth.disableinbandringing"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-static {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;->-$$Nest$misInBandRingtoneEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;)Z

    move-result p2

    .line 665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.bt.hfp.intent.action.INBAND_RINGTONE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.bt.hfp.intent.extra.INBAND_RINGTONE_STATE"

    .line 666
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x1000000

    .line 667
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 671
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    :cond_4
    const-string p0, "AlertDialog OnClickListener :: Negative "

    .line 674
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1
    return-void
.end method
