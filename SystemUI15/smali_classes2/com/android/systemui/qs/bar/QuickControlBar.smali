.class public final Lcom/android/systemui/qs/bar/QuickControlBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCurrentOrientation:I

.field public mRemoteViews:Landroid/widget/FrameLayout;

.field public final mSecSTQuickControlRequestReceiver:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mSecSTQuickControlRequestReceiver:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mCurrentOrientation:I

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    iget-object p0, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mSecSTQuickControlRequestReceiver:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    invoke-virtual {v1, p0}, Lcom/android/systemui/util/ViewUtil;->toShortIdSting(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fini: unregistered, this = "

    const-string v3, "SecSTQuickControlRequestReceiver"

    invoke-static {v2, v1, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->broadcastDispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->remoteViewsContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->currentRemoteView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->hideBarRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->showBarRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->expandedSupplier:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->isShowingSupplier:Ljava/util/function/Supplier;

    iput-object v0, p0, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->remoteViewsContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final getBarHeight()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07062b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d0309

    return p0
.end method

.method public final getBarWidthWeight(Landroid/content/Context;)I
    .locals 0

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0309

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const v0, 0x7f0a098f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mRemoteViews:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mRemoteViews:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/QuickControlBar;I)V

    new-instance v2, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/QuickControlBar;I)V

    new-instance v3, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/bar/QuickControlBar;I)V

    new-instance v4, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/QuickControlBar;I)V

    iget-object v5, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mSecSTQuickControlRequestReceiver:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/util/ViewUtil;->INSTANCE:Lcom/android/systemui/util/ViewUtil;

    invoke-virtual {v6, v5}, Lcom/android/systemui/util/ViewUtil;->toShortIdSting(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "init: registered, this = "

    const-string v8, "SecSTQuickControlRequestReceiver"

    invoke-static {v7, v6, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->isShowingSupplier:Ljava/util/function/Supplier;

    iput-object v2, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->hideBarRunnable:Ljava/lang/Runnable;

    iput-object v3, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->showBarRunnable:Ljava/lang/Runnable;

    iput-object v4, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->expandedSupplier:Ljava/util/function/Supplier;

    iput-object v0, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->remoteViewsContainer:Landroid/widget/FrameLayout;

    iget-object v0, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->broadcastDispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v8, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->filter:Landroid/content/IntentFilter;

    iget-object v0, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Handler;

    const/4 v10, 0x0

    const/16 v12, 0x18

    const-string v11, "com.android.systemui.qs.permission.ST_QUICK_CONTROL"

    move-object v7, v5

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;Ljava/lang/String;I)V

    iget-object v0, v5, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->newRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/qs/bar/QuickControlBar$$ExternalSyntheticLambda1;->run()V

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->updateRemoteView(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QuickControlBar;->updateBarLayout()V

    :cond_2
    return-void
.end method

.method public final makeCloneBar()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0309

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->addBarBackground(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07062b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mRemoteViews:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    const v0, 0x7f0a098f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickControlBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mCurrentOrientation:I

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QuickControlBar;->updateBarLayout()V

    :cond_1
    return-void
.end method

.method public final removeCloneTileBG()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBGColorHelper:Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->removeFromBarBackground(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mSecSTQuickControlRequestReceiver:Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecSTQuickControlRequestReceiver;->updateRemoteView(Landroid/content/Context;)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpanded:Z

    return-void
.end method

.method public final updateBarLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07062b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/qs/bar/QuickControlBar;->mCurrentOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
