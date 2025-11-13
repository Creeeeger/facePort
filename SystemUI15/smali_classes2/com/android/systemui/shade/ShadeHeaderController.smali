.class public final Lcom/android/systemui/shade/ShadeHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;


# static fields
.field public static final Companion:Lcom/android/systemui/shade/ShadeHeaderController$Companion;

.field public static final DEFAULT_CLOCK_INTENT:Landroid/content/Intent;

.field public static final HEADER_TRANSITION_ID:I

.field public static final LARGE_SCREEN_HEADER_CONSTRAINT:I

.field public static final LARGE_SCREEN_HEADER_TRANSITION_ID:I

.field public static final QQS_HEADER_CONSTRAINT:I

.field public static final QS_HEADER_CONSTRAINT:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final batteryIcon:Lcom/android/systemui/battery/BatteryMeterView;

.field public final batteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

.field public carrierIconSlots:Lkotlin/collections/EmptyList;

.field public final chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;

.field public final combinedShadeHeadersConstraintManager:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationControllerListener:Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

.field public customizing:Z

.field public cutout:Landroid/view/DisplayCutout;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final header:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public final iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field public iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final insetListener:Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;

.field public final insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public largeScreenActive:Z

.field public lastInsets:Landroid/view/WindowInsets;

.field public final lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public mPanelExpandedInLockScreen:Z

.field public final mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

.field public mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

.field public final netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

.field public nextAlarmIntent:Landroid/app/PendingIntent;

.field public panelExpanded:Z

.field public final privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

.field public final qsBatteryModeController:Lcom/android/systemui/shade/QsBatteryModeController;

.field public qsDisabled:Z

.field public qsExpandedFraction:F

.field public final qsPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public qsScrollY:I

.field public qsVisible:Z

.field public final shadeCarrierGroupControllerBuilder:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;

.field public shadeExpandedFraction:F

.field public final statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

.field public final systemIconsHoverContainer:Landroid/view/View;

.field public final tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/ShadeHeaderController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/ShadeHeaderController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/shade/ShadeHeaderController;->Companion:Lcom/android/systemui/shade/ShadeHeaderController$Companion;

    const v0, 0x7f0a04e6

    sput v0, Lcom/android/systemui/shade/ShadeHeaderController;->HEADER_TRANSITION_ID:I

    const v0, 0x7f0a05e9

    sput v0, Lcom/android/systemui/shade/ShadeHeaderController;->LARGE_SCREEN_HEADER_TRANSITION_ID:I

    const v0, 0x7f0a0947

    sput v0, Lcom/android/systemui/shade/ShadeHeaderController;->QQS_HEADER_CONSTRAINT:I

    const v0, 0x7f0a0980

    sput v0, Lcom/android/systemui/shade/ShadeHeaderController;->QS_HEADER_CONSTRAINT:I

    const v0, 0x7f0a05e6

    sput v0, Lcom/android/systemui/shade/ShadeHeaderController;->LARGE_SCREEN_HEADER_CONSTRAINT:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/shade/ShadeHeaderController;->DEFAULT_CLOCK_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;Lcom/android/systemui/qs/HeaderPrivacyIconsController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/VariableDateViewController$Factory;Lcom/android/systemui/battery/BatteryMeterViewController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/shade/QsBatteryModeController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/shade/ShadeHeaderColorPicker;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->batteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->shadeCarrierGroupControllerBuilder:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->combinedShadeHeadersConstraintManager:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->qsBatteryModeController:Lcom/android/systemui/shade/QsBatteryModeController;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->qsPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const v2, 0x7f0a0164

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/battery/BatteryMeterView;

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->batteryIcon:Lcom/android/systemui/battery/BatteryMeterView;

    const v2, 0x7f0a0c0f

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const v2, 0x7f0a0258

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    iput-object v2, v0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    const v2, 0x7f0a0503

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->systemIconsHoverContainer:Landroid/view/View;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    iput v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    new-instance v1, Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    iput-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->insetListener:Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;

    new-instance v1, Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    iput-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;

    new-instance v1, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    iput-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationControllerListener:Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

    new-instance v1, Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/shade/ShadeHeaderController$nextAlarmCallback$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    return-void
.end method

.method public static final access$updateConstraintsForInsets(Lcom/android/systemui/shade/ShadeHeaderController;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/WindowInsets;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->cutout:Landroid/view/DisplayCutout;

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForCurrentRotation()Landroid/graphics/Insets;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v1, v1, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->currentRotationHasCornerCutout()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/shade/ShadeHeaderController;->combinedShadeHeadersConstraintManager:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManager;

    check-cast v4, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;

    invoke-direct {v4, v3, v5, v2, v1}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$edgesGuidelinesConstraints$change$1;-><init>(IIII)V

    new-instance v1, Lcom/android/systemui/shade/ConstraintsChanges;

    invoke-direct {v1, v4, v4, v4}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    const p2, 0x7f0a0270

    const v3, 0x7f0a026f

    if-nez v0, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, p2

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move p2, v3

    :goto_3
    new-instance v0, Lcom/android/systemui/shade/ConstraintsChanges;

    new-instance v6, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;

    invoke-direct {v6, v4, v2, p2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$1;-><init>(III)V

    new-instance v7, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$2;

    invoke-direct {v7, v4, v2, p2}, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$centerCutoutConstraints$2;-><init>(III)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/ConstraintsChanges;->plus(Lcom/android/systemui/shade/ConstraintsChanges;)Lcom/android/systemui/shade/ConstraintsChanges;

    move-result-object p2

    goto :goto_5

    :cond_5
    :goto_4
    new-instance p2, Lcom/android/systemui/shade/ConstraintsChanges;

    sget-object v3, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;->INSTANCE:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, p2}, Lcom/android/systemui/shade/ConstraintsChanges;->plus(Lcom/android/systemui/shade/ConstraintsChanges;)Lcom/android/systemui/shade/ConstraintsChanges;

    move-result-object p2

    goto :goto_5

    :cond_6
    new-instance p2, Lcom/android/systemui/shade/ConstraintsChanges;

    sget-object v3, Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;->INSTANCE:Lcom/android/systemui/shade/CombinedShadeHeadersConstraintManagerImpl$emptyCutoutConstraints$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shade/ConstraintsChanges;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, p2}, Lcom/android/systemui/shade/ConstraintsChanges;->plus(Lcom/android/systemui/shade/ConstraintsChanges;)Lcom/android/systemui/shade/ConstraintsChanges;

    move-result-object p2

    :goto_5
    iget-object v0, p2, Lcom/android/systemui/shade/ConstraintsChanges;->qqsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_7

    sget v1, Lcom/android/systemui/shade/ShadeHeaderController;->QQS_HEADER_CONSTRAINT:I

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    :cond_7
    iget-object p2, p2, Lcom/android/systemui/shade/ConstraintsChanges;->qsConstraintsChanges:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_8

    sget v0, Lcom/android/systemui/shade/ShadeHeaderController;->QS_HEADER_CONSTRAINT:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->cutout:Landroid/view/DisplayCutout;

    iget p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsBatteryModeController:Lcom/android/systemui/shade/QsBatteryModeController;

    iget v1, v0, Lcom/android/systemui/shade/QsBatteryModeController;->fadeInStartFraction:F

    cmpl-float v1, p2, v1

    const/4 v2, 0x3

    if-lez v1, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_6

    :cond_9
    iget v1, v0, Lcom/android/systemui/shade/QsBatteryModeController;->fadeOutCompleteFraction:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_b

    if-eqz p1, :cond_a

    iget-object p2, v0, Lcom/android/systemui/shade/QsBatteryModeController;->insetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->currentRotationHasCornerCutout()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->batteryIcon:Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentShowMode(I)V

    :cond_c
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-boolean p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    const-string/jumbo v0, "visible: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    const-string/jumbo v0, "shadeExpanded: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->shadeExpandedFraction:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shadeExpandedFraction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    const-string v0, "active: "

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsExpandedFraction:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "qsExpandedFraction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsScrollY:I

    const-string v0, "qsScrollY: "

    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p0

    sget-object p2, Lcom/android/systemui/shade/ShadeHeaderController;->Companion:Lcom/android/systemui/shade/ShadeHeaderController$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/android/systemui/shade/ShadeHeaderController;->QQS_HEADER_CONSTRAINT:I

    if-ne p0, p2, :cond_0

    const-string p0, "QQS Header"

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/systemui/shade/ShadeHeaderController;->QS_HEADER_CONSTRAINT:I

    if-ne p0, p2, :cond_1

    const-string p0, "QS Header"

    goto :goto_0

    :cond_1
    sget p2, Lcom/android/systemui/shade/ShadeHeaderController;->LARGE_SCREEN_HEADER_CONSTRAINT:I

    if-ne p0, p2, :cond_2

    const-string p0, "Large Screen Header"

    goto :goto_0

    :cond_2
    const-string p2, "Unknown state "

    invoke-static {p0, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "currentState: "

    invoke-static {p1, p2, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final launchClockActivity$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->nextAlarmIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-eqz v0, :cond_0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/shade/ShadeHeaderController;->DEFAULT_CLOCK_INTENT:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public final onInit()V
    .locals 22

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->batteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/battery/BatteryMeterViewController;->mIgnoreTunerUpdates:Z

    iget-boolean v3, v1, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    iget-object v5, v1, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v5, v3}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iput-boolean v4, v1, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x1010036

    invoke-static {v3, v5, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x1010039

    invoke-static {v3, v5, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->QS:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object v6, v0, Lcom/android/systemui/shade/ShadeHeaderController;->tintedIconManagerFactory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

    iget-object v7, v0, Lcom/android/systemui/shade/ShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-virtual {v6, v7, v3}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->create(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;)Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/shade/ShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06096b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v3, v6, v1}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->setTint(II)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SYSTEM_ICONS_LOCATION:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030045

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBlockList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mBlockList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    if-eqz v3, :cond_3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    :cond_3
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->carrierIconSlots:Lkotlin/collections/EmptyList;

    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->shadeCarrierGroupControllerBuilder:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    move-object v5, v3

    iget-object v9, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mLooper:Landroid/os/Looper;

    iget-object v13, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-object/from16 v20, v6

    const/16 v21, 0x0

    iget-object v6, v0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroup:Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;

    iget-object v7, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v8, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mHandler:Landroid/os/Handler;

    iget-object v10, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mLogger:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;

    iget-object v11, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iget-object v12, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextManager$Builder;

    iget-object v14, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object v15, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mSlotIndexResolver:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;

    iget-object v2, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    move-object/from16 v18, v2

    iget-object v1, v1, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

    move-object/from16 v19, v1

    invoke-direct/range {v5 .. v21}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;-><init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;I)V

    iput-object v3, v0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V

    iget-object v3, v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->setChipVisibility(Z)V

    iget-object v2, v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean v3, v2, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    iput-boolean v3, v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->micCameraIndicatorsEnabled:Z

    iget-boolean v2, v2, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    iput-boolean v2, v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->locationIndicatorsEnabled:Z

    invoke-virtual {v1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->updatePrivacyIconSlots()V

    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/shade/ShadeHeaderController$onInit$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/shade/ShadeHeaderController$onInit$1;-><init>(Lcom/android/systemui/shade/ShadeHeaderController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/android/systemui/shade/ShadeHeaderController;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;

    iput-object v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility$5()V

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateTransition()V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->insetListener:Lcom/android/systemui/shade/ShadeHeaderController$insetListener$1;

    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationControllerListener:Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->batteryIcon:Lcom/android/systemui/battery/BatteryMeterView;

    const-string v0, "ShadeHeaderController"

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/shade/ShadeHeaderController$chipVisibilityListener$1;

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v2, "ShadeHeaderController"

    invoke-virtual {v0, v2}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationControllerListener:Lcom/android/systemui/shade/ShadeHeaderController$configurationControllerListener$1;

    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shade/ShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->systemIconsHoverContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    xor-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mPanelExpandedInLockScreen:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mPanelExpandedInLockScreen:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->updateVisibility$5()V

    :cond_1
    return-void
.end method

.method public final simulateViewDetached$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shade/ShadeHeaderController;->onViewDetached()V

    return-void
.end method

.method public final updateTransition()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    const-string v1, "LargeScreenHeaderController"

    const-wide/16 v2, 0x1000

    iget-object v4, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v0, :cond_0

    const-string v0, "Large screen constraints set"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/shade/ShadeHeaderController;->LARGE_SCREEN_HEADER_TRANSITION_ID:I

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto :goto_0

    :cond_0
    const-string v0, "Small screen constraints set"

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/systemui/shade/ShadeHeaderController;->HEADER_TRANSITION_ID:I

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->systemIconsHoverContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->systemIconsHoverContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :goto_0
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->jumpToState(I)V

    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->largeScreenActive:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsScrollY:I

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->setScrollY(I)V

    :cond_1
    return-void
.end method

.method public final updateVisibility$5()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsDisabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->qsVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->customizing:Z

    if-nez v0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mPanelExpandedInLockScreen:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->INSTANCE:Lcom/android/systemui/qs/animator/QsAnimatorState;

    const/4 v0, 0x4

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->visible:Z

    iget-object p0, p0, Lcom/android/systemui/shade/ShadeHeaderController;->mShadeCarrierGroupController:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->setListening(Z)V

    :cond_6
    :goto_2
    return-void
.end method
