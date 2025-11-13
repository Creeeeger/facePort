.class public final synthetic Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->$r8$lambda$T1Z7VW8EKCMsFWo-Do3fzr0Z7j8(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method
