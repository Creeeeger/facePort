.class public final Lcom/android/systemui/volume/util/HandlerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mainThreadHandler$delegate:Lkotlin/Lazy;

.field public final workerThread$delegate:Lkotlin/Lazy;

.field public final workerThreadHandler$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/volume/util/HandlerWrapper$workerThread$2;->INSTANCE:Lcom/android/systemui/volume/util/HandlerWrapper$workerThread$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->workerThread$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/volume/util/HandlerWrapper$mainThreadHandler$2;->INSTANCE:Lcom/android/systemui/volume/util/HandlerWrapper$mainThreadHandler$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/volume/util/HandlerWrapper$workerThreadHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/HandlerWrapper$workerThreadHandler$2;-><init>(Lcom/android/systemui/volume/util/HandlerWrapper;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->workerThreadHandler$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final post(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final postInBgThread(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->workerThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final remove(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/util/HandlerWrapper;->mainThreadHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
