.class public final synthetic Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->$r8$lambda$GnEOAqV0Bl2gUxbjupFt2iGBxXE(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method
