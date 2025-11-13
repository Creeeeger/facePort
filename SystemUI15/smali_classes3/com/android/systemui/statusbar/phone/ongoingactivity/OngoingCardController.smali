.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/statusbar/phone/ongoingactivity/IOngoingObserver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;

.field public cardIsShown:Z

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public foldState:Ljava/lang/Boolean;

.field public getMediaCardView:Lkotlin/jvm/functions/Function1;

.field public final indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public isMediaPlaying:Lkotlin/jvm/functions/Function1;

.field public isOrientationChanged:Z

.field public isScreenTurnedOn:Z

.field public final mCapsule:Landroid/view/View;

.field public final mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

.field public final mContext:Landroid/content/Context;

.field public final mExpandedView:Landroid/view/ViewGroup;

.field public final mFoldStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$9;

.field public mInitOrientation:Ljava/lang/Integer;

.field public final mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

.field public mProcDestroy:Z

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field public final mainUIHandler:Landroid/os/Handler;

.field public final mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mediaHost:Lcom/android/systemui/media/SecMediaHost;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field public final onBackInvokedCallback:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$7;

.field public final onStateEventListeners:Ljava/util/ArrayList;

.field public setMediaCardView:Lkotlin/jvm/functions/Function1;

.field public statusBarVisibility:I

.field public final statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final statusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$statusBarWindowStateListener$1;

.field public transitionLaunched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Landroid/view/View;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/SecMediaHost;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;",
            "Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/notification/collection/NotifCollection;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/systemui/media/SecMediaHost;",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCapsule:Landroid/view/View;

    move-object/from16 v7, p4

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mediaHost:Lcom/android/systemui/media/SecMediaHost;

    move-object/from16 v8, p13

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mediaDataManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    new-instance v15, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$statusBarWindowStateListener$1;

    invoke-direct {v15, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$statusBarWindowStateListener$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v15, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->statusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$statusBarWindowStateListener$1;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onStateEventListeners:Ljava/util/ArrayList;

    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->isScreenTurnedOn:Z

    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const-string/jumbo v9, "window"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mWindowManager:Landroid/view/WindowManager;

    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, 0x8b2

    const/16 v17, -0x1

    const v20, 0x40220

    const/16 v21, -0x2

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v11, "OngoingCard"

    invoke-virtual {v10, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v11, 0x33

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v13, 0x0

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v13, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v11, 0x3

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v10, v13}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v11, -0x1

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v11, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v11, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;Landroid/content/Context;)V

    iput-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    const v12, 0x7f0d039a

    invoke-virtual {v8, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mExpandedView:Landroid/view/ViewGroup;

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v8, 0x7f0a0253

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    new-instance v13, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    move-object/from16 v14, p9

    invoke-direct {v13, v1, v2, v14, v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/media/SecMediaHost;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$2;

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v5, v13, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getMediaCardView:Lkotlin/jvm/functions/Function1;

    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    if-eqz v5, :cond_0

    iget-object v14, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dataObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$dataObserver$1;

    invoke-virtual {v5, v14}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iget-object v5, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    if-eqz v5, :cond_1

    iget-object v14, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dataObserver:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$dataObserver$1;

    invoke-virtual {v5, v14}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iput-object v13, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    new-instance v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$3;

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$3;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v5, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->dismiss:Lkotlin/jvm/functions/Function1;

    new-instance v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$4;

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$4;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v5, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isMediaPlaying:Lkotlin/jvm/functions/Function1;

    iput-object v2, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$5;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$5;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v2, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseBackCall:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v2, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mInitOrientation:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->updateCardViewLayout()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v11, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$7;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onBackInvokedCallback:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$7;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->broadcastReceiver:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$9;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$9;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mFoldStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$9;

    const-string v5, "com.android.systemui.edgelighting.start"

    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-static {v5, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v14, 0x3c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p7

    move-object/from16 v22, v8

    move-object v8, v1

    move-object v1, v12

    move v12, v5

    const/4 v5, 0x0

    const/4 v5, 0x1

    invoke-static/range {v7 .. v14}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v3

    sget-object v7, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v8, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->setCardIsShown(Z)V

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->cardIsShown:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, " cardIsShown - "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{OngoingExpandedPipController}"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    move-object/from16 v8, v22

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getHeight()I

    move-result v3

    new-instance v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$expandAnimation$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    if-nez v7, :cond_2

    iput-object v1, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->decorView:Landroid/view/View;

    iput v2, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingWidth:I

    iput v3, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingHeight:I

    iput-object v6, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingOnStartListener:Ljava/lang/Runnable;

    iput-boolean v5, v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->pendingAnimation:Z

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->transitionLaunched:Z

    sput-boolean v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->cardIsShown:Z

    invoke-virtual {v4, v15}, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->addListener(Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mainUIHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final add$2()V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "{OngoingActivityCardStackView}"

    const-string v1, "addItem()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stackMaxSize:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->currentIndex:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stackMaxSize:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    sub-int/2addr v3, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v3, v5, v2, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->addItem(IILandroid/view/View;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateItem$1()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->onChange(II)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addItem$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$addItem$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getStartViewStatusList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getEndViewStatusList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    return-void
.end method

.method public final collapseAnimation()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->cardIsShown:Z

    if-nez v0, :cond_0

    const-string p0, "collapseAnimation - card is not shown "

    const-string/jumbo v1, "{OngoingExpandedPipController}"

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->setCardIsShown(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCapsule:Landroid/view/View;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$collapseAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$collapseAnimation$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onChangeCapsuleVisibility(ILcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v0

    const-string v1, "SBOA0002"

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p0, v1, v0}, Lcom/android/systemui/util/NotificationSAUtil;->sendOALog(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_2
    return-void
.end method

.method public final fadeOutCard()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isReadyCollapseAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$fadeOutCard$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$fadeOutCard$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onDestroy(Z)V

    :goto_0
    return-void
.end method

.method public final getCardStackLocationOnScreen()Landroid/graphics/PointF;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mExpandedView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070c48

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v0, Landroid/graphics/PointF;

    int-to-float p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public final onAllowStateChanged(Z)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onStateEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const-string v2, "onAllowStateChanged : delayedEntry size = "

    const-string v3, " : "

    const-string/jumbo v4, "{OngoingActivityController}"

    invoke-static {v2, v1, v3, p1, v4}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isUpdateNotAllowed:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isUpdateNotAllowed:Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->isUpdateNotAllowed:Z

    if-nez p1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2$onAllowStateChanged$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2$onAllowStateChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onChangeCapsuleVisibility(ILcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onStateEventListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->ongoingActivityListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;

    if-eqz v2, :cond_0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mCapsuleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$OngoingActivityListenerImpl;->this$0:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mChipAnimationController:Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "animateNotificationIconArea visibility:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "{ChipAnimationController}"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v4, v1

    if-eqz v4, :cond_5

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CARD_TRANSITION_COLLAPSE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CARD_TRANSITION_EXPAND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    :goto_2
    move v6, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->startChipTransitionAnimation(ZLandroid/view/View;ILandroid/view/animation/Interpolator;Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->cachedGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    :cond_3
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->forceLayout()V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mExpandedView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$onConfigChanged$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$onConfigChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;)V

    const-wide/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDestroy(Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getDetachedMediaView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "MediaOngoingActivity"

    const-string v2, "initPositionMediaCard cannot find media card"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->broadcastReceiver:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$8;

    invoke-virtual {v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mFoldStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$9;

    invoke-virtual {v0, v2}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onStateEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "{OngoingActivityController}"

    const-string v6, "onClosed() Card!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2;->this$0:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2$onClosed$1;

    invoke-direct {v6, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$createCardController$2$onClosed$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->delayedEntry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_2
    sget-object v5, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    sget-object v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->userManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v8, v7}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->shouldHide(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->hiddenOngoingActivityDataList:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    sget-object v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_5
    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v6, v3

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->notifyUpdateObservers()V

    :cond_7
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingChipAdapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingChipAdapter;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateParentViewVisibility(Z)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$startMarqueeAnimation$1;

    invoke-direct {v3, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$startMarqueeAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaPauseTimerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mOngoingCardController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;

    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->isUpdateNotAllowed:Z

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->killGhost()V

    goto/16 :goto_2

    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->cardIsShown:Z

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onChangeCapsuleVisibility(ILcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    const-string v1, "onDestroy() mParentView.isAttachedToWindow = "

    const-string/jumbo v2, "{OngoingExpandedPipController}"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_b

    move v4, v3

    :cond_b
    const-string v1, "onDestroy() do not remove view. mParentView.isAttachedToWindow:"

    const-string v5, ", discardAttachedState:"

    const-string v6, ", mParentView.parent != null?:"

    invoke-static {v1, v5, v6, v0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p1, v4, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_5

    :cond_c
    :goto_4
    const-string p1, "onDestroy() removeViewImmediate"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mParentView:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$BackKeyConsumerViewGroup;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_5

    :cond_d
    const-string p1, "onDestroy() mParentView is null"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->statusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$statusBarWindowStateListener$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->observers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mProcDestroy:Z

    return-void
.end method

.method public final onOrientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->isOrientationChanged:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mInitOrientation:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mInitOrientation:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->updateCardViewLayout()V

    :cond_1
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->isReadyCollapseAnimation()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->collapseAnimation()V

    return v0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->transitionLaunched:Z

    if-nez p1, :cond_2

    const-string/jumbo p1, "{OngoingExpandedPipController}"

    const-string/jumbo p2, "transition is not launched properly. so destroy immediately"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onDestroy(Z)V

    :cond_2
    return v0
.end method

.method public final remove(I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string/jumbo v1, "remove view datasize:"

    const-string v2, ", position:"

    const-string/jumbo v3, "{OngoingExpandedPipController}"

    invoke-static {v0, p1, v1, v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onDestroy(Z)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stackMaxSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stackMaxSize:I

    if-lt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->connectCardItem()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateItem$1()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->onChange(II)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$removeItem$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$removeItem$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getStartViewStatusList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->startViewStatusList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->getEndViewStatusList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->endViewStatusList:Ljava/util/List;

    goto :goto_1

    :cond_4
    :goto_0
    const-string/jumbo p0, "removeItem() Invalid index:"

    const-string/jumbo p1, "{OngoingActivityCardStackView}"

    invoke-static {v0, p0, p1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final setCardIsShown(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " card is Shown - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{OngoingExpandedPipController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, " DEBUG - "

    invoke-static {v2, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->cardIsShown:Z

    return-void
.end method

.method public final startAnimation(Landroid/view/View;FFFFLandroid/view/animation/PathInterpolator;JLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p7, p8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardControllerKt$sam$java_lang_Runnable$0;

    invoke-direct {p2, p9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardControllerKt$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->onAllowStateChanged(Z)V

    return-void
.end method

.method public final update(Ljava/lang/String;)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "updateItem() "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{OngoingActivityCardStackView}"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->adapter:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->mOngoingActivityLists:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->stackMaxSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    sub-int v4, v1, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->getDataByIndex(I)Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    move-result-object v6

    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v5, :cond_2

    iget-boolean p1, v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mIsMediaOngoingData:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getDetachedMediaView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->inflateDummyChipView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->bindView(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateItemBg()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->onChangeListener:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardAdapter;->getCount()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController$6;->onChange(II)V

    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityDataHelper;->updateTopIndex()V

    return-void
.end method

.method public final update$6()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mCardStackView:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->updateItem$1()V

    return-void
.end method

.method public final updateCardViewLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mExpandedView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0876

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->getOngoingCardWidth(Landroid/content/Context;)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
