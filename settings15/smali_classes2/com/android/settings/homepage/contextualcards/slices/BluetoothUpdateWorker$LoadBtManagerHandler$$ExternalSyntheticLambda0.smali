.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "LoadBtManagerHandler: start loading..."

    const-string v1, "BluetoothUpdateWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->getLocalBtManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    sput-object p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->sLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "LoadBtManagerHandler took "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
