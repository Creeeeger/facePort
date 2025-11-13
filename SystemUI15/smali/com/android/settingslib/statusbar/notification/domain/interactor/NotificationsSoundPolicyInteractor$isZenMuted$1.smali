.class final Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;
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
.field final synthetic $stream:I

.field synthetic I$0:I

.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field synthetic Z$2:Z

.field synthetic Z$3:Z

.field label:I


# direct methods
.method public constructor <init>(ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->$stream:I

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/settingslib/statusbar/notification/data/model/ZenMode;

    iget p1, p1, Lcom/android/settingslib/statusbar/notification/data/model/ZenMode;->zenMode:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;

    iget p0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->$stream:I

    invoke-direct {v0, p0, p6}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;-><init>(ILkotlin/coroutines/Continuation;)V

    iput p1, v0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->I$0:I

    iput-boolean p2, v0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->Z$0:Z

    iput-boolean p3, v0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->Z$1:Z

    iput-boolean p4, v0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->Z$2:Z

    iput-boolean p5, v0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->Z$3:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->label:I

    if-nez v0, :cond_a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->I$0:I

    iget-boolean v0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->Z$0:Z

    iget-boolean v1, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->Z$1:Z

    iget-boolean v2, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->Z$2:Z

    iget-boolean v3, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->Z$3:Z

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_0

    goto :goto_1

    :cond_0
    iget p0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->$stream:I

    if-eq p0, v6, :cond_2

    if-eq p0, v4, :cond_2

    if-ne p0, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :cond_2
    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    iget p0, p0, Lcom/android/settingslib/statusbar/notification/domain/interactor/NotificationsSoundPolicyInteractor$isZenMuted$1;->$stream:I

    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    if-nez v0, :cond_5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    if-ne p0, v5, :cond_6

    if-nez v1, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    if-ne p0, v7, :cond_7

    if-nez v3, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    if-eq p0, v6, :cond_8

    if-ne p0, v4, :cond_9

    :cond_8
    if-nez v2, :cond_9

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
