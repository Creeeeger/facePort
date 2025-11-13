.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->access$100(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "QSTileCustomizerController"

    const-string p1, "onLongClick mView.isDragging() skip : dulicated long click"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    instance-of v2, p1, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    move-object v3, p1

    check-cast v3, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iput-object v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    if-nez v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iput-object v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    iget v4, v3, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mPointX:F

    iput v4, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mPointX:F

    iget v3, v3, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mPointY:F

    iput v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mPointY:F

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v4, 0x7f0a0958

    const/16 v5, 0x1388

    if-ne v2, v4, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    const/16 v2, 0x1770

    :goto_0
    iput v2, v3, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    if-ne v3, v5, :cond_4

    iget-object v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    :goto_1
    iget-object v2, v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v4, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    move-result v4

    iget-object v3, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->showRemoveIcon(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget v3, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    iput-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iput v3, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    iget-object v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_6

    const/16 v2, 0x6a

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    const/16 v2, 0x6c

    invoke-static {v2}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animationStart(Lcom/android/systemui/qs/customize/CustomTileInfo;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x50

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;

    invoke-direct {v3, v0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$6;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f130e30

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
