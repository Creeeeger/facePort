.class final Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;
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
.field final synthetic $screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/screenshot/MessageContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/MessageContainerController;Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/MessageContainerController;",
            "Lcom/android/systemui/screenshot/ScreenshotData;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iput-object p2, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object p1, p1, Lcom/android/systemui/screenshot/MessageContainerController;->profileMessageController:Lcom/android/systemui/screenshot/message/ProfileMessageController;

    iget-object v1, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    iput v2, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/android/systemui/screenshot/message/ProfileMessageController;->onScreenshotTaken(Landroid/os/UserHandle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->screenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    iget-object v1, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotDetectionController;->maybeNotifyOfScreenshot(Lcom/android/systemui/screenshot/ScreenshotData;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    move-object v0, v4

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    move-object v0, v4

    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v1, v0, Lcom/android/systemui/screenshot/MessageContainerController;->profileMessageController:Lcom/android/systemui/screenshot/message/ProfileMessageController;

    iget-object v3, v0, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v4, v3

    :goto_1
    new-instance v3, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;->labeledIcon:Lcom/android/systemui/screenshot/message/LabeledIcon;

    iget-object v5, v0, Lcom/android/systemui/screenshot/message/LabeledIcon;->badgedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_6

    const v5, 0x7f0a0a4b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/systemui/screenshot/message/LabeledIcon;->badgedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const v5, 0x7f0a0a4a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/screenshot/message/ProfileMessageController$WhenMappings;->$EnumSwitchMapping$1:[I

    iget-object v8, p1, Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;->profileType:Lcom/android/systemui/screenshot/message/ProfileMessageController$FirstRunProfile;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v2, :cond_8

    const/4 v2, 0x2

    if-ne v7, v2, :cond_7

    const v2, 0x7f13100d

    goto :goto_2

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    const v2, 0x7f131018

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/screenshot/message/LabeledIcon;->label:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0704

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;

    invoke-direct {v2, v3, v1, p1}, Lcom/android/systemui/screenshot/message/ProfileMessageController$bindView$1;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/screenshot/message/ProfileMessageController;Lcom/android/systemui/screenshot/message/ProfileMessageController$ProfileFirstRunData;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/MessageContainerController;->animateInMessageContainer()V

    goto/16 :goto_5

    :cond_9
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v5, v5, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    if-nez v5, :cond_a

    move-object v5, v4

    :cond_a
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v5, v5, Lcom/android/systemui/screenshot/MessageContainerController;->workProfileFirstRunView:Landroid/view/ViewGroup;

    if-nez v5, :cond_b

    move-object v5, v4

    :cond_b
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v5, v3, Lcom/android/systemui/screenshot/MessageContainerController;->screenshotDetectionController:Lcom/android/systemui/screenshot/ScreenshotDetectionController;

    iget-object v3, v3, Lcom/android/systemui/screenshot/MessageContainerController;->detectionNoticeView:Landroid/view/ViewGroup;

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    move-object v4, v3

    :goto_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    const p1, 0x7f0a0a43

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_d

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f130fff

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f130ffe

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;->this$0:Lcom/android/systemui/screenshot/MessageContainerController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/MessageContainerController;->animateInMessageContainer()V

    :cond_e
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
