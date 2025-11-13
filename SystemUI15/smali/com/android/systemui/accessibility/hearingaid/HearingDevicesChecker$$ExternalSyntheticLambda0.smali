.class public final synthetic Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isActiveMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAvailableHearingDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->enableHideExclusivelyManagedBluetoothDevice()V

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isExclusivelyManagedBluetoothDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/settingslib/flags/Flags;->enableHideExclusivelyManagedBluetoothDevice()V

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesChecker;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isExclusivelyManagedBluetoothDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
