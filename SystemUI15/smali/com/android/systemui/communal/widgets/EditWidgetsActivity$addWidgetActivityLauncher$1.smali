.class public final Lcom/android/systemui/communal/widgets/EditWidgetsActivity$addWidgetActivityLauncher$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/communal/widgets/EditWidgetsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/widgets/EditWidgetsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$addWidgetActivityLauncher$1;->this$0:Lcom/android/systemui/communal/widgets/EditWidgetsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Landroidx/activity/result/ActivityResult;

    iget v0, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const/4 v1, -0x1

    const-string v2, "EditWidgetsActivity"

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$addWidgetActivityLauncher$1;->this$0:Lcom/android/systemui/communal/widgets/EditWidgetsActivity;

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_WIDGET_PICKER_SHOWN:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v0, "is_pending_widget_drag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils;->INSTANCE:Lcom/android/systemui/communal/util/WidgetPickerIntentUtils;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils$WidgetExtra;

    const-string v3, "android.intent.extra.COMPONENT_NAME"

    const-class v4, Landroid/content/ComponentName;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    const-string v4, "android.intent.extra.USER"

    const-class v5, Landroid/os/UserHandle;

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    invoke-direct {v0, v3, p1}, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils$WidgetExtra;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object p1, v0, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils$WidgetExtra;->componentName:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/systemui/communal/util/WidgetPickerIntentUtils$WidgetExtra;->user:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->widgetConfigurator$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->communalViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetRepository:Lcom/android/systemui/communal/data/repository/CommunalWidgetRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/communal/data/repository/CommunalWidgetRepositoryImpl;->addWidget(Landroid/content/ComponentName;Landroid/os/UserHandle;ILcom/android/systemui/communal/widgets/WidgetConfigurator;)V

    goto :goto_0

    :cond_0
    const-string p0, "No AppWidgetProviderInfo found in result."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "No data in result."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Failed to receive result from widget picker, code="

    invoke-static {v0, p0, v2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
