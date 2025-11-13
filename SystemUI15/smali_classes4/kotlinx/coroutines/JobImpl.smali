.class public Lkotlinx/coroutines/JobImpl;
.super Lkotlinx/coroutines/JobSupport;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final handlesException:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->initParentJob(Lkotlinx/coroutines/Job;)V

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    iget-object p1, p1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    instance-of v1, p1, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p1, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/JobSupport;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport;->getHandlesException$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_3
    iget-object p1, p1, Lkotlinx/coroutines/JobSupport;->_parentHandle:Lkotlinx/atomicfu/AtomicRef;

    iget-object p1, p1, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    instance-of v3, p1, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v3, :cond_4

    check-cast p1, Lkotlinx/coroutines/ChildHandleNode;

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, p1, Lkotlinx/coroutines/JobNode;->job:Lkotlinx/coroutines/JobSupport;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object p1, v2

    :goto_3
    if-nez p1, :cond_2

    :cond_6
    :goto_4
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return-void
.end method


# virtual methods
.method public final getHandlesException$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z
    .locals 0

    iget-boolean p0, p0, Lkotlinx/coroutines/JobImpl;->handlesException:Z

    return p0
.end method

.method public final getOnCancelComplete$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
