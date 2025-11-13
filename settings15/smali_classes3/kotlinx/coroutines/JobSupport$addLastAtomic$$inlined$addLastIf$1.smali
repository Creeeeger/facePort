.class public final Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $expect$inlined:Ljava/lang/Object;

.field public final _consensus:Lkotlinx/atomicfu/AtomicRef;

.field public final newNode:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

.field public oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

.field public final synthetic this$0:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/Incomplete;)V
    .locals 0

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->this$0:Lkotlinx/coroutines/JobSupport;

    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->$expect$inlined:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lkotlinx/atomicfu/AtomicRef;

    sget-object p3, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Lkotlinx/coroutines/internal/Symbol;

    invoke-direct {p2, p3}, Lkotlinx/atomicfu/AtomicRef;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->newNode:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    return-void
.end method


# virtual methods
.method public final perform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/internal/AtomicKt;->NO_DECISION:Lkotlinx/coroutines/internal/Symbol;

    const-string v2, "affected"

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->this$0:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getState$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->$expect$inlined:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->CONDITION_FALSE:Lkotlinx/coroutines/internal/Symbol;

    :goto_0
    iget-object v3, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    iget-object v3, v3, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    if-eq v3, v1, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v3, v1, v0}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->_consensus:Lkotlinx/atomicfu/AtomicRef;

    iget-object v0, v0, Lkotlinx/atomicfu/AtomicRef;->value:Ljava/lang/Object;

    :cond_3
    :goto_1
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->newNode:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eqz v1, :cond_5

    move-object v3, v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    :goto_3
    if-eqz v3, :cond_6

    iget-object p1, p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {p1, p0, v3}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    iget-object p0, p0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;->oldNext:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->finishAdd(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    :cond_6
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "@"

    invoke-static {v0, v1, p0}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
