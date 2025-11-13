.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/util/IndentingPrintWriter;J[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$1:Landroid/util/IndentingPrintWriter;

    iput-wide p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$1:Landroid/util/IndentingPrintWriter;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda6;->f$2:J

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mPulsing:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v4, "pulsing"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v4, "expanded"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInHeadsUpPinnedMode:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v4, "headsUpPinned"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldUseRoundedRectClipping:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v4, "qsClipping"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDismissUsingRowTranslationX:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v4, "qsClipDismiss"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/util/DumpUtilsKt;->visibilityString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v4, "visibility"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v4, "alpha"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSuppressChildrenMeasureAndLayout:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo v4, "suppressChildrenMeasureLayout"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v4, "scrollY"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v4, "maxTopPadding"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mShouldShowShelfOnly:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo v4, "showShelfOnly"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsExpansionFraction:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v4, "qsExpandFraction"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsCurrentUserSetup:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v4, "isCurrentUserSetup"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v4, "hideAmount"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v4, "ambientStateSwipingUp"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxDisplayedNotifications:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v4, "maxDisplayedNotifications"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicContentHeight:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v4, "intrinsicContentHeight"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mContentHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v4, "contentHeight"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v4, "intrinsicPadding"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v4, "topPadding"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBottomPadding:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v4, "bottomPadding"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo p0, "roundedRectClipping{l="

    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingLeft:I

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " t="

    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingTop:I

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " r="

    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingRight:I

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " b="

    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingBottom:I

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, " +y="

    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    iget v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRoundedRectClippingYTranslation:I

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p0, "} topRadius="

    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(F)V

    const-string p0, " bottomRadius="

    invoke-virtual {v1, p0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mBgCornerRadii:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(F)V

    const-string p0, "requestedClipBounds"

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mRequestedClipBounds:Landroid/graphics/Rect;

    invoke-static {v1, p0, v4}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsClipped:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v4, "isClipped"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v4, "translationX"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v4, "translationY"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationZ()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string/jumbo v4, "translationZ"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSkinnyNotifsInLandscape:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string/jumbo v4, "skinnyNotifsInLandscape"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMinimumPaddings:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v4, "minimumPaddings"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mQsTilePadding:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v4, "qsTilePadding"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mSidePaddings:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v4, "sidePaddings"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v4, "elapsedRealtime"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "lastInitView"

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastInitViewDumpString:Ljava/lang/String;

    invoke-static {v1, p0, v4}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastInitViewElapsedRealtime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v4, "lastInitViewElapsedRealtime"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastInitViewElapsedRealtime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v4, "lastInitViewMillisAgo"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v4, "shouldUseSplitNotificationShade"

    invoke-static {v1, v4, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "lastUpdateSidePadding"

    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastUpdateSidePaddingDumpString:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastUpdateSidePaddingElapsedRealtime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "lastUpdateSidePaddingElapsedRealtime"

    invoke-static {v1, v5, v4}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mLastUpdateSidePaddingElapsedRealtime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lastUpdateSidePaddingMillisAgo"

    invoke-static {v1, v3, v2}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "isSmallLandscapeLockscreenEnabled"

    invoke-static {v1, v2, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mNotificationStackSizeCalculator:Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackSizeCalculator;->saveSpaceOnLockscreen:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NotificationStackSizeCalculator saveSpaceOnLockscreen="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScrollViewFields:Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "StackViewStates"

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :try_start_0
    const-string/jumbo v0, "scrimClippingShape"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "stackTop"

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;->stackTop:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "stackBottom"

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;->stackBottom:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "headsUpTop"

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;->headsUpTop:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "isScrolledToTop"

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ScrollViewFields;->isScrolledToTop:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/systemui/util/DumpUtilsKt;->println(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    throw p0
.end method
