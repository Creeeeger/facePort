.class final Lcom/android/systemui/ShelfToolTipManager$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/ShelfToolTipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ShelfToolTipManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/ShelfToolTipManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/ShelfToolTipManager$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/ShelfToolTipManager$1;

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    invoke-direct {v0, p0, p4}, Lcom/android/systemui/ShelfToolTipManager$1;-><init>(Lcom/android/systemui/ShelfToolTipManager;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/ShelfToolTipManager$1;->Z$0:Z

    iput-boolean p2, v0, Lcom/android/systemui/ShelfToolTipManager$1;->Z$1:Z

    iput-boolean p3, v0, Lcom/android/systemui/ShelfToolTipManager$1;->Z$2:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/ShelfToolTipManager$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/ShelfToolTipManager$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager$1;->Z$0:Z

    iget-boolean v0, p0, Lcom/android/systemui/ShelfToolTipManager$1;->Z$1:Z

    iget-boolean v1, p0, Lcom/android/systemui/ShelfToolTipManager$1;->Z$2:Z

    sget-object v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v2, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mFirstExpanded:Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ShelfToolTipManager$1;->this$0:Lcom/android/systemui/ShelfToolTipManager;

    iget-boolean p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mFirstExpanded:Z

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/ShelfToolTipManager;->mFirstExpanded:Z

    invoke-static {p0}, Lcom/android/systemui/ShelfToolTipManager;->access$tryToShowToolTip(Lcom/android/systemui/ShelfToolTipManager;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/ShelfToolTipManager;->mNotiSettingTip:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/systemui/ShelfToolTipManager;->releaseToolTip(Z)V

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
