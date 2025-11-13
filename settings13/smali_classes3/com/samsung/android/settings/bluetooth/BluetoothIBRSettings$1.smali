.class Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;
.super Ljava/lang/Object;
.source "BluetoothIBRSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled()V
    .locals 1

    const-string p0, "BluetoothIBRSettings"

    const-string v0, "onDialogCanceled ::"

    .line 233
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogNegativeClicked()V
    .locals 2

    const-string v0, "BluetoothIBRSettings"

    const-string v1, "onDialogNegativeClicked ::"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->event_in_band_ringtone_setting_dialog_negative:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-static {v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDialogPositiveClicked()V
    .locals 4

    const-string v0, "BluetoothIBRSettings"

    const-string v1, "onDialogPositiveClicked ::"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    .line 207
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_in_band_ringtone_setting_dialog_positive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-$$Nest$fgetmLocalBluetoothAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "bluetooth_restart"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_bluetooth_restart"

    .line 214
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-$$Nest$misInBandRingtoneEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->-$$Nest$msetInBandRingtone(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;Z)V

    return-void
.end method
