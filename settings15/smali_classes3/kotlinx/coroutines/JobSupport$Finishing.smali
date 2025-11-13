.class public final Lkotlinx/coroutines/JobSupport$Finishing;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# instance fields
.field public final _exceptionsHolder:Lkotlinx/atomicfu/AtomicRef;

.field public final _isCompleting:Lkotlinx/atomicfu/AtomicBoolean;

.field public final _rootCause:Lkotlinx/atomicfu/AtomicRef;

.field public final list:Lkotlinx/coroutines/NodeList;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    new-instance p1, Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lkotlinx/atomicfu/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting:Lkotlinx/atomicfu/AtomicBoolean;

    new-instance p1, Lkotlinx/atomicfu/AtomicRef;

    invoke-direct {p1, p2}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Lkotlinx/atomicfu/AtomicRef;

    new-instance p1, Lkotlinx/atomicfu/AtomicRef;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method


# virtual methods
.method public final addExceptionLocked(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p0, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    instance-of p0, v0, Ljava/util/ArrayList;

    if-eqz p0, :cond_5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "State is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getList()Lkotlinx/coroutines/NodeList;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    return-object p0
.end method

.method public final getRootCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Lkotlinx/atomicfu/AtomicRef;

    iget-object p0, p0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final isActive$1()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCancelling()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final sealLocked(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p1, Lkotlinx/coroutines/JobSupportKt;->SEALED:Lkotlinx/coroutines/internal/Symbol;

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p0, p1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "State is "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v0

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v1

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Lkotlinx/atomicfu/AtomicRef;

    iget-object v3, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    const-string v4, "Finishing[cancelling="

    const-string v5, ", completing="

    const-string v6, ", rootCause="

    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
