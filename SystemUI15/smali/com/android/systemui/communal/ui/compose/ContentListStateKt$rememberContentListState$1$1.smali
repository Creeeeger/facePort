.class final Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

.field final synthetic $widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;Lcom/android/systemui/communal/widgets/WidgetConfigurator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/content/ComponentName;

    check-cast p2, Landroid/os/UserHandle;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$1;->$viewModel:Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/ContentListStateKt$rememberContentListState$1$1;->$widgetConfigurator:Lcom/android/systemui/communal/widgets/WidgetConfigurator;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetRepository:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;

    check-cast v0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->addWidget(Landroid/content/ComponentName;Landroid/os/UserHandle;ILcom/android/systemui/communal/widgets/WidgetConfigurator;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
