.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;

    check-cast p1, Landroid/companion/AssociationInfo;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsDataSyncController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
