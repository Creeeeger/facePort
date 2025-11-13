.class Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 1322
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1327
    sget v0, Lcom/android/settings/R$id;->bluetooth_profile:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->event_bluetooth_setting_profile_setting_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1332
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$monStartProfileSettings(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 1333
    :cond_0
    sget v0, Lcom/android/settings/R$id;->bluetooth_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "BluetoothSettings"

    if-eqz v1, :cond_1

    const-string v1, "onClick() called for tips"

    .line 1334
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fireTips(Landroid/content/Context;)V

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    .line 1338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_setting_list_tips:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1339
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getFailCase()Ljava/lang/String;

    move-result-object p1

    .line 1337
    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1341
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick() called for other View: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
