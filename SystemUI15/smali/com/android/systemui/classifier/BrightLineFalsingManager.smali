.class public final Lcom/android/systemui/classifier/BrightLineFalsingManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# static fields
.field public static final DEBUG:Z

.field public static final RECENT_INFO_LOG:Ljava/util/Queue;

.field public static final RECENT_SWIPES:Ljava/util/Queue;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mBeliefListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

.field public final mClassifiers:Ljava/util/Collection;

.field public final mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field public mDestroyed:Z

.field public final mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

.field public final mFalsingBeliefListeners:Ljava/util/List;

.field public final mFalsingTapListeners:Ljava/util/List;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mGestureFinalizedListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

.field public final mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public mLastProximityEvent:Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;

.field public final mLongTapClassifier:Lcom/android/systemui/classifier/LongTapClassifier;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPriorInteractionType:I

.field public mPriorResults:Ljava/util/Collection;

.field public final mSessionListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

.field public final mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

.field public final mTestHarness:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FalsingManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/internal/logging/MetricsLogger;Ljava/util/Set;Lcom/android/systemui/classifier/SingleTapClassifier;Lcom/android/systemui/classifier/LongTapClassifier;Lcom/android/systemui/classifier/DoubleTapClassifier;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/accessibility/AccessibilityManager;ZLcom/android/systemui/flags/FeatureFlags;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;",
            "Lcom/android/systemui/classifier/SingleTapClassifier;",
            "Lcom/android/systemui/classifier/LongTapClassifier;",
            "Lcom/android/systemui/classifier/DoubleTapClassifier;",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Z",
            "Lcom/android/systemui/flags/FeatureFlags;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSessionListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mBeliefListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mGestureFinalizedListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    const/4 v1, 0x7

    iput v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iput-object p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    iput-object p5, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLongTapClassifier:Lcom/android/systemui/classifier/LongTapClassifier;

    iput-object p6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    iput-object p7, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    iput-object p8, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p9, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean p10, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mTestHarness:Z

    iput-object p11, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object p0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mGestureFinalizedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getPassedResult(D)Ljava/util/Collection;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkDestroyed()V
    .locals 1

    iget-boolean p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDestroyed:Z

    if-eqz p0, :cond_0

    const-string p0, "FalsingManager"

    const-string v0, "Tried to use FalsingManager after being destroyed!"

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final cleanupInternal()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDestroyed:Z

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object v1, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSessionListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mGestureFinalizedListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mGestureFinalizedListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    new-instance v1, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    iget-object v0, v0, Lcom/android/systemui/classifier/HistoryTracker;->mBeliefListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mBeliefListener:Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "BRIGHTLINE FALSING MANAGER"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "classifierEnabled="

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mJustUnlockedWithFace="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "isDocked="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "width="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mWidthPixels:I

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "height="

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mHeightPixels:I

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Recent swipes:"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/StringJoiner;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mIsFalse:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    goto :goto_2

    :cond_1
    const-string v3, "0"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mInteractionType:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v0, v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->mRecentMotionEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4

    :cond_4
    const-string p0, "No recent swipes"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p0, "Recent falsing info:"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public final isClassifierEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isFalseDoubleTap()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    invoke-virtual {v1}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    invoke-virtual {v1, v0}, Lcom/android/systemui/classifier/DoubleTapClassifier;->calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->getReason()Ljava/lang/String;

    iget-boolean p0, v0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    return p0
.end method

.method public final isFalseLongTap(I)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    move-result v0

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    invoke-static {v2, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return v1

    :cond_0
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide v6, 0x3fe3333333333333L    # 0.6

    goto :goto_0

    :cond_2
    const-wide v6, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    :cond_3
    move-wide v6, v4

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLongTapClassifier:Lcom/android/systemui/classifier/LongTapClassifier;

    invoke-virtual {v8, v0, v6, v7}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    iget-boolean v0, v0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    if-nez v0, :cond_7

    iget-boolean p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    if-eqz p1, :cond_6

    invoke-static {v2, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    goto :goto_2

    :cond_6
    invoke-static {v4, v5}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    :goto_2
    return v1

    :cond_7
    return v0
.end method

.method public final isFalseTap(I)Z
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return v3

    :cond_0
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_4

    const/4 v8, 0x2

    if-eq p1, v8, :cond_3

    const/4 v8, 0x3

    if-eq p1, v8, :cond_2

    :cond_1
    move-wide v8, v6

    goto :goto_0

    :cond_2
    const-wide v8, 0x3fe3333333333333L    # 0.6

    goto :goto_0

    :cond_3
    const-wide v8, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    :cond_4
    move-wide v8, v4

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mPriorMotionEvents:Ljava/util/List;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v10

    :goto_1
    iget-object v11, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    invoke-virtual {v11, v10, v8, v9}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    iget-boolean v8, v8, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    if-nez v8, :cond_9

    iget-boolean p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    if-eqz p1, :cond_6

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->isFalseDoubleTap()Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    move-result-wide v1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    cmpl-double p1, v1, v8

    if-lez p1, :cond_8

    const-string p1, "BrightLineFalsingManager"

    const-string v1, "bad history"

    invoke-static {v6, v7, p1, v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return v0

    :cond_8
    invoke-static {v4, v5}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return v3

    :cond_9
    return v8
.end method

.method public final isFalseTouch(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    iput p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;I[Z)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    iput-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const/16 v2, 0x12

    if-ne p1, v2, :cond_1

    aget-boolean p1, v0, v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->isFalseTap(I)Z

    move-result p0

    and-int/2addr p0, p1

    aput-boolean p0, v0, v1

    :cond_1
    aget-boolean p0, v0, v1

    return p0
.end method

.method public final isProximityNear()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLastProximityEvent:Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;->getCovered()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isReportingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isSimpleTap()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/classifier/TapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    iget-boolean p0, v0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isUnlockingDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mLastProximityEvent:Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onSuccessfulUnlock()V
    .locals 0

    return-void
.end method

.method public final removeFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final skipFalsing(I)Z
    .locals 4

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mTestHarness:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-boolean v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mWirelessCharging:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mA11YAction:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    iget-object v0, v0, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->mInputEvents:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentKeyEvents:Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/TimeLimitedInputEventBuffer;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/systemui/flags/Flags;->FALSING_OFF_FOR_UNFOLDED:Lcom/android/systemui/flags/ReleasedFlag;

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast p0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p0, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mIsFoldableDevice:Z

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/android/systemui/classifier/FalsingDataProvider;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;->getFolded()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    return v1
.end method
