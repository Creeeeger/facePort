.class public final Lkotlinx/coroutines/ChildHandleNode;
.super Lkotlinx/coroutines/JobCancellingNode;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/ChildHandle;


# instance fields
.field public final childJob:Lkotlinx/coroutines/ChildJob;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/ChildJob;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/JobCancellingNode;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/ChildJob;

    return-void
.end method


# virtual methods
.method public final childCancelled(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/JobSupport;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->childCancelled(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public final getParent()Lkotlinx/coroutines/Job;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/JobSupport;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ChildHandleNode;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/JobSupport;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/ChildJob;

    check-cast p0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelImpl$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    return-void
.end method
