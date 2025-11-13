.class final Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;
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
.field final synthetic $forceShowHeadsUp:Z

.field final synthetic $showAmbient:Z

.field final synthetic $showDismissed:Z

.field final synthetic $showLowPriority:Z

.field final synthetic $showPulsing:Z

.field final synthetic $showRepliedMessages:Z

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;ZZZZZZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;",
            "ZZZZZZ",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$forceShowHeadsUp:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showAmbient:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showLowPriority:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showDismissed:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showRepliedMessages:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showPulsing:Z

    const/4 p1, 0x4

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    move-object v8, p4

    check-cast v8, Lkotlin/coroutines/Continuation;

    new-instance p4, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$forceShowHeadsUp:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showAmbient:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showLowPriority:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showDismissed:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showRepliedMessages:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showPulsing:Z

    move-object v0, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;ZZZZZZLkotlin/coroutines/Continuation;)V

    iput-object p1, p4, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->L$0:Ljava/lang/Object;

    iput-object p2, p4, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->L$1:Ljava/lang/Object;

    iput-boolean p3, p4, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->L$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->Z$0:Z

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$forceShowHeadsUp:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showAmbient:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showLowPriority:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showDismissed:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showRepliedMessages:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1;->$showPulsing:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor$filteredNotifSet$1$1;-><init>(Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;ZZZZZZLjava/lang/String;Z)V

    invoke-static {v0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toSet(Lkotlin/sequences/Sequence;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
