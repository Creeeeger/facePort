.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;


# static fields
.field public static final SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;


# instance fields
.field public final mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

.field public mDistributeTiles:Z

.field public mExcessHeight:I

.field public mLastExcessHeight:I

.field public mLastMaxHeight:I

.field public mLayoutDirection:I

.field public mLayoutOrientation:I

.field public mListening:Z

.field public mLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field public final mMaxColumns:I

.field public final mMinRows:I

.field public final mOnPageChangeListener:Lcom/android/systemui/qs/PagedTileLayout$2;

.field public mPageToRestore:I

.field public final mPages:Ljava/util/ArrayList;

.field mScroller:Landroid/widget/Scroller;

.field public final mTiles:Ljava/util/ArrayList;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    sget-object v1, Lcom/android/systemui/qs/QSEvents;->INSTANCE:Lcom/android/systemui/qs/QSEvents;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/qs/QSEvents;->qsUiEventsLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMinRows:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    new-instance v1, Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p2, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public final addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v0, "forcing tile redistribution across pages, reason"

    const-string v1, "adding new tile"

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final computeScroll()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-wide v10, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    :try_start_0
    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v3, "FakeDragBy called before begin"

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    new-instance v1, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/qs/PagedTileLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_3
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_4

    :try_start_1
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v2, "endFakeDrag called without velocityTracker"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/logging/QSLogger;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit()V

    :cond_4
    :goto_3
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->computeScroll()V

    return-void
.end method

.method public final createTileLayout()Lcom/android/systemui/qs/TileLayout;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0303

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMinRows:I

    iget v3, v0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    if-eq v3, v1, :cond_0

    iput v1, v0, Lcom/android/systemui/qs/TileLayout;->mMinRows:I

    invoke-virtual {v0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mMaxColumns:I

    iput v1, v0, Lcom/android/systemui/qs/TileLayout;->mMaxColumns:I

    iget v3, v0, Lcom/android/systemui/qs/TileLayout;->mResourceColumns:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    :goto_0
    iget v1, v0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    invoke-static {v1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iput p0, v0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    iget-object p0, v0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/qs/TileLayout;->layoutTileRecords(IZ)V

    iget-object p0, v0, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    instance-of v2, v1, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    iget v2, v0, Lcom/android/systemui/qs/TileLayout;->mSquishinessFraction:F

    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    iget v3, v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    cmpg-float v3, v3, v2

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    iput v2, v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_2

    iput v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "orientation changed to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v2, "forcing tile redistribution across pages, reason"

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v0, "Orientation didn\'t change, tiles might be not redistributed, new config"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->createTileLayout()Lcom/android/systemui/qs/TileLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout$3;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout$3;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v1, v0, v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int v1, p0, v1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_2
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-eq v0, p0, :cond_1

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExcessHeight:I

    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mExcessHeight:I

    if-eq v1, v3, :cond_a

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    iget v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mExcessHeight:I

    iput v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExcessHeight:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/qs/TileLayout;->updateMaxRows(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    if-eqz v0, :cond_9

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/TileLayout;

    iget v3, v1, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget v1, v1, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr v3, v1

    const/4 v1, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v3, v0, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/TileLayout;

    iget v5, v4, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget v4, v4, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr v5, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    mul-int/2addr v4, v3

    if-le v0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {v5}, Lcom/android/systemui/qs/TileLayout;->removeAllViews()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v0, v0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v6, v0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v0, v0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    const-string v7, "Adding new page"

    invoke-virtual {v6, v0, v5, v7, v4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->createTileLayout()Lcom/android/systemui/qs/TileLayout;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v0, v0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v6, v0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object v0, v0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    const-string v7, "Removing page"

    invoke-virtual {v6, v0, v5, v7, v4}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    iput v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    iget v3, v0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    iget v0, v0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    mul-int/2addr v3, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDistributionInProgress(II)V

    move v3, v2

    move v4, v3

    :goto_4
    if-ge v3, v1, :cond_9

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;

    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/TileLayout;

    iget-object v6, v6, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v0, :cond_8

    add-int/lit8 v4, v4, 0x1

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v7, v5, Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/android/systemui/qs/logging/QSLogger;->logTileDistributed(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/TileLayout;->addTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    iget v0, v0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    move v1, v2

    :goto_5
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/TileLayout;

    iput v0, v3, Lcom/android/systemui/qs/TileLayout;->mRows:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v2

    move v3, v1

    :goto_6
    if-ge v1, v0, :cond_c

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v3, :cond_b

    move v3, v4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    if-le p1, v3, :cond_d

    move v3, p1

    :cond_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int v3, v0, v3

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    const/16 v2, 0x2000

    const/16 v3, 0x1000

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne p1, v0, :cond_2

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v3

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eq p1, v2, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestAccessibilityFocus()Z

    :cond_6
    return p2
.end method

.method public final removeTile(Lcom/android/systemui/qs/SecQSPanelControllerBase$TileRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v0, "forcing tile redistribution across pages, reason"

    const-string v1, "removing tile"

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "current_page"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    return-void
.end method

.method public final saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, v1

    move v0, p0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string p0, "current_page"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public final setListening(ZLcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateListening()V

    return-void
.end method

.method public final setLogger(Lcom/android/systemui/qs/logging/QSLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    return-void
.end method

.method public final setPageMargin(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, p1, v3, p1, v4}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateListening()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/TileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateResources()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/TileLayout;

    invoke-virtual {v2}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    const-string v2, "forcing tile redistribution across pages, reason"

    const-string/jumbo v3, "resources in pages changed"

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/qs/logging/QSLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object p0, p0, Lcom/android/systemui/qs/logging/QSLogger;->$$delegate_0:Lcom/android/systemui/log/ConstantStringsLoggerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    iget-object v2, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/log/ConstantStringsLoggerImpl;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v4, "resource in pages didn\'t change, tiles might be not redistributed"

    invoke-virtual {p0, v2, v0, v4, v3}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v1
.end method
