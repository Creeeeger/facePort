.class public final synthetic Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile$$ExternalSyntheticLambda2;->f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;->$r8$lambda$aCmPCpJ5vj2-ih5t74v6vh57tc4(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method
