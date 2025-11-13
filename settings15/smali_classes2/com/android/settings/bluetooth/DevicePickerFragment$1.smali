.class public final Lcom/android/settings/bluetooth/DevicePickerFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/DevicePickerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0232

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "DevicePickerFragment"

    if-eqz v1, :cond_2

    const-string v1, "onClick() called for tips"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->fireTips(Landroid/content/Context;)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerFragment;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f140ea9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getFailCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "Device is null"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onClick() called for other View: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
