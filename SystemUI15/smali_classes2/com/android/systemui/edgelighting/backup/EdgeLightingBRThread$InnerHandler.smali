.class public final Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mThread:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;->mThread:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread$InnerHandler;->mThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/backup/EdgeLightingBRThread;->mLoopEnable:Z

    :cond_1
    :goto_0
    return-void
.end method
