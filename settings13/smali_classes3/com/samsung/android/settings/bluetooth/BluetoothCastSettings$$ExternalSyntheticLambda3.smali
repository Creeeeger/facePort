.class public final synthetic Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-static {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->$r8$lambda$YD7f7yyrcd2Dy5WId7Ub7_GAOsQ(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method
