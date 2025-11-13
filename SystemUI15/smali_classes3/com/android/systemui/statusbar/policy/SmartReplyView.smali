.class public Lcom/android/systemui/statusbar/policy/SmartReplyView;
.super Landroid/view/ViewGroup;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# static fields
.field public static final DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

.field public static final MEASURE_SPEC_ANY_LENGTH:I


# instance fields
.field public final mBreakIterator:Ljava/text/BreakIterator;

.field public mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

.field public mCurrentBackgroundColor:I

.field public mCurrentRippleColor:I

.field public mCurrentTextColor:I

.field public mDidHideSystemReplies:Z

.field public final mHeightUpperLimit:I

.field public mLastDispatchDrawTime:J

.field public mLastDrawChildTime:J

.field public mLastMeasureTime:J

.field public mMaxNumActions:I

.field public mMaxSqueezeRemeasureAttempts:I

.field public mMinNumSystemGeneratedReplies:I

.field public mSmartRepliesGeneratedByAssistant:Z

.field public mSmartReplyContainer:Landroid/view/View;

.field public final mSpacing:I

.field public mTotalSqueezeRemeasureAttempts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v2, 0x7f071427

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    const v1, 0x7f060941

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnoticolorpicker/NotificationColorPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v0, v3}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v4, 0x7f060944

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v4, 0x7f060507

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v4, 0xff

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    invoke-static {v1, v1}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    sget-object v1, Lcom/android/systemui/res/R$styleable;->SmartReplyView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Lcom/android/systemui/statusbar/policy/SmartReplyView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2, v0}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDispatchDrawTime:J

    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDrawChildTime:J

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    return p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 9

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "mMaxSqueezeRemeasureAttempts="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mTotalSqueezeRemeasureAttempts="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mMaxNumActions="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mSmartRepliesGeneratedByAssistant="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "mMinNumSystemGeneratedReplies="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mHeightUpperLimit="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "mDidHideSystemReplies="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "lastMeasureAge (s)="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastMeasureTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v8, 0x7fc00000    # Float.NaN

    if-nez v6, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float/2addr v2, v7

    :goto_0
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string v2, "lastDrawChildAge (s)="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDrawChildTime:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    sub-long v2, v0, v2

    long-to-float v2, v2

    div-float/2addr v2, v7

    :goto_1
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(F)V

    const-string v2, "lastDispatchDrawAge (s)="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastDispatchDrawTime:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float v8, v0, v7

    :goto_2
    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->println(F)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const-string v1, "children: num="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const-string v4, "["

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "] type="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v4, " squeezeStatus="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " show="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v4, " noShowReason="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " view="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v3, Landroid/widget/Button;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v4, p1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sget-object v2, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "childCount"

    invoke-static {v0, v2, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "buttonText"

    invoke-static {v0, v4, v5}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "visibility"

    invoke-static {v0, v5, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/Button;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "width"

    invoke-static {v0, v5, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/Button;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "height"

    invoke-static {v0, v5, v4}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/widget/Button;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%08x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "currentTextColor"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogItem(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-ne p1, p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p3

    :goto_0
    sub-int/2addr p4, p2

    if-eqz p5, :cond_1

    iget p1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    sub-int/2addr p4, p1

    goto :goto_1

    :cond_1
    iget p4, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, p3

    :goto_2
    if-ge p2, p1, :cond_5

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eqz p5, :cond_3

    sub-int v3, p4, v1

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    add-int v4, v3, v1

    invoke-virtual {v0, v3, p3, v4, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    add-int/2addr v1, v0

    if-eqz p5, :cond_4

    sub-int/2addr p4, v1

    goto :goto_4

    :cond_4
    add-int/2addr p4, v1

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final onMeasure(II)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iput-boolean v5, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    iput v5, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    const-string/jumbo v8, "reset"

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iput v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    const-string v6, "SmartReplyView"

    if-nez v4, :cond_2

    const-string v4, "Single line button queue leaked between onMeasure calls"

    invoke-static {v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->clear()V

    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    iget v7, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v8, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v7, v8

    invoke-direct {v4, v7, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    sget-object v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxNumActions:I

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    move v12, v5

    move v13, v12

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v5, -0x1

    if-eq v10, v5, :cond_3

    iget-object v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    sget-object v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v5, v15, :cond_3

    if-lt v12, v10, :cond_3

    const-string v5, "max-actions-shown"

    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_3

    :cond_3
    instance-of v5, v14, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    move-object v5, v14

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {v14}, Landroid/view/View;->forceLayout()V

    :cond_4
    sget v5, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    invoke-virtual {v14, v5, v1}, Landroid/view/View;->measure(II)V

    move-object v5, v14

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    move-result-object v15

    move-object/from16 v18, v9

    const-string v9, "Button layout is null after measure."

    if-nez v15, :cond_5

    invoke-static {v6, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/widget/Button;->getLineCount()I

    move-result v15

    move/from16 v19, v10

    const/4 v10, 0x1

    if-ge v15, v10, :cond_6

    const-string v5, "line-count-0"

    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const/4 v10, 0x2

    if-le v15, v10, :cond_7

    const-string v5, "line-count-3+"

    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    :goto_3
    move-object/from16 v9, v18

    move/from16 v10, v19

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    const/4 v10, 0x1

    if-ne v15, v10, :cond_8

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v10, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    iget v10, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    iget v15, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-direct {v5, v10, v15}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    if-nez v11, :cond_9

    iget-object v10, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    sget-object v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v10, v15, :cond_9

    new-instance v10, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    iget v11, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    iget v15, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-direct {v10, v11, v15}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(II)V

    move-object v11, v10

    :cond_9
    if-nez v13, :cond_a

    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    :goto_4
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v20, v5

    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    add-int/2addr v10, v15

    add-int/2addr v10, v5

    iput v10, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v5, v2, :cond_21

    :goto_5
    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v5, v2, :cond_1b

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v14

    if-nez v14, :cond_b

    goto :goto_6

    :cond_b
    invoke-interface {v14, v10, v5}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v15, v10}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    move-object/from16 v21, v11

    div-int/lit8 v11, v14, 0x2

    invoke-virtual {v15, v11}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v11

    const/4 v15, -0x1

    if-ne v11, v15, :cond_c

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v11}, Ljava/text/BreakIterator;->next()I

    move-result v11

    if-ne v11, v15, :cond_c

    move-object/from16 v26, v3

    move-object/from16 v22, v8

    move/from16 v23, v12

    move/from16 v24, v13

    const/4 v0, -0x1

    const/4 v15, -0x1

    goto/16 :goto_d

    :cond_c
    invoke-virtual {v5}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v15}, Ljava/text/BreakIterator;->current()I

    move-result v15

    move-object/from16 v22, v8

    move/from16 v23, v12

    const/4 v8, 0x0

    invoke-static {v10, v8, v15, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v12

    invoke-static {v10, v15, v14, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v15

    cmpl-float v8, v12, v8

    if-eqz v8, :cond_13

    if-lez v8, :cond_d

    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    iget v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMaxSqueezeRemeasureAttempts:I

    move/from16 v24, v13

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v12, :cond_f

    move/from16 v25, v12

    iget v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    const/16 v17, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mTotalSqueezeRemeasureAttempts:I

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    if-eqz v8, :cond_e

    invoke-virtual {v12}, Ljava/text/BreakIterator;->previous()I

    move-result v12

    :goto_9
    const/4 v0, -0x1

    goto :goto_a

    :cond_e
    invoke-virtual {v12}, Ljava/text/BreakIterator;->next()I

    move-result v12

    goto :goto_9

    :goto_a
    if-ne v12, v0, :cond_10

    :cond_f
    move-object/from16 v26, v3

    goto :goto_c

    :cond_10
    move-object/from16 v26, v3

    const/4 v0, 0x0

    invoke-static {v10, v0, v12, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    invoke-static {v10, v12, v14, v11}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    cmpg-float v27, v12, v15

    if-gez v27, :cond_14

    if-eqz v8, :cond_11

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_12

    goto :goto_b

    :cond_11
    cmpl-float v0, v3, v0

    if-ltz v0, :cond_12

    :goto_b
    move v15, v12

    goto :goto_c

    :cond_12
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move v15, v12

    move/from16 v12, v25

    move-object/from16 v3, v26

    goto :goto_8

    :cond_13
    move-object/from16 v26, v3

    move/from16 v24, v13

    :cond_14
    :goto_c
    float-to-double v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move v15, v0

    const/4 v0, -0x1

    :goto_d
    if-ne v15, v0, :cond_15

    const/4 v0, -0x1

    const/4 v15, -0x1

    goto :goto_11

    :cond_15
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    invoke-virtual {v5}, Landroid/widget/Button;->getPaddingStart()I

    move-result v3

    invoke-virtual {v5}, Landroid/widget/Button;->getPaddingEnd()I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v8, v15

    invoke-virtual {v5}, Landroid/widget/Button;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v10, 0x0

    aget-object v3, v3, v10

    if-nez v3, :cond_16

    const/4 v3, 0x0

    goto :goto_e

    :cond_16
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v5}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    move-result v10

    add-int/2addr v3, v10

    :goto_e
    add-int/2addr v8, v3

    const/high16 v3, -0x80000000

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v5, v8, v1}, Landroid/widget/Button;->measure(II)V

    invoke-virtual {v5}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_17

    invoke-static {v6, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    invoke-virtual {v5}, Landroid/widget/Button;->getLineCount()I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_18

    if-lt v3, v0, :cond_19

    :cond_18
    const/4 v0, 0x3

    goto :goto_f

    :cond_19
    const/4 v10, 0x1

    iput v10, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    sub-int v15, v0, v3

    goto :goto_10

    :goto_f
    iput v0, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    const/4 v15, -0x1

    :goto_10
    const/4 v0, -0x1

    :goto_11
    if-eq v15, v0, :cond_1a

    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    iget v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    sub-int/2addr v3, v15

    iput v3, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v11, v21

    move-object/from16 v8, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move-object/from16 v3, v26

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v26, v3

    move-object/from16 v22, v8

    move-object/from16 v21, v11

    move/from16 v23, v12

    move/from16 v24, v13

    iget v0, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v0, v2, :cond_1e

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    goto :goto_12

    :cond_1d
    const-string v0, "overflow"

    move-object/from16 v3, v26

    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v4, v20

    move-object/from16 v11, v21

    move-object/from16 v8, v22

    move/from16 v12, v23

    move/from16 v13, v24

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v3, v26

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v8, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1f

    const/4 v8, 0x2

    iput v8, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    goto :goto_13

    :cond_1f
    const/4 v8, 0x2

    goto :goto_13

    :cond_20
    :goto_14
    const/4 v9, 0x1

    goto :goto_15

    :cond_21
    move-object/from16 v22, v8

    move-object/from16 v21, v11

    move/from16 v23, v12

    move/from16 v24, v13

    goto :goto_14

    :goto_15
    iput-boolean v9, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    const-string v0, "n/a"

    iput-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    add-int/lit8 v13, v24, 0x1

    iget-object v0, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    sget-object v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v0, v3, :cond_22

    add-int/lit8 v12, v23, 0x1

    goto :goto_16

    :cond_22
    move/from16 v12, v23

    :goto_16
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v11, v21

    move-object/from16 v8, v22

    goto/16 :goto_2

    :cond_23
    move v3, v5

    move-object/from16 v22, v8

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    if-eqz v2, :cond_27

    iget v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_24

    goto :goto_18

    :cond_24
    move-object/from16 v8, v22

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_25
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    if-eqz v5, :cond_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_26
    if-eqz v3, :cond_27

    iget v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinNumSystemGeneratedReplies:I

    if-lt v3, v2, :cond_28

    :cond_27
    const/4 v3, 0x1

    :goto_18
    const/4 v10, 0x0

    goto :goto_1a

    :cond_28
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    const-string v4, "not-enough-system-replies"

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    goto :goto_19

    :cond_29
    const/4 v3, 0x1

    const/4 v10, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDidHideSystemReplies:Z

    move-object v4, v11

    :goto_1a
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    iget v2, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v8, v10

    :goto_1b
    if-ge v8, v6, :cond_2e

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-boolean v11, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    if-nez v11, :cond_2a

    const/high16 v9, -0x80000000

    const/4 v12, 0x3

    goto :goto_1d

    :cond_2a
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget v9, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    const/4 v12, 0x3

    if-ne v9, v12, :cond_2b

    move v9, v3

    const v11, 0x7fffffff

    goto :goto_1c

    :cond_2b
    move v9, v10

    :goto_1c
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-eq v13, v2, :cond_2c

    move v9, v3

    :cond_2c
    if-eqz v9, :cond_2d

    const/high16 v9, -0x80000000

    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v7, v11, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1d

    :cond_2d
    const/high16 v9, -0x80000000

    :goto_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    iget v3, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v5, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    iget v4, v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v4, p1

    invoke-static {v3, v4}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v3

    invoke-static {v2, v1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mLastMeasureTime:J

    return-void
.end method

.method public final setButtonColors(Landroid/widget/Button;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentRippleColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    const p0, 0x3f4ccccd    # 0.8f

    const v0, 0x3fa66666    # 1.3f

    const v1, 0x7f071425

    invoke-static {p1, v1, p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    return-void
.end method

.method public final updateButtonColorOnUiModeChanged()V
    .locals 8

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v3, 0x7f060507

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentRippleColor:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v3, 0x7f060941

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v3, 0x7f060540

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v5, 0x7f

    invoke-static {v5, v0, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v1

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v1

    instance-of v5, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v7, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v5

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v1

    iget v6, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentTextColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
