.class public final synthetic Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;

    check-cast p1, Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    check-cast p2, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    return-void
.end method
