.class public final synthetic Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

.field public final synthetic f$1:Lcom/google/common/base/Supplier;

.field public final synthetic f$2:Lcom/google/common/base/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;->f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    iput-object p2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;->f$1:Lcom/google/common/base/Supplier;

    iput-object p3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;->f$2:Lcom/google/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;->f$1:Lcom/google/common/base/Supplier;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;->f$2:Lcom/google/common/base/Supplier;

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;->f$0:Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;

    invoke-static {p0, v0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->$r8$lambda$q9Oi8E9HVApRLCyGdubAuFfkUk0(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
