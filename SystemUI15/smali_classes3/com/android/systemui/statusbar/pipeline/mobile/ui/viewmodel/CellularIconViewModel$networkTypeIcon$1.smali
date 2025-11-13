.class final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;
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
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;

    invoke-direct {p2, p4}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;->L$0:Ljava/lang/Object;

    iput-boolean p0, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;->Z$0:Z

    iput-object p3, p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;->Z$0:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/CellularIconViewModel$networkTypeIcon$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getContentDescription()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getContentDescription()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/android/systemui/common/shared/model/ContentDescription$Resource;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getIconId()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/systemui/common/shared/model/Icon$Resource;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/model/NetworkTypeIconModel;->getIconId()I

    move-result p1

    invoke-direct {v3, p1, v1}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconLocation:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    sget-object v1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;->DATA_ICON:Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/IconLocation;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/model/DisabledDataIconModel;->iconId:I

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    move-object v2, v1

    goto :goto_3

    :cond_3
    move-object v2, v3

    :cond_4
    :goto_3
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
