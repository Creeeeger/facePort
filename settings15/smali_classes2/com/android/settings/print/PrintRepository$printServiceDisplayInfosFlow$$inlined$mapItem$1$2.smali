.class public final Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/print/PrintRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/print/PrintRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2;->this$0:Lcom/android/settings/print/PrintRepository;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;

    iget v1, v0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;-><init>(Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/printservice/PrintServiceInfo;

    iget-object v4, p0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2;->this$0:Lcom/android/settings/print/PrintRepository;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;

    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, v4, Lcom/android/settings/print/PrintRepository;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v7

    iget-object v5, v4, Lcom/android/settings/print/PrintRepository;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f141cf1

    goto :goto_2

    :cond_3
    const v8, 0x7f141cf0

    :goto_2
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v5, "getString(...)"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v4, v4, Lcom/android/settings/print/PrintRepository;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v4, "loadIcon(...)"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    const-string v2, "flattenToString(...)"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/print/PrintRepository$PrintServiceDisplayInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {p2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput v3, v0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/print/PrintRepository$printServiceDisplayInfosFlow$$inlined$mapItem$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
