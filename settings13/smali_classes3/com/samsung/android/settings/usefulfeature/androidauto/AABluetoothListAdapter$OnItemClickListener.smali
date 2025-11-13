.class Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "AABluetoothListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field device:Landroid/bluetooth/BluetoothDevice;

.field private mExpandedPos:I

.field private mListPos:I

.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;IILandroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 235
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "AABluetoothListAdapter"

    const-string v0, "OnItemClickListener"

    .line 236
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;->mListPos:I

    .line 238
    iput p3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;->mExpandedPos:I

    .line 239
    iput-object p4, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;->device:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "AABluetoothListAdapter"

    const-string v0, "onclick"

    .line 245
    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;->onStartProfileSettings(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public onStartProfileSettings(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 250
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "device"

    .line 251
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "isCalledFromSetting"

    const/4 v1, 0x1

    .line 252
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->-$$Nest$fgetcontext(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    .line 257
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter$OnItemClickListener;->this$0:Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;->-$$Nest$fgetcontext(Lcom/samsung/android/settings/usefulfeature/androidauto/AABluetoothListAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x18

    .line 258
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 259
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bluetooth_device_advanced_title:I

    .line 261
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method
