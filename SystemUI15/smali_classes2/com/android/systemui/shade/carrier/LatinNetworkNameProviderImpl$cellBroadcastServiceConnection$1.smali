.class public final Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "LatinNetworkNameProvider"

    const-string p1, "Binding died"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "LatinNetworkNameProvider"

    const-string p1, "Null binding"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "LatinNetworkNameProvider"

    const-string v0, "connected to CellBroadcastService"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    invoke-static {p2}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastService:Landroid/telephony/ICellBroadcastService;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "LatinNetworkNameProvider"

    const-string v0, "CellBroadcastService is disconnected unexpectedly"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$cellBroadcastServiceConnection$1;->this$0:Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->cellBroadcastService:Landroid/telephony/ICellBroadcastService;

    return-void
.end method
