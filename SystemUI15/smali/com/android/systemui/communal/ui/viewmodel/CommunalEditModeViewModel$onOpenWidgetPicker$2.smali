.class final Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;
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
.field final synthetic $activityLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher;"
        }
    .end annotation
.end field

.field final synthetic $packageManager:Landroid/content/pm/PackageManager;

.field final synthetic $resources:Landroid/content/res/Resources;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroidx/activity/result/ActivityResultLauncher;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;",
            "Landroid/content/res/Resources;",
            "Landroid/content/pm/PackageManager;",
            "Landroidx/activity/result/ActivityResultLauncher;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->this$0:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->$resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->$packageManager:Landroid/content/pm/PackageManager;

    iput-object p4, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->$activityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->this$0:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->$resources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->$packageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->$activityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroidx/activity/result/ActivityResultLauncher;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->this$0:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    iget-object p1, p1, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p1, p1, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->widgetContent:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    iput v2, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;

    iget-object v1, v1, Lcom/android/systemui/communal/domain/model/CommunalContentModel$WidgetContent$Widget;->providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->this$0:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->$packageManager:Landroid/content/pm/PackageManager;

    sget v2, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v1, v2

    :goto_3
    const-string v3, "CommunalEditModeViewModel"

    if-nez v1, :cond_7

    const-string p1, "Couldn\'t resolve launcher package name"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalSettingsInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalSettingsInteractor;->communalWidgetCategories:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v1, "categoryFilter"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "ui_surface"

    const-string/jumbo v1, "widgets_hub"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "added_app_widgets"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_4
    if-eqz v2, :cond_8

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel$onOpenWidgetPicker$2;->$activityLauncher:Landroidx/activity/result/ActivityResultLauncher;

    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to launch widget picker activity"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
