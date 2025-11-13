.class public final Lcom/android/systemui/communal/widgets/CommunalWidgetHost;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost$Observer;


# static fields
.field public static final Companion:Lcom/android/systemui/communal/widgets/CommunalWidgetHost$Companion;


# instance fields
.field public final _appWidgetProviders:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

.field public final appWidgetManager:Ljava/util/Optional;

.field public final appWidgetProviders:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final bgScope:Lkotlinx/coroutines/CoroutineScope;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->Companion:Lcom/android/systemui/communal/widgets/CommunalWidgetHost$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/Optional;Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/util/Optional<",
            "Landroid/appwidget/AppWidgetManager;",
            ">;",
            "Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/log/LogBuffer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetManager:Ljava/util/Optional;

    iput-object p3, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    iput-object p4, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p2, "CommunalWidgetHost"

    invoke-direct {p1, p5, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->logger:Lcom/android/systemui/log/core/Logger;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->_appWidgetProviders:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetProviders:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final allocateIdAndBindWidget(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/Integer;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetHost:Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v3, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-direct {p2, v3}, Landroid/os/UserHandle;-><init>(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetManager:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "appWidgetCategory"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetManager:Ljava/util/Optional;

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v1, p2, p1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->logger:Lcom/android/systemui/log/core/Logger;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Successfully bound the widget "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v3, v4, v3}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->appWidgetManager:Ljava/util/Optional;

    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    new-instance p2, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$onProviderInfoUpdated$1;

    invoke-direct {p2, p0, v1, p1, v3}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$onProviderInfoUpdated$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalWidgetHost;ILandroid/appwidget/AppWidgetProviderInfo;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, p2, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/communal/widgets/CommunalAppWidgetHost;->deleteAppWidgetId(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to bind the widget "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v3, v4, v3}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v3
.end method

.method public final refreshProviders()V
    .locals 3

    new-instance v0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/communal/widgets/CommunalWidgetHost$refreshProviders$1;-><init>(Lcom/android/systemui/communal/widgets/CommunalWidgetHost;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/CommunalWidgetHost;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
