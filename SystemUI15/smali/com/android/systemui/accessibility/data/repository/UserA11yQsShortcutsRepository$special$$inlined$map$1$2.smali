.class public final Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Unit;

    iget-object p1, p0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;

    iget p2, p1, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;->userId:I

    iget-object p1, p1, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v2, "accessibility_qs_targets"

    invoke-interface {p1, v2, p2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    const-string p2, ":"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x6

    const/4 v4, 0x0

    invoke-static {p1, p2, v4, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput v3, v0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/data/repository/UserA11yQsShortcutsRepository$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
