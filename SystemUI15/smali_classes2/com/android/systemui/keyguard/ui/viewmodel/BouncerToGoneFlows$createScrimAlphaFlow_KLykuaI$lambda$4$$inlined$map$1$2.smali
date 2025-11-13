.class public final Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $isShadeExpanded$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $leaveShadeOpen$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $willRunDismissFromKeyguard$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;->$willRunDismissFromKeyguard$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;->$isShadeExpanded$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;->$leaveShadeOpen$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;

    iget v3, v2, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v9

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;->$willRunDismissFromKeyguard$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;->$isShadeExpanded$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/ScrimAlpha;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object v6, v1

    move v8, v9

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/keyguard/shared/model/ScrimAlpha;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/android/systemui/keyguard/shared/model/ScrimAlpha;

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/keyguard/shared/model/ScrimAlpha;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;->$leaveShadeOpen$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/ScrimAlpha;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/keyguard/shared/model/ScrimAlpha;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/android/systemui/keyguard/shared/model/ScrimAlpha;

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/keyguard/shared/model/ScrimAlpha;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    iput v5, v2, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/BouncerToGoneFlows$createScrimAlphaFlow_KLykuaI$lambda$4$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
