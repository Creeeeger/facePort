.class final Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;
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
.field final synthetic $isDex:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;",
            "Z",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iput-boolean p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->$isDex:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->$isDex:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.OPEN_MEDIA_OUTPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-boolean v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->$isDex:Z

    iget-object v1, v1, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v2, :cond_0

    const-string v1, "extra_is_dex"

    goto :goto_0

    :cond_0
    const-string v1, "extra_is_cover"

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.FREEFORM_WINDOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iget-boolean p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel$openActivity$1;->$isDex:Z

    iget-object v3, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const v6, 0x3f4ccccd    # 0.8f

    int-to-float v7, v3

    if-eqz p0, :cond_1

    mul-float/2addr v7, v6

    goto :goto_1

    :cond_1
    const/high16 v8, 0x43b00000    # 352.0f

    mul-float/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :goto_1
    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    if-eqz p0, :cond_2

    int-to-float p0, v4

    mul-float/2addr p0, v6

    goto :goto_2

    :cond_2
    int-to-float p0, v4

    const v6, 0x43a8c148    # 337.51f

    mul-float/2addr v2, v6

    invoke-static {p0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_2
    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    invoke-virtual {v5, v7, p0}, Landroid/graphics/Rect;->union(II)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr v4, p0

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1, v5}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
