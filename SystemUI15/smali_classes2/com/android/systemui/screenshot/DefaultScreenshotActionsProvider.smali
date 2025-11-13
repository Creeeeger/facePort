.class public final Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final actionExecutor:Lcom/android/systemui/screenshot/ActionExecutor;

.field public final context:Landroid/content/Context;

.field public final request:Lcom/android/systemui/screenshot/ScreenshotData;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/UiEventLogger;Ljava/util/UUID;Lcom/android/systemui/screenshot/ScreenshotData;Lcom/android/systemui/screenshot/ActionExecutor;Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p4, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->request:Lcom/android/systemui/screenshot/ScreenshotData;

    iput-object p5, p0, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;->actionExecutor:Lcom/android/systemui/screenshot/ActionExecutor;

    new-instance p2, Lcom/android/systemui/screenshot/ui/viewmodel/PreviewAction;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f131002

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p5, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$1;-><init>(Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;)V

    invoke-direct {p2, p3, p5}, Lcom/android/systemui/screenshot/ui/viewmodel/PreviewAction;-><init>(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function0;)V

    iget-object p3, p6, Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;->screenshotId:Ljava/util/UUID;

    iget-object p5, p6, Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;->this$0:Lcom/android/systemui/screenshot/ScreenshotActionsController;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p5, Lcom/android/systemui/screenshot/ScreenshotActionsController;->viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;

    iget-object p3, p3, Lcom/android/systemui/screenshot/ui/viewmodel/ScreenshotViewModel;->_previewAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p3, v0, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    new-instance p2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    const p3, 0x7f080af3

    invoke-static {p3, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f131015

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f131014    # 1.9548E38f

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p3, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$2;-><init>(Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;)V

    invoke-virtual {p6, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;->provideActionButton(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;Lkotlin/jvm/functions/Function0;)V

    new-instance p2, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;

    const p3, 0x7f080af1

    invoke-static {p3, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f131003

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider$3;-><init>(Lcom/android/systemui/screenshot/DefaultScreenshotActionsProvider;)V

    invoke-virtual {p6, p2, p1}, Lcom/android/systemui/screenshot/ScreenshotActionsController$ActionsCallback;->provideActionButton(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonAppearance;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
