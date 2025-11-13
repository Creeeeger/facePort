.class public final Lcom/android/systemui/statusbar/notification/stack/AmbientState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# instance fields
.field public mAppearFraction:F

.field public mAppearing:Z

.field public final mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

.field public mClearAllInProgress:Z

.field public mContentHeight:I

.field public mCurrentScrollVelocity:F

.field public mDimmed:Z

.field public mDozeAmount:F

.field public mDozing:Z

.field public mDragDownOnKeyguard:Z

.field public mExpandingVelocity:F

.field public mExpansionChanging:Z

.field public mExpansionFraction:F

.field public mExtraTopInsetForFullShadeTransition:F

.field public mFractionToShade:F

.field public mHideAmount:F

.field public mHideSensitive:Z

.field public mIsClosing:Z

.field public mIsCollapsingHeadsup:Z

.field public mIsFlingRequiredAfterLockScreenSwipeUp:Z

.field public mIsFlinging:Z

.field public mIsSmallScreen:Z

.field public mIsSwipingUp:Z

.field public final mKeyguardNotiExpandListeners:Ljava/util/ArrayList;

.field public final mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

.field public mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mLayoutHeight:I

.field public mLayoutMaxHeight:I

.field public mLayoutMinHeight:I

.field public mMaxHeadsUpTranslation:F

.field public mNotificationScrimTop:F

.field public mOnPulseHeightChangedListener:Ljava/lang/Runnable;

.field public mOrientation:I

.field public mOverExpansion:F

.field public mOverScrollBottomAmount:F

.field public mOverScrollTopAmount:F

.field public mPanelTracking:Z

.field public mPluginLockMode:I

.field public mPulseHeight:F

.field public mPulsing:Z

.field public mPulsingRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mQsEditMode:Z

.field public mQsExpansionFraction:F

.field public mScrollY:I

.field public final mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

.field public mShadeExpanded:Z

.field public mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field public mStackEndHeight:F

.field public mStackHeight:F

.field public mStackTopMargin:I

.field public mStackTranslation:F

.field public mStackY:F

.field public final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public mStatusBarState:I

.field public mTopPadding:I

.field public mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;Lcom/android/systemui/statusbar/policy/AvalancheController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p7, 0x47c35000    # 100000.0f

    iput p7, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    new-instance p7, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mKeyguardNotiExpandListeners:Ljava/util/ArrayList;

    const/4 p7, 0x0

    iput p7, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    iput p7, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    iput p7, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExtraTopInsetForFullShadeTransition:F

    iput p7, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    const/4 p7, 0x0

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLargeScreenShadeInterpolator:Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0718c2

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p3, 0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mTopPadding="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    const-string v1, "mStackTopMargin="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    const-string v1, "mStackTranslation="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    const-string v1, "mLayoutMinHeight="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    const-string v1, "mLayoutMaxHeight="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMaxHeight:I

    const-string v1, "mLayoutHeight="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    const-string v1, "mContentHeight="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mContentHeight:I

    const-string v1, "mHideSensitive="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    const-string v1, "mShadeExpanded="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    const-string v1, "mClearAllInProgress="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    const-string v1, "mStatusBarState="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mExpansionChanging="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    const-string v1, "mPanelFullWidth="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    const-string v1, "mPulsing="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    const-string v1, "mPulseHeight="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const-string v1, "mTrackedHeadsUpRow.key="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mMaxHeadsUpTranslation="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    const-string v1, "mDozeAmount="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const-string v1, "mDozing="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    const-string v1, "mFractionToShade="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    const-string v1, "mHideAmount="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const-string v1, "mAppearFraction="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    const-string v1, "mAppearing="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearing:Z

    const-string v1, "mExpansionFraction="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    const-string v1, "mExpandingVelocity="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    const-string v1, "mOverScrollTopAmount="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    const-string v1, "mOverScrollBottomAmount="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    const-string v1, "mOverExpansion="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverExpansion:F

    const-string v1, "mStackHeight="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    const-string v1, "mStackEndHeight="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    const-string v1, "mStackY="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    const-string v1, "mScrollY="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    const-string v1, "mCurrentScrollVelocity="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    const-string v1, "mIsSwipingUp="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardStatusViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    const-string v1, "mPanelTracking="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    const-string v1, "mIsFlinging="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlinging:Z

    const-string v1, "mIsFlingRequiredAfterLockScreenSwipeUp="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    const-string v1, "mZDistanceBetweenElements="

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "mBaseZHeight=0"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mIsClosing="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsClosing:Z

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AmbientState"

    invoke-static {v1, v0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addHeaderLine(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mTopPadding"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTopMargin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mStackTopMargin"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mStackTranslation"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mLayoutMinHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMaxHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mLayoutMaxHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mLayoutHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mContentHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mContentHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mHideSensitive"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mShadeExpanded"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mClearAllInProgress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mClearAllInProgress"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mStatusBarState"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mExpansionChanging"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mPanelFullWidth"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mPulsing"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mPulseHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->logKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "mTrackedHeadsUpRow.key="

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mMaxHeadsUpTranslation"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mDozeAmount"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mDozing"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mFractionToShade:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mFractionToShade"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mAppearFraction"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mAppearing"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mExpansionFraction"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mExpandingVelocity"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mOverScrollTopAmount"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mOverScrollBottomAmount"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverExpansion:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mOverExpansion"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mStackHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mStackEndHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mStackY"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mScrollY"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mCurrentScrollVelocity"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mIsSwipingUp"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mPanelTracking"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlinging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mIsFlinging"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mIsFlingRequiredAfterLockScreenSwipeUp"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mZDistanceBetweenElements"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mBaseZHeight"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "mDragDownOnKeyguard"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getInnerHeight$1()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mContentHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isFlingRequiredAfterLockScreenSwipeUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    return p0
.end method

.method public final isFullyHidden()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isHiddenAtAll()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isNeedsToExpandLocksNoti()Z
    .locals 3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNotificationAsCard()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOrientation:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPluginLockMode:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final isOnKeyguard()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPulseExpanding()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const v1, 0x47c35000    # 100000.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setDragDownOnKeyguard(Z)V
    .locals 2

    const-string/jumbo v0, "setDragDownOnKeyguard: "

    const-string v1, "AmbientState"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mKeyguardNotiExpandListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState$KeyguardNotiExpandListener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDragDownOnKeyguard:Z

    check-cast v0, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->onStateChanged(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v1, v1, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->onStateChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setFlingRequiredAfterLockScreenSwipeUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    return-void
.end method

.method public final setPulseHeight(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOnPulseHeightChangedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
