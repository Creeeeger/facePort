.class public final Lcom/android/systemui/volume/util/BluetoothIconServerUtils$init$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Ljava/lang/Runnable;

.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils$init$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils$init$1;->$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothIconServerUtils;

    iget-object v1, p0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils$init$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothIconServerUtils$init$1;->$callback:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/volume/util/BluetoothIconServerUtils$executeServerSyncInit$1;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/volume/util/BluetoothIconServerUtils$executeServerSyncInit$1;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
