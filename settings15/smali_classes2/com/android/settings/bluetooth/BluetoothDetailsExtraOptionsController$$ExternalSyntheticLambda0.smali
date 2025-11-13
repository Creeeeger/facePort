.class public final synthetic Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsExtraOptionsController;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
