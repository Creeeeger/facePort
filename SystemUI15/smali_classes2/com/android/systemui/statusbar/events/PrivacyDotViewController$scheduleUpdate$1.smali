.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->applyDelayNextViewState:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->applyDelayNextViewState:Z

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x7ffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v3 .. v23}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZI)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v3

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-boolean v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->viewInitialized:Z

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/events/ViewState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget v4, v4, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget v5, v3, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-eq v5, v4, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    sget-object v4, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget v4, v3, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-virtual {v0, v5, v4}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateRotations(II)V

    :cond_4
    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->needsLayout(Lcom/android/systemui/statusbar/events/ViewState;Lcom/android/systemui/statusbar/events/ViewState;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setCornerSizes(Lcom/android/systemui/statusbar/events/ViewState;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_5
    iget-object v4, v3, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->shouldShowDot(Lcom/android/systemui/statusbar/events/ViewState;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    if-eqz v4, :cond_8

    check-cast v4, Lcom/android/systemui/ScreenDecorations$2;

    iget-object v4, v4, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {v4, v1}, Lcom/android/systemui/ScreenDecorations;->updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V

    :cond_8
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v7, 0x12c

    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/events/ViewState;->contentDescription:Ljava/lang/String;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v3, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_4
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->shouldShowDot(Lcom/android/systemui/statusbar/events/ViewState;)Z

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->shouldShowDot(Lcom/android/systemui/statusbar/events/ViewState;)Z

    move-result v4

    if-eq v1, v4, :cond_d

    const-wide/16 v7, 0xa0

    if-eqz v1, :cond_c

    iget-object v4, v3, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v5, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    if-eqz v2, :cond_d

    check-cast v2, Lcom/android/systemui/ScreenDecorations$2;

    iget-object v2, v2, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {v2, v4}, Lcom/android/systemui/ScreenDecorations;->updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V

    goto :goto_5

    :cond_c
    if-nez v1, :cond_d

    iget-object v2, v3, Lcom/android/systemui/statusbar/events/ViewState;->designatedCorner:Landroid/view/View;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;

    invoke-direct {v5, v2, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_d
    :goto_5
    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/events/ViewState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyDotViewState(Ljava/lang/String;)V

    :cond_e
    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    :goto_6
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
