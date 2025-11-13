.class Landroidx/picker/widget/SeslSpinningDatePickerSpinner;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;
    }
.end annotation


# static fields
.field public static final mDateFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;


# instance fields
.field public final mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    invoke-direct {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDateFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v6, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    return-void
.end method

.method public static getEnableStateSet()[I
    .locals 1

    sget-object v0, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    return-object v0
.end method


# virtual methods
.method public final computeScroll()V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    :cond_2
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(I)V

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    return p0
.end method

.method public final computeVerticalScrollRange()I
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    const/4 v3, 0x1

    if-gt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-gt v2, v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v2, 0x100

    const/16 v4, 0x80

    const/4 v5, 0x7

    const/high16 v6, -0x80000000

    if-eq p1, v5, :cond_4

    const/16 v5, 0x9

    if-eq p1, v5, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    goto :goto_3

    :cond_2
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v6, :cond_6

    if-ne p1, v6, :cond_3

    goto :goto_1

    :cond_3
    iput v6, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    invoke-virtual {p0, v6, v4}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {p0, p1, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_4
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    invoke-virtual {p0, v0, v4}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {p0, p1, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    :goto_2
    if-eq v0, v6, :cond_6

    goto :goto_1

    :cond_6
    :goto_3
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v5, 0x42

    const/4 v6, 0x2

    if-eq v2, v5, :cond_b

    const/16 v7, 0xa0

    if-eq v2, v7, :cond_b

    iget-object v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v1, :cond_11

    const/16 v0, 0x15

    if-eq v2, v0, :cond_1

    const/16 v0, 0x16

    if-eq v2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0, v5}, Landroid/view/View;->requestFocus(I)Z

    goto/16 :goto_0

    :cond_1
    const/16 p0, 0x11

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, p0}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_0

    :pswitch_1
    if-nez v1, :cond_9

    const/16 v1, 0x14

    if-ne v2, v1, :cond_5

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq v1, v3, :cond_4

    if-eq v1, v6, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    :cond_3
    iput v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_4
    iput v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x13

    if-ne v2, v1, :cond_11

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq v1, v6, :cond_7

    if-eq v1, v4, :cond_6

    goto/16 :goto_1

    :cond_6
    iput v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_7
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_1

    :cond_8
    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_9
    if-ne v1, v3, :cond_11

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_a

    iget p1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_a
    :goto_0
    return v3

    :cond_b
    :pswitch_2
    if-nez v1, :cond_11

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v1, v6, :cond_c

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_1

    :cond_c
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v2, 0x0

    const/4 v5, 0x5

    if-eq v1, v3, :cond_f

    if-eq v1, v4, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const/4 v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_e
    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_1

    :cond_f
    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iput v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_10
    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    :cond_11
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setInputTextTypeface()V

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setInputTextTypeface()V

    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 p1, 0x0

    move v2, p1

    move v1, v0

    :goto_0
    const/16 v3, 0x9

    if-gt v1, v3, :cond_3

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    new-instance v2, Landroid/icu/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v5, p1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v6, v2, v4

    iget-object v7, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v6, v5

    if-lez v7, :cond_4

    move v5, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/icu/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Landroid/icu/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_2
    if-ge v0, v3, :cond_7

    aget-object v4, v2, v0

    iget-object v6, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v6, v4, p1

    if-lez v6, :cond_6

    move p1, v4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const-string v2, " "

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const-string v4, ","

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v1, v5

    add-float/2addr v1, p1

    add-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int p1, v1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroidx/reflect/graphics/SeslPaintReflector;->getHCTStrokeWidth(Landroid/graphics/Paint;)F

    move-result p1

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    mul-int/lit8 p1, p1, 0xd

    add-int/2addr v1, p1

    :cond_8
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    if-eq p1, v1, :cond_a

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinWidth:I

    if-le v1, p1, :cond_9

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_3

    :cond_9
    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    :goto_3
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_a
    :goto_4
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v5

    sub-int v4, v3, v4

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v7, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    iget v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-nez v10, :cond_3

    iget v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v2, v9, v8, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v10, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v2, v9, v8, v3, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v2, v9, v9, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndices:[Ljava/util/Calendar;

    array-length v8, v2

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_7

    aget-object v11, v2, v10

    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorIndexToStringCache:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIdleAlpha:F

    cmpg-float v14, v12, v13

    if-gez v14, :cond_4

    move v12, v13

    :cond_4
    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->descent()F

    move-result v13

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->ascent()F

    move-result v14

    sub-float/2addr v13, v14

    div-float/2addr v13, v6

    add-float/2addr v13, v7

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v14

    sub-float/2addr v13, v14

    float-to-int v13, v13

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v15, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v9, v14, v15

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialAlpha:F

    const/high16 v16, 0x437f0000    # 255.0f

    if-ltz v9, :cond_6

    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    add-int/2addr v15, v9

    int-to-float v15, v15

    cmpg-float v15, v7, v15

    if-gtz v15, :cond_6

    add-int/2addr v14, v9

    int-to-float v9, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v9, v14

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v15, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v9, v3, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v9, v13

    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v4, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v14, v3, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v12, v12, v16

    mul-float/2addr v12, v6

    float-to-int v6, v12

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v4, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v9, v3, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v14, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v13

    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v4, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v13, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v12, v12, v16

    mul-float/2addr v12, v6

    float-to-int v6, v12

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v4, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v12, v12, v16

    mul-float/2addr v12, v6

    float-to-int v6, v12

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v6, v13

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11, v4, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    iget v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v6, v6

    add-float/2addr v7, v6

    add-int/lit8 v10, v10, 0x1

    move v9, v14

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/high16 v2, -0x80000000

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mContext:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    const/4 v3, 0x1

    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_3
    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object v3

    if-eqz v3, :cond_4

    iget v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v4, 0x40

    invoke-virtual {v3, v0, v4, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    cmpg-float p1, v1, v2

    const/4 v1, 0x1

    if-gez p1, :cond_1

    move p0, v1

    :cond_1
    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v1

    long-to-int v1, v1

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    iput v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventTime:J

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    const/4 v5, 0x2

    if-gez v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-nez p1, :cond_2

    invoke-virtual {v4}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iput v3, v4, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v5, v4, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object p1, v4, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v4, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-nez p1, :cond_2

    invoke-virtual {v4}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iput v3, v4, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v3, v4, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object p1, v4, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v4, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-ne p1, v5, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-boolean v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-ne p1, v5, :cond_5

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5
    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_7
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(JZ)V

    goto :goto_1

    :cond_8
    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(JZ)V

    goto :goto_1

    :cond_9
    iput-boolean v3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    :goto_1
    move v2, v3

    :cond_a
    :goto_2
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p4

    iget-object p5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p5

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p4

    iget v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p5, p3

    add-int/2addr v0, p4

    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, p3, p4, p5, v0}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_1
    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    :cond_2
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextSize:I

    mul-int/lit8 p3, p1, 0x3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p5

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr p5, v1

    sub-int/2addr p5, p3

    int-to-float p3, p5

    const/high16 p5, 0x40400000    # 3.0f

    div-float/2addr p3, p5

    const/high16 p5, 0x3f000000    # 0.5f

    add-float/2addr p3, p5

    float-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    iget p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    if-le p3, p1, :cond_3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    div-int/lit8 p3, p1, 0x3

    :cond_3
    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValueChangeOffset:I

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTop()I

    move-result p1

    iget p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr p3, p1

    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    move-result p3

    sub-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->descent()F

    move-result p3

    sub-float/2addr p1, p3

    float-to-int p1, p1

    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getBaseline()I

    move-result p3

    iget p5, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    sub-int/2addr p1, p3

    iget-object p3, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast p3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;

    iput p1, p3, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;->mAdjustEditTextPosition:I

    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/app/SeslTimePickerDialog$2;

    iput-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/app/SeslTimePickerDialog$2;

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mActivatedAlpha:F

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAlpha:F

    new-instance p1, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;

    invoke-direct {p1, p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$1;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mReservedStartAnimation:Z

    :cond_4
    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mModifiedTxtHeight:I

    iget p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    if-le p1, p2, :cond_5

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValueChangeOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    goto :goto_0

    :cond_5
    iput p4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iput v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    :cond_6
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxWidth:I

    invoke-static {p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxHeight:I

    invoke-static {p2, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-super {v2, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v4, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinWidth:I

    if-eq v4, v3, :cond_0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iget p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinHeight:I

    if-eq p0, v3, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    :cond_1
    invoke-virtual {v2, v0, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    sget v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    iget-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTouchSlop:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v2, v6, :cond_7

    if-eq v2, v7, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_7

    :cond_3
    iget-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v2, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-eq v4, v6, :cond_5

    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    if-le v1, v5, :cond_6

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->removeAllCallbacks()V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    :cond_5
    iget v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(I)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_6
    :goto_0
    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto/16 :goto_7

    :cond_7
    iget-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v2, :cond_8

    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongPressed:Z

    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_8
    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    iput v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v8, 0x12c

    iput-wide v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLongPressUpdateInterval:J

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v2, :cond_9

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iget-object v8, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    int-to-float v10, v9

    iget v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v10, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinimumFlingVelocity:I

    if-le v11, v12, :cond_e

    if-gt v10, v5, :cond_a

    iget-boolean v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v2, :cond_a

    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_6

    :cond_a
    if-lez v8, :cond_b

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMinValue:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_3

    :cond_b
    if-gez v8, :cond_c

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mValue:Ljava/util/Calendar;

    iget-object v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mMaxValue:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_3

    :cond_c
    iput v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousScrollerY:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    iget v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    int-to-float v2, v2

    iput v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPreviousSpringY:F

    int-to-float v2, v8

    iget-object v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput v2, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget-object v9, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    iget v11, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/high16 v16, -0x80000000

    const v17, 0x7fffffff

    move v13, v8

    invoke-virtual/range {v9 .. v17}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v2, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    iget v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v2, v4

    iget v5, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v2, v5

    if-lez v8, :cond_d

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    int-to-float v2, v2

    goto :goto_2

    :cond_d
    neg-int v4, v4

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :goto_2
    iget v4, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mCurrentScrollOffset:I

    int-to-float v4, v4

    iput v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput-boolean v6, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    iput-boolean v6, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_3
    invoke-virtual {v0, v7}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_6

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    iget-wide v13, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mLastDownEventTime:J

    sub-long/2addr v11, v13

    if-gt v10, v5, :cond_12

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v11, v4

    if-gez v1, :cond_12

    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v1, :cond_f

    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPerformClickOnTap:Z

    invoke-virtual {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    goto :goto_5

    :cond_f
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v9, v1, :cond_10

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-virtual {v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iput v7, v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v6, v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v1, v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_10
    iget v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v9, v1, :cond_11

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-virtual {v2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iput v7, v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v7, v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v1, v2, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;->mDelegator:Landroidx/picker/widget/SeslSpinningDatePickerSpinner;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_11
    invoke-virtual {v0, v10}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    :goto_4
    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_5

    :cond_12
    iget-boolean v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongClicked:Z

    if-eqz v1, :cond_13

    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongClicked:Z

    :cond_13
    invoke-virtual {v0, v10}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->startFadeAnimation(Z)V

    :goto_5
    iput-boolean v3, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsValueChanged:Z

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    :goto_6
    iget-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_7
    move v3, v6

    :cond_14
    :goto_8
    return v3
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iget-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSpringFlingRunning:Z

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsHcfEnabled:Z

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->setInputTextTypeface()V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final performClick()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final performLongClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iput-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mIsLongClicked:Z

    :cond_0
    return v1
.end method

.method public final scrollBy(II)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->scrollBy(I)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->mScrollState:I

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->stopScrollAnimation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
