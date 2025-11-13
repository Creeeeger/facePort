.class final Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $personList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;


# direct methods
.method public constructor <init>(Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->this$0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;

    iput-object p2, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->$personList:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;

    iget-object v0, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->this$0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;

    iget-object p0, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->$personList:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;-><init>(Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->this$0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;

    iput v2, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->label:I

    invoke-virtual {p1, p0}, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->getFrequentContactPersonByPreferenceLevel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->$personList:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/moneta/preference/entity/Person;

    sget-object v2, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/moneta/preference/entity/Person;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "most person name= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/sdk/moneta/preference/entity/Person;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "Unknown"

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object p1, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->this$0:Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;

    iget-object p1, p1, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->mIStatuBarSvc:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p0, p0, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference$getImpotantPersonList$1;->$personList:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationDataUpdateFromPDC(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    sget-object p1, Lnotification/src/com/android/systemui/notification/NotificationHighlightDpPreference;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Error calling ContentResolver: "

    invoke-static {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
