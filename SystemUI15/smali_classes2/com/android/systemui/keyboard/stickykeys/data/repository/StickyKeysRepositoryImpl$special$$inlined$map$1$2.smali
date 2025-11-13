.class public final Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Landroid/hardware/input/StickyModifierState;

    sget p2, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;->$r8$clinit:I

    iget-object p2, p0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isAltGrModifierOn()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->ALT_GR:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v4}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isAltGrModifierLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->ALT_GR:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v3}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isAltModifierOn()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->ALT:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v4}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isAltModifierLocked()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->ALT:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v3}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isCtrlModifierOn()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->CTRL:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v4}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isCtrlModifierLocked()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->CTRL:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v3}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isMetaModifierOn()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->META:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v4}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isMetaModifierLocked()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->META:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v3}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isShiftModifierOn()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->SHIFT:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v4}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-virtual {p1}, Landroid/hardware/input/StickyModifierState;->isShiftModifierLocked()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;->SHIFT:Lcom/android/systemui/keyboard/stickykeys/shared/model/ModifierKey;

    invoke-static {v3}, Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;->box-impl(Z)Lcom/android/systemui/keyboard/stickykeys/shared/model/Locked;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iput v3, v0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/keyboard/stickykeys/data/repository/StickyKeysRepositoryImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_d

    return-object v1

    :cond_d
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
