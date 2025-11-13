.class public final synthetic Lcom/android/settingslib/bluetooth/CsipDeviceManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
