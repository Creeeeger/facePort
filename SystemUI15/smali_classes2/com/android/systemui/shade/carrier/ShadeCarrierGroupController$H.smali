.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mUpdateCarrierInfo:Ljava/util/function/Consumer;

.field public final mUpdateState:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;->mUpdateCarrierInfo:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;->mUpdateState:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;->mUpdateState:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;->mUpdateCarrierInfo:Ljava/util/function/Consumer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
