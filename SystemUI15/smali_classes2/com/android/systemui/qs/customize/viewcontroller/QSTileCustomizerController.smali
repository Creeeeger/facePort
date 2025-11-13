.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;
.super Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActiveParent:Landroid/widget/LinearLayout;

.field public final mActiveScrollView:Landroid/widget/ScrollView;

.field public final mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mAvailableArea:Landroid/widget/LinearLayout;

.field public final mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

.field public final mClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

.field public mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

.field public final mDoneButton:Landroid/view/View;

.field public mDoneCallBack:Ljava/lang/Runnable;

.field public final mDoneOnClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$1;

.field public final mDragListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

.field public final mEditResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

.field public final mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

.field public mIsDroppedOnView:Z

.field public mIsReadyToClick:Z

.field public final mIsTopEdit:Z

.field public final mLongClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;

.field public mLongClickedView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

.field public mLongClickedViewInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

.field public mPointX:F

.field public mPointY:F

.field public final mResetButton:Landroid/view/View;

.field public mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mResetOnClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;

.field public final mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public final mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

.field public final mTopMinMaxNum:I

.field public mWhereAmI:I


# direct methods
.method public static $r8$lambda$7xG1Eqhj4F-3t-MC9dkLkGgZKGg(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsReadyToClick:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsDragging:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsReadyToClick:Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->REMOVE_ICON_ID:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    const v3, 0x7f0a0958

    const-wide/16 v4, 0x64

    if-ne v1, v3, :cond_2

    const/16 v1, 0x3e8

    const/16 v3, 0x4e1e

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animateArea(Lcom/android/systemui/qs/customize/CustomTileInfo;II)V

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130e3b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const v3, 0x7f0a0959

    if-ne v1, v3, :cond_3

    const/16 v1, 0x7d0

    const/16 v3, 0x270f

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->animateArea(Lcom/android/systemui/qs/customize/CustomTileInfo;II)V

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v0, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f130e2e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    new-instance p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public static -$$Nest$mdone(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getSpec()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getQuickPanelItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    if-eqz v3, :cond_1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mTopMinMaxNum:I

    if-eq v0, v3, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v4, 0x7f11001b

    invoke-virtual {p0, v4, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDoneCallBack:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->doneCallback:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->save$1()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->close()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static -$$Nest$mshowResetDialog(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140604

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f1310bf

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$3;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    const v2, 0x7f130f28

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v1, 0x7f130ceb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$4;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/SecQSSettingEditResources;)V
    .locals 8

    iget-boolean v0, p2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->isCurrentTopEdit:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qs/customize/view/QSTopTileCustomizer;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/customize/view/QSTopTileCustomizer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/customize/view/QSFullTileCustomizer;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/customize/view/QSFullTileCustomizer;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;-><init>(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsReadyToClick:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsDroppedOnView:Z

    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDoneOnClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$1;

    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetOnClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;

    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;

    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    new-instance v2, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iput-object p2, v2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mEditResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iget-boolean v3, p2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->isCurrentTopEdit:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    const p1, 0x7f0a061d

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetButton:Landroid/view/View;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v2, 0x7f0a09d8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDoneButton:Landroid/view/View;

    sget-object p1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->Companion:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result p1

    int-to-double v3, p1

    const-wide/high16 v5, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v3, v5

    double-to-int p1, v3

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;->getActiveTileContents(Landroid/view/View;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;->getAvailableTileContents(Landroid/view/View;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v4

    invoke-virtual {v3, v1}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    :goto_1
    move-object v5, v3

    check-cast v5, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_3
    :goto_2
    move-object v4, v3

    check-cast v4, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_3

    int-to-float v5, p1

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mainView:Landroid/view/View;

    if-eqz p1, :cond_5

    const v3, 0x7f0a07c4

    invoke-virtual {p1, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    const p1, 0x7f0a0957

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    :cond_6
    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mEditResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v2, 0x7f0a0958

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setIsTopEdit(Z)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v3, 0x7f0a0959

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->setIsTopEdit(Z)V

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iput-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v3, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v3}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQsTileMinNum(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mTopMinMaxNum:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAudioManager:Landroid/media/AudioManager;

    iget-boolean v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    if-eqz v3, :cond_7

    iget-object p2, p2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    goto :goto_3

    :cond_7
    iget-object p2, p2, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    :goto_3
    iput-object p2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-nez v3, :cond_a

    iget-object v3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAllTiles:Ljava/util/List;

    if-nez v3, :cond_8

    const/4 v3, -0x1

    goto :goto_4

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    if-lez v3, :cond_9

    goto :goto_5

    :cond_9
    const/16 v3, 0x46

    :goto_5
    iget-object v5, v4, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mEditResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->getPanelColumns()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveColumns:I

    div-int v6, v3, v5

    rem-int/2addr v3, v5

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    iput v3, v4, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveRows:I

    :cond_a
    iget v3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveCurrentPage:I

    iput v3, p1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialPagenum:I

    iget v3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableCurrentPage:I

    iput v3, v2, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mInitialPagenum:I

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v3, 0x7f0a094c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_reduce_transparency"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v3, 0x7f0a094d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableArea:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v3, 0x7f0a094b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveParent:Landroid/widget/LinearLayout;

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableArea:Landroid/widget/LinearLayout;

    const v4, 0x7f080dee

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_c
    const/4 v3, 0x0

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070d7a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v4, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v4, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v4

    int-to-float v0, v0

    if-eqz v2, :cond_e

    move v6, v0

    goto :goto_7

    :cond_e
    move v6, v7

    :goto_7
    if-eqz v2, :cond_f

    move v7, v0

    :cond_f
    invoke-virtual {v4, v0, v0, v6, v7}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    const/16 v4, 0xc8

    invoke-virtual {v2, v4}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    if-eqz v2, :cond_10

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_8

    :cond_10
    new-instance v2, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v2, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :goto_8
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->updateResources()V

    iget-object v0, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveTiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    iget-object p1, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveTiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;

    iput-object v2, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_9

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mEditResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    if-eqz v0, :cond_12

    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileTopAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-eqz p1, :cond_13

    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsLoadedAllTiles:Z

    goto :goto_a

    :cond_12
    iget-object p1, p1, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->tileFullAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    if-eqz p1, :cond_13

    iget-boolean v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsLoadedAllTiles:Z

    :cond_13
    :goto_a
    if-eqz v1, :cond_14

    iget-object p1, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    if-eqz p1, :cond_15

    iput-object v3, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mOnTileChangedCallback:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda14;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTiles(Ljava/util/ArrayList;)V

    iget-object p1, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mLongClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$5;

    iput-object v0, p2, Lcom/android/systemui/qs/customize/CustomTileInfo;->longClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_b

    :cond_14
    new-instance p1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    iput-object p1, p2, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mOnTileChangedCallback:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda14;

    :cond_15
    const/16 p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->message:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final animateArea(Lcom/android/systemui/qs/customize/CustomTileInfo;II)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/MessageObjectAnim;-><init>()V

    iput p2, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    iput p3, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->touchedPos:I

    iput-object p1, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->removeAreaAnimationMessage()V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    const/16 p1, 0x67

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final animateCurrentPage(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/MessageObjectAnim;-><init>()V

    iput p2, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->touchedPos:I

    iput-object p1, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    const/16 p1, 0xca

    iput p1, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final animationDrop(Lcom/android/systemui/qs/customize/CustomTileInfo;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/MessageObjectAnim;-><init>()V

    const/16 v1, 0xc9

    iput v1, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    iput-object p1, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->removeAreaAnimationMessage()V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final animationDropOtherPage(Lcom/android/systemui/qs/customize/CustomTileInfo;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/MessageObjectAnim;-><init>()V

    const/16 v1, 0xd2

    iput v1, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    iput-object p1, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->removeAreaAnimationMessage()V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final animationStart(Lcom/android/systemui/qs/customize/CustomTileInfo;Ljava/lang/Boolean;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/MessageObjectAnim;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0xd3

    goto :goto_0

    :cond_0
    const/16 p2, 0xc8

    :goto_0
    iput p2, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    iput-object p1, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final close()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->close()V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "QSTileCustomizerBase"

    const-string v3, "close customizer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->Companion:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->doneCallback:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v2

    int-to-double v5, v2

    const-wide/high16 v7, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v5, v7

    double-to-int v2, v5

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;->getActiveTileContents(Landroid/view/View;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;->getAvailableTileContents(Landroid/view/View;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v8, 0x2

    const-wide/16 v9, 0xc8

    const/4 v11, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v1, [F

    aput v11, v13, v0

    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v8, v0

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    int-to-float v12, v2

    new-array v13, v1, [F

    aput v12, v13, v0

    invoke-static {v11, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    aput-object v11, v8, v1

    invoke-static {v6, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const v2, 0x7f0a0957

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v1, [F

    aput v11, v6, v0

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v0

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v1, [F

    aput v11, v6, v0

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mainView:Landroid/view/View;

    if-eqz v2, :cond_2

    const v4, 0x7f0a07c4

    invoke-virtual {v2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v11, v1, v0

    invoke-static {v2, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-eqz v3, :cond_3

    new-instance v1, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion$playAnimatorSet$1$1$1;

    invoke-direct {v1, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion$playAnimatorSet$1$1$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionMoveItem:Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;->actionFinish()V

    :cond_4
    return-void
.end method

.method public final createCustomActionMoveItem(Lcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)Lcom/android/systemui/qs/customize/CustomActionMoveItem;
    .locals 13

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x1770

    if-eqz v1, :cond_3

    iput v7, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    iget-boolean v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getMinimumTileNum()I

    move-result v1

    iget v8, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mTopMinMaxNum:I

    if-lt v1, v8, :cond_1

    move v10, v6

    goto :goto_0

    :cond_1
    move v10, v3

    :goto_0
    new-instance v11, Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    if-ne v8, v7, :cond_2

    move v6, v3

    :cond_2
    new-instance v7, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;

    const/4 v3, 0x0

    invoke-direct {v7, p0, p2, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    new-instance v8, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v8, p0, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;I)V

    new-instance v9, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;

    const/4 v3, 0x4

    invoke-direct {v9, p0, p2, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    new-instance v12, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;

    invoke-direct {v12, p0, v5, v10}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Z)V

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;ZLjava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Z)V

    return-object v11

    :cond_3
    const/16 v1, 0x1388

    iput v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    new-instance v11, Lcom/android/systemui/qs/customize/CustomActionMoveItem;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    if-ne v8, v7, :cond_4

    move v6, v3

    :cond_4
    new-instance v7, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;

    const/4 v3, 0x1

    invoke-direct {v7, p0, v5, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    new-instance v8, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;I)V

    new-instance v9, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;

    const/4 v3, 0x2

    invoke-direct {v9, p0, v5, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    new-instance v10, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;

    const/4 v3, 0x3

    invoke-direct {v10, p0, p2, v3}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;I)V

    const/4 v12, 0x1

    move-object v0, v11

    move-object v2, p1

    move-object/from16 v3, p3

    move-object v4, p2

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/customize/CustomActionMoveItem;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;Lcom/android/systemui/qs/customize/CustomizerTileViewPager;ZLjava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Z)V

    return-object v11
.end method

.method public final moveToArea(Lcom/android/systemui/qs/customize/MessageObjectAnim;)V
    .locals 12

    iget-object v0, p1, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget v1, p1, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    const-string v4, " "

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    const-string v7, ", "

    const/16 v8, 0x3e8

    if-ne v1, v8, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    const v11, 0x7f130e53

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    iput-boolean v5, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    invoke-virtual {v6, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    iget p1, p1, Lcom/android/systemui/qs/customize/MessageObjectAnim;->touchedPos:I

    invoke-virtual {v3, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    iget-object p1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2, p1, v5}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateRemovedTileList(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_0
    iget-boolean v9, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mIsTopEdit:Z

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getMinimumTileNum()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mTopMinMaxNum:I

    if-lt v10, v11, :cond_3

    iget-object v10, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDummyTile:Lcom/android/systemui/qs/customize/CustomTileInfo;

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    iput v11, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mMinNum:I

    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mMinNum:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f11001d

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mToast:Landroid/widget/Toast;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    :goto_0
    if-nez v9, :cond_4

    iget v5, p1, Lcom/android/systemui/qs/customize/MessageObjectAnim;->touchedPos:I

    const/16 v9, 0x270f

    if-lt v5, v9, :cond_4

    iget-object v5, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveScrollView:Landroid/widget/ScrollView;

    const/16 v9, 0x82

    invoke-virtual {v5, v9}, Landroid/widget/ScrollView;->fullScroll(I)Z

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    const v10, 0x7f130e52

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v4, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customizeTileContentDes:Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->isActive:Z

    iget p1, p1, Lcom/android/systemui/qs/customize/MessageObjectAnim;->touchedPos:I

    invoke-virtual {v6, v0, p1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;)V

    iget-object p1, v0, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v2, p1, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->updateRemovedTileList(Ljava/lang/String;Z)V

    :goto_1
    if-ne v1, v8, :cond_5

    const/16 p1, 0x1770

    goto :goto_2

    :cond_5
    const/16 p1, 0x1388

    :goto_2
    iput p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    return-void
.end method

.method public final onViewAttached()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResetOnClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$2;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDoneButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDoneOnClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/qs/customize/CustomActionManager;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/CustomActionManager;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getPanelSidePadding(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v2, 0x7f0a0957

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v3, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v1, 0x7f0a096e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$9;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v1, 0x7f0a096c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$10;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-object v0, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDragListener:Landroid/view/View$OnDragListener;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda0;

    iput-object v0, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v3, 0x7f0a096b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v5, 0x7f0a0a64

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v6, 0x7f0a0a60

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x270f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    iput-object v0, v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v1, 0x7f0a094f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecPageIndicator;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    const v3, 0x7f0a032e

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iput-object v1, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mParentContainer:Landroid/view/View;

    iput-object v0, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    iget v1, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicatorPosition:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    iget-object v0, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/qs/SecPageIndicator;->mQsExpansion:F

    new-instance v4, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;

    invoke-direct {v4, v3}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V

    iput-object v4, v0, Lcom/android/systemui/qs/SecPageIndicator;->mCallback:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDragListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$7;

    iput-object v0, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mDragListener:Landroid/view/View$OnDragListener;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mClickListener:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda0;

    iput-object v0, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f06059c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f06059d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iget-object v5, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz v5, :cond_0

    iput v0, v5, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    iput v4, v5, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    iput-object v0, v3, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    sget-object v3, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_FROM_AVAILABLE_TO_ACTIVE:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance v4, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;I)V

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/qs/customize/CustomActionManager;->setCustomAction(Lcom/android/systemui/qs/customize/CustomActionId;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mCustomActionManager:Lcom/android/systemui/qs/customize/CustomActionManager;

    sget-object v3, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE:Lcom/android/systemui/qs/customize/CustomActionId;

    new-instance v4, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;I)V

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/qs/customize/CustomActionManager;->setCustomAction(Lcom/android/systemui/qs/customize/CustomActionId;Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->Companion:Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;->getActiveTileContents(Landroid/view/View;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator$Companion;->getAvailableTileContents(Landroid/view/View;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v5, v0

    check-cast v5, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz v5, :cond_1

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_3
    :goto_1
    move-object v3, v0

    check-cast v3, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0xc8

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/systemui/qs/customize/SecQSCustomizerAnimator;->mainView:Landroid/view/View;

    if-eqz v0, :cond_5

    const v3, 0x7f0a07c4

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    return-void
.end method

.method public final removeAreaAnimationMessage()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mHandler:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final save$1()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mTileQueryHelper:Lcom/android/systemui/qs/customize/SecTileQueryHelper;

    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/SecTileQueryHelper;->mFinished:Z

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mCurrentSpecs =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecQSCustomizerTileAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getSpec()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget-boolean v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mIsTopEdit:Z

    const-string v6, "QUICK_PANEL_BUTTON"

    const-string v7, "isChanged"

    const-string v8, "QPPE1022"

    const-string v9, "QPPE1026"

    if-eqz v4, :cond_2

    const-string/jumbo p0, "save none : same list"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz v5, :cond_1

    move-object v8, v9

    :cond_1
    const-string v0, "false"

    invoke-static {p0, v8, v7, v0, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_3

    move-object v8, v9

    :cond_3
    const-string/jumbo v9, "true"

    invoke-static {v4, v8, v7, v9, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunestoneEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mContext:Landroid/content/Context;

    const-string v7, "QQsHasEditedQuickTileList"

    invoke-static {v6, v7, v4}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mQQSHost:Lcom/android/systemui/qs/SecQQSTileHost;

    invoke-virtual {v6, v3}, Lcom/android/systemui/qs/SecQQSTileHost;->changeTiles(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    iget-object v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mContext:Landroid/content/Context;

    const-string v7, "QsHasEditedQuickTileList"

    invoke-static {v6, v7, v4}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    iget-object v7, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v7, v6, v3}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mDefaultActiveTiles:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTilesInfo()Ljava/util/ArrayList;

    move-result-object p0

    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mDefaultActiveTiles:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveTiles:Ljava/util/ArrayList;

    iput-object p0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableTiles:Ljava/util/ArrayList;

    const/4 p0, 0x0

    iput p0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mActiveCurrentPage:I

    iput p0, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mAvailableCurrentPage:I

    move-object p0, v3

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "custom("

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v7, v6}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {v6}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_6
    move-object v7, v6

    :cond_7
    :goto_2
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v8

    if-eqz v5, :cond_8

    const-string v9, "QPPE1027"

    goto :goto_3

    :cond_8
    const-string v9, "QPPE1023"

    :goto_3
    const-string v10, "buttonName"

    const-string v12, "position"

    move-object v11, v7

    move-object v13, v6

    invoke-static/range {v8 .. v13}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "save add : "

    const-string v9, " "

    invoke-static {v8, v7, v9, v6, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v1, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/QSTileHost;->getCustomTileNameFromSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    invoke-static {v4}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_b
    move-object v6, v4

    :cond_c
    :goto_5
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_d

    const-string v8, "QPPE1028"

    goto :goto_6

    :cond_d
    const-string v8, "QPPE1024"

    :goto_6
    const-string v9, "buttonName"

    invoke-static {v4, v8, v9, v6}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "save remove : "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v6, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    iput-object v3, v0, Lcom/android/systemui/qs/customize/SecQSCustomizerTileAdapter;->mCurrentSpecs:Ljava/util/List;

    :goto_7
    return-void
.end method

.method public final sendAnnouncementEvent()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f130e32

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final show(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->isShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->show(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "QSTileCustomizerBase"

    const-string/jumbo v1, "show customizer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerBase;->doneCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mDoneCallBack:Ljava/lang/Runnable;

    return-void
.end method
