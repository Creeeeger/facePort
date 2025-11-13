.class final Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;
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
.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->this$0:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lkotlin/Unit;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->this$0:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;-><init>(Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p3, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->L$0:Ljava/lang/Object;

    iput p2, p3, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->I$0:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget v0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->I$0:I

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor$widgetContent$3;->this$0:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel;

    instance-of v3, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    iget-object v3, v3, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    check-cast v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    iget v2, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->appWidgetId:I

    iget-object v5, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->userManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->userManager:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-direct {v4, v2, v3, v5, v6}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;-><init>(ILandroid/appwidget/AppWidgetProviderInfo;Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Z)V

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;

    check-cast v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;

    iget v2, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Available;->appWidgetId:I

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$DisabledWidget;-><init>(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_2

    :cond_2
    instance-of v3, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;

    if-eqz v3, :cond_3

    new-instance v4, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$PendingWidget;

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;

    iget v3, v3, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->appWidgetId:I

    check-cast v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;

    iget-object v5, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/systemui/communal/shared/model/CommunalWidgetContentModel$Pending;->icon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v3, v5, v2}, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$PendingWidget;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_2
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    return-object v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
