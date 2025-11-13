.class public final synthetic Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/bluetooth/CsipDeviceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/CsipDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/settingslib/bluetooth/CsipDeviceManager;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/CsipDeviceManager;->isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method
