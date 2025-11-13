.class final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    check-cast p3, Lcom/android/systemui/common/shared/model/Icon$Resource;

    check-cast p4, Lcom/android/systemui/common/shared/model/Icon$Resource;

    check-cast p5, Lcom/android/systemui/common/shared/model/Icon$Resource;

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    invoke-direct {v0, p0, p6}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->Z$0:Z

    iput-object p2, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$2:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$3:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->Z$0:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/common/shared/model/Icon$Resource;

    new-instance v10, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    iget v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->slotId:I

    iget v5, v3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->subscriptionId:I

    instance-of v3, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/SignalIconModel$Cellular;->iconId:I

    goto :goto_0

    :cond_0
    move p1, v6

    :goto_0
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    goto :goto_1

    :cond_1
    move v0, v6

    :goto_1
    if-eqz v1, :cond_2

    iget v1, v1, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v6

    :goto_2
    if-eqz v2, :cond_3

    iget v1, v2, Lcom/android/systemui/common/shared/model/Icon$Resource;->res:I

    move v9, v1

    goto :goto_3

    :cond_3
    move v9, v6

    :goto_3
    move-object v1, v10

    move v2, v7

    move v3, v4

    move v4, v5

    move v5, p1

    move v6, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;-><init>(ZIIIIZII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$updateDeXStatusBarIconModel$1;->this$0:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;

    invoke-static {p0, v10}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;->access$sendDeXStatusBarIconModel(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel;Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DeXStatusBarIconModel;)V

    return-object v10

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
