.class public final Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public final mContext:Landroid/content/Context;

.field public mDisplayCutoutTouchableRegionSize:I

.field public mForceCollapsedUntilLayout:Z

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public mIsStatusBarExpanded:Z

.field public mNotificationPanelView:Landroid/view/View;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mNotificationShadeWindowView:Landroid/view/View;

.field public final mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;

.field public final mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

.field public mShouldAdjustInsets:Z

.field public mStatusBarHeight:I

.field public final mTouchableRegion:Landroid/graphics/Region;

.field public final mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Ljavax/inject/Provider;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/util/kotlin/JavaAdapter;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mIsStatusBarExpanded:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    new-instance p6, Landroid/graphics/Region;

    invoke-direct {p6}, Landroid/graphics/Region;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->initResources$1()V

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    check-cast p3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    move-object p3, p4

    check-cast p3, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    check-cast p4, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object p3, p4, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpPhoneListeners:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    check-cast p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iput-object p1, p2, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda0;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    sget p1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    check-cast p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    invoke-virtual {p7, p1, p2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final calculateTouchableRegion()Landroid/graphics/Region;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->getTopHeadsUpEntry()Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager$HeadsUpEntry;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->rowIsChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mGroupMembershipManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManagerImpl;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    aget v3, v2, v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    const/4 v6, 0x1

    aget v2, v2, v6

    iget v7, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpInset:I

    if-gt v2, v7, :cond_3

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    add-int/2addr v2, v1

    invoke-virtual {v7, v3, v6, v5, v2}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTouchableRegion:Landroid/graphics/Region;

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarHeight:I

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateRegionForNotch(Landroid/graphics/Region;)V

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p2, "StatusBarTouchableRegionManager state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mTouchableRegion="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final initResources$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mDisplayCutoutTouchableRegionSize:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mStatusBarHeight:I

    return-void
.end method

.method public final updateRegionForNotch(Landroid/graphics/Region;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "TouchableRegionManager"

    const-string p1, "StatusBarWindowView is not attached."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x30

    invoke-static {v2, v1, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V

    const/4 v0, 0x0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mDisplayCutoutTouchableRegionSize:I

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public final updateTouchableRegion()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    if-nez v4, :cond_1

    check-cast v3, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpAnimatingAway:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mForceCollapsedUntilLayout:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->forcePluginOpen:Z

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    if-ne v1, v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager$$ExternalSyntheticLambda2;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mNotificationShadeWindowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->mShouldAdjustInsets:Z

    return-void
.end method
