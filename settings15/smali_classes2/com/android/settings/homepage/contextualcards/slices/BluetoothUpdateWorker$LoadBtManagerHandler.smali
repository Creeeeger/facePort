.class public final Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLoadBtManagerTask:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;

.field public mWorker:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;


# direct methods
.method public static -$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;
    .locals 3

    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BluetoothUpdateWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    :cond_0
    sget-object p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->sHandler:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mLoadBtManagerTask:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getLocalBtManager()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 2

    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->sLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;)V

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method
