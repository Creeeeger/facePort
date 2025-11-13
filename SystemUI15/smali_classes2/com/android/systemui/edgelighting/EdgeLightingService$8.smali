.class public final Lcom/android/systemui/edgelighting/EdgeLightingService$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$8;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$8;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    sget p1, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.android.systemui.edgelighting.interfaces.ISystemUIConditionListener"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub$Proxy;

    invoke-direct {p1, p2}, Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/edgelighting/EdgeLightingService;->sConfigured:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onServiceDisconnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgeLightingService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingService$8;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingService;->mConditionListener:Lcom/android/systemui/edgelighting/interfaces/ISystemUIConditionListener;

    return-void
.end method
