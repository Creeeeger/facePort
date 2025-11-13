.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;

.field public final mCarrierDividers:[Landroid/view/View;

.field public final mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

.field public final mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

.field public final mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

.field public mIsSingleCarrier:Z

.field public final mLastSignalLevel:[I

.field public final mLastSignalLevelDescription:[Ljava/lang/String;

.field public final mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

.field public mListening:Z

.field public final mLogger:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;

.field public final mMainHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mNoSimTextView:Landroid/widget/TextView;

.field public final mQuickStarHelper:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

.field public final mSignalCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;

.field public final mSlotIndexResolver:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;

.field public final mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x3

    new-array v7, v6, [Lcom/android/systemui/shade/carrier/CellSignalState;

    iput-object v7, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

    const/4 v7, 0x2

    new-array v8, v7, [Landroid/view/View;

    iput-object v8, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    new-array v9, v6, [Lcom/android/systemui/shade/carrier/ShadeCarrier;

    iput-object v9, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

    new-array v10, v6, [I

    iput-object v10, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLastSignalLevel:[I

    new-array v10, v6, [Ljava/lang/String;

    iput-object v10, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    new-instance v10, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V

    iput-object v10, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mSignalCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;

    move-object/from16 v10, p2

    iput-object v10, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mBgHandler:Landroid/os/Handler;

    move-object/from16 v10, p5

    iput-object v10, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLogger:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;

    move-object/from16 v10, p6

    iput-object v10, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iput-object v4, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowAirplaneMode:Z

    const/4 v11, 0x1

    iput-boolean v11, v2, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowMissingSim:Z

    const-string v12, "Shade"

    iput-object v12, v2, Lcom/android/keyguard/CarrierTextManager$Builder;->mDebugLocation:Ljava/lang/String;

    invoke-virtual/range {p7 .. p7}, Lcom/android/keyguard/CarrierTextManager$Builder;->build()Lcom/android/keyguard/CarrierTextManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mSlotIndexResolver:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;

    const v2, 0x7f0a07df

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mNoSimTextView:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    new-instance v12, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda3;

    invoke-direct {v12, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V

    new-instance v13, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;

    const/4 v14, 0x1

    invoke-direct {v13, p0, v14}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;I)V

    move-object/from16 v14, p4

    invoke-direct {v2, v14, v12, v13}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;-><init>(Landroid/os/Looper;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mMainHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    new-instance v12, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;

    invoke-direct {v12, v2}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;)V

    iput-object v12, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;

    const v2, 0x7f0a0254

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    aput-object v2, v9, v10

    const v2, 0x7f0a0255

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    aput-object v2, v9, v11

    const v2, 0x7f0a0256

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/ShadeCarrier;

    aput-object v2, v9, v7

    move-object/from16 v2, p11

    iget-object v2, v2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;->mobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v4, Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0a0b3e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v8, v10

    const v2, 0x7f0a0b3f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v8, v11

    move v2, v10

    :goto_0
    if-ge v2, v6, :cond_0

    iget-object v4, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

    new-instance v7, Lcom/android/systemui/shade/carrier/CellSignalState;

    const v8, 0x7f1300ed

    invoke-virtual {v3, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const v12, 0x7f080afd

    const-string v13, ""

    const/4 v14, 0x0

    move-object/from16 p2, v7

    move/from16 p3, v9

    move/from16 p4, v12

    move-object/from16 p5, v8

    move-object/from16 p6, v13

    move/from16 p7, v14

    invoke-direct/range {p2 .. p7}, Lcom/android/systemui/shade/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v7, v4, v2

    iget-object v4, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLastSignalLevel:[I

    sget-object v7, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    aget v7, v7, v10

    aput v7, v4, v2

    iget-object v4, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    sget-object v7, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v7, v7, v10

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->computeIsSingleCarrier()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mIsSingleCarrier:Z

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    new-instance v2, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$2;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v5, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

    new-instance v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V

    move-object v2, v5

    check-cast v2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    iput-object v1, v2, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->latinNetworkNameCallback:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda5;

    new-instance v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

    move-object/from16 v2, p15

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V

    iput-object v1, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mQuickStarHelper:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;I)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V

    return-void
.end method


# virtual methods
.method public final computeIsSingleCarrier()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/android/systemui/shade/carrier/CellSignalState;->visible:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne v2, p0, :cond_2

    move v0, p0

    :cond_2
    return v0
.end method

.method public getShadeCarrierVisibility(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public getSlotIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mSlotIndexResolver:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;

    check-cast p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SubscriptionManagerSlotIndexResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    return p0
.end method

.method public final handleUpdateState()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mMainHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->computeIsSingleCarrier()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    iget-boolean v7, v6, Lcom/android/systemui/shade/carrier/CellSignalState;->visible:Z

    if-eqz v7, :cond_1

    iget v6, v6, Lcom/android/systemui/shade/carrier/CellSignalState;->mobileSignalIconId:I

    const v7, 0x7f080afe

    if-ne v6, v7, :cond_1

    new-instance v6, Lcom/android/systemui/shade/carrier/CellSignalState;

    const v10, 0x7f08082f

    const-string v11, ""

    const/4 v9, 0x1

    const-string v12, ""

    const/4 v13, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/shade/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v6, v1, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v4

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v3, :cond_5

    iget-object v7, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

    aget-object v7, v7, v5

    aget-object v8, v1, v5

    iget-object v9, v7, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mLastSignalState:Lcom/android/systemui/shade/carrier/CellSignalState;

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, v7, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mIsSingleCarrier:Z

    if-ne v0, v9, :cond_3

    goto :goto_2

    :cond_3
    iput-object v8, v7, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mLastSignalState:Lcom/android/systemui/shade/carrier/CellSignalState;

    iput-boolean v0, v7, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mIsSingleCarrier:Z

    iget-boolean v8, v8, Lcom/android/systemui/shade/carrier/CellSignalState;->visible:Z

    iget-object v8, v7, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mMobileGroup:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, v7, Lcom/android/systemui/shade/carrier/ShadeCarrier;->mSpacer:Landroid/view/View;

    if-eqz v0, :cond_4

    move v6, v4

    :cond_4
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    aget-object v1, v1, v4

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    aget-object v1, v1, v2

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mIsSingleCarrier:Z

    if-eq v1, v0, :cond_6

    iput-boolean v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mIsSingleCarrier:Z

    :cond_6
    return-void
.end method

.method public processSubIdList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$IconData;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    const-wide/16 v0, 0x3

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mListening:Z

    new-instance p1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;I)V

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
