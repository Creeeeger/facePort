.class public final Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $item:Ljava/lang/Object;

.field final synthetic $option$inlined:I

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->$item:Ljava/lang/Object;

    iput p3, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->$option$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;

    iget-object v0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->$item:Ljava/lang/Object;

    iget p0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->$option$inlined:I

    invoke-direct {p1, v0, p2, p0}, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->$item:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/settings/spa/notification/AppNotificationsRecord;

    sget-object v1, Lcom/android/settings/spa/notification/SpinnerItem;->Companion:Lcom/android/settings/spa/notification/SpinnerItem$Companion;

    iget p0, p0, Lcom/android/settings/spa/notification/AppNotificationsListModel$filter$lambda$1$$inlined$asyncFilter$1$1;->$option$inlined:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/settings/spa/notification/SpinnerItem;->$ENTRIES:Lkotlin/enums/EnumEntries;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/notification/SpinnerItem;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    const/4 v3, 0x3

    if-eq p0, v3, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object p0, v0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->controller:Lcom/android/settings/spa/notification/AppNotificationController;

    invoke-virtual {p0}, Lcom/android/settings/spa/notification/AppNotificationController;->getEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->sentState:Lcom/android/settings/spa/notification/NotificationSentState;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/android/settings/spa/notification/AppNotificationsRecord;->sentState:Lcom/android/settings/spa/notification/NotificationSentState;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
