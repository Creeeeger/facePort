.class final Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->this$0:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->this$0:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-boolean v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->Z$0:Z

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$2;->this$0:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->Companion:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_3

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/content/pm/UserInfo;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel;

    instance-of v3, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    iget-object v2, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    goto :goto_2

    :cond_4
    instance-of v3, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;

    if-eqz v3, :cond_6

    check-cast v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;

    iget-object v2, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v5, :cond_5

    move v3, v4

    :cond_5
    xor-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    move-object p1, p0

    :goto_3
    return-object p1

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
