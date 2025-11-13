.class public Landroidx/picker/widget/SeslNumberPicker;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslNumberPicker$CustomEditText;
    }
.end annotation


# static fields
.field public static final sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;


# instance fields
.field public final mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslNumberPicker;->sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;-><init>(Landroidx/picker/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

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

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    :cond_2
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(I)V

    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    return p0
.end method

.method public final computeVerticalScrollRange()I
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-gt v0, v2, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-gt v2, v0, :cond_3

    const/4 v3, 0x3

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x100

    const/16 v2, 0x80

    const/4 v5, 0x7

    const/high16 v6, -0x80000000

    if-eq p1, v5, :cond_6

    const/16 v5, 0x9

    if-eq p1, v5, :cond_6

    const/16 v3, 0xa

    if-eq p1, v3, :cond_4

    goto :goto_3

    :cond_4
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v6, :cond_8

    if-ne p1, v6, :cond_5

    goto :goto_1

    :cond_5
    iput v6, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    invoke-virtual {p0, v6, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    :goto_1
    move v1, v4

    goto :goto_3

    :cond_6
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-ne p1, v3, :cond_7

    goto :goto_2

    :cond_7
    iput v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    :goto_2
    if-eq v3, v6, :cond_8

    goto :goto_1

    :cond_8
    :goto_3
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

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

    iget-object v7, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-nez v1, :cond_14

    const/16 v0, 0x15

    if-eq v2, v0, :cond_1

    const/16 v0, 0x16

    if-eq v2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0, v5}, Landroid/view/View;->requestFocus(I)Z

    goto/16 :goto_0

    :cond_1
    const/16 p0, 0x11

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->focusSearch(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, p0}, Landroid/view/View;->requestFocus(I)Z

    goto/16 :goto_0

    :pswitch_1
    iget-boolean v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    if-nez v1, :cond_a

    const/16 v1, 0x14

    if-ne v2, v1, :cond_6

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq v1, v3, :cond_5

    if-eq v1, v6, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v1, v2, :cond_4

    goto/16 :goto_1

    :cond_4
    iput v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    goto/16 :goto_0

    :cond_5
    iput v6, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x13

    if-ne v2, v1, :cond_14

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq v1, v6, :cond_8

    if-eq v1, v4, :cond_7

    goto/16 :goto_1

    :cond_7
    iput v6, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_8
    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_9

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v1, v2, :cond_9

    goto/16 :goto_1

    :cond_9
    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_a
    if-ne v1, v3, :cond_14

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    if-eqz p0, :cond_e

    iget p1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_b
    :pswitch_2
    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_c
    if-ne v1, v3, :cond_14

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v2, 0x0

    if-ne v1, v6, :cond_f

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    iget-object p0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object p0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    :cond_e
    :goto_0
    return v3

    :cond_f
    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-eq v1, v3, :cond_12

    if-eq v1, v4, :cond_10

    goto :goto_1

    :cond_10
    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_11

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_11

    iput v6, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_11
    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_1

    :cond_12
    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_13

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_13

    iput v6, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_13
    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    :cond_14
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
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()I
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsBoldTextEnabled:Z

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bold_text"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsBoldTextEnabled:Z

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isCharacterNumberLanguage()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    :goto_1
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHapticPreDrawListener:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$HapticPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isEditTextModeNotAmPm()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

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

    iget v7, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    iget v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v10, :cond_4

    iget v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v2, v9, v8, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v2, v9, v8, v3, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v2, v9, v9, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_0
    move v2, v9

    :goto_1
    iget-object v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v10, v8

    if-ge v2, v10, :cond_9

    aget v8, v8, v2

    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v8}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_5
    iget v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAlpha:F

    iget v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIdleAlpha:F

    cmpg-float v12, v10, v11

    if-gez v12, :cond_6

    move v10, v11

    :cond_6
    iget-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v11

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->ascent()F

    move-result v12

    sub-float/2addr v11, v12

    div-float/2addr v11, v6

    add-float/2addr v11, v7

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->descent()F

    move-result v12

    sub-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v14, v12, v13

    int-to-float v14, v14

    cmpl-float v14, v7, v14

    iget v15, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialAlpha:F

    const/high16 v16, 0x437f0000    # 255.0f

    if-ltz v14, :cond_8

    iget v14, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    cmpg-float v13, v7, v13

    if-gtz v13, :cond_8

    add-int/2addr v12, v14

    int-to-float v12, v12

    div-float/2addr v12, v6

    cmpg-float v12, v7, v12

    if-gtz v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v1, v9, v12, v3, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v11, v11

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {v1, v9, v9, v3, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v10, v10, v16

    mul-float/2addr v10, v15

    float-to-int v10, v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v11, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v1, v9, v12, v3, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v11, v11

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {v1, v9, v12, v3, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v10, v10, v16

    mul-float/2addr v10, v15

    float-to-int v10, v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v11, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-float v10, v10, v16

    mul-float/2addr v10, v15

    float-to-int v10, v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v12, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v10, v11

    iget-object v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v4, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    iget v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p1, :cond_2

    iget-object v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-boolean v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v5, :cond_0

    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_0
    iget v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_1
    iput v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/high16 v1, -0x80000000

    iput v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    :cond_2
    iget-boolean v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_3

    iput v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v1, v4, :cond_4

    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_4
    :goto_0
    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-boolean v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_5

    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_5
    iget v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_6
    :goto_1
    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    cmpg-float p1, v1, v2

    const/4 v1, 0x1

    if-gez p1, :cond_2

    move p0, v1

    :cond_2
    invoke-virtual {v0, p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v1

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iput v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreUpEvent:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v5, 0x2

    if-gez v1, :cond_2

    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez p1, :cond_3

    invoke-virtual {v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iput v3, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v5, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object p1, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v4, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez p1, :cond_3

    invoke-virtual {v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iput v3, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v3, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object p1, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v4, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne p1, v5, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_4
    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v1, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v1, :cond_7

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne p1, v5, :cond_6

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_6
    invoke-virtual {p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_2

    :cond_8
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9

    goto :goto_2

    :cond_9
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a

    goto :goto_2

    :cond_a
    iput-boolean v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    if-nez p1, :cond_b

    new-instance p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    goto :goto_1

    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_1
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    move v2, v3

    :cond_c
    :goto_3
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p4

    iget-object p5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p5

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p4

    iget v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p5, p3

    add-int/2addr v0, p4

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, p3, p4, p5, v0}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    :goto_0
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    const/4 p3, 0x3

    mul-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p5

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr p5, v1

    sub-int/2addr p5, p1

    int-to-float p1, p5

    int-to-float p5, p3

    div-float/2addr p1, p5

    const/high16 p5, 0x3f000000    # 0.5f

    add-float/2addr p1, p5

    float-to-int p1, p1

    iget p5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    add-int/2addr p5, p1

    iput p5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    if-gt p1, p5, :cond_2

    iget-boolean p5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz p5, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    div-int/2addr p1, p3

    :cond_3
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTop()I

    move-result p1

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getBaseline()I

    move-result p2

    iget p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    sub-int/2addr p1, p2

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast p2, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;

    iput p1, p2, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;->mAdjustEditTextPosition:I

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Landroidx/picker/app/SeslTimePickerDialog$2;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V

    iput-boolean p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    :cond_4
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-le p1, p2, :cond_5

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValueChangeOffset:I

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    goto :goto_1

    :cond_5
    iput p4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iput v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    :cond_6
    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-static {p1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxHeight:I

    invoke-static {p2, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-super {v2, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

    iget v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    if-eq v4, v3, :cond_0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinHeight:I

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

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    move-result-object p0

    sget v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->$r8$clinit:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText(Z)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v2, :cond_17

    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v2, v6, :cond_7

    if-eq v2, v7, :cond_3

    const/4 v1, 0x3

    if-eq v2, v1, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_8

    :cond_3
    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v2, :cond_4

    goto/16 :goto_8

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-eq v4, v6, :cond_5

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    if-le v1, v5, :cond_6

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    :cond_5
    iget v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v3, v2, v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(I)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_6
    :goto_0
    iput v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto/16 :goto_8

    :cond_7
    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    if-eqz v2, :cond_8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_8
    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreUpEvent:Z

    if-eqz v2, :cond_9

    goto/16 :goto_8

    :cond_9
    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iget-object v8, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v9, v4

    iget v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v9, v9

    iget-boolean v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v10, :cond_a

    iget-boolean v10, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v10, :cond_a

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_7

    :cond_a
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mShortFlickThreshold:I

    if-le v10, v11, :cond_10

    if-gt v9, v5, :cond_c

    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v2, :cond_c

    iput-boolean v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_7

    :cond_c
    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v2, :cond_d

    if-lez v8, :cond_d

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v4, v5, :cond_d

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_4

    :cond_d
    if-nez v2, :cond_e

    if-gez v8, :cond_e

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v2, v4, :cond_e

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_4

    :cond_e
    iput v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    int-to-float v2, v2

    iput v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPreviousSpringY:F

    int-to-float v2, v8

    iget-object v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput v2, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    iget-object v9, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    iget v11, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/high16 v16, -0x80000000

    const v17, 0x7fffffff

    move v13, v8

    invoke-virtual/range {v9 .. v17}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v2

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v2, v4

    iget v5, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v2, v5

    if-lez v8, :cond_f

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_2
    int-to-float v2, v2

    goto :goto_3

    :cond_f
    neg-int v4, v4

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :goto_3
    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    int-to-float v4, v4

    iput v4, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    iput-boolean v6, v3, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    iput-boolean v6, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_4
    invoke-virtual {v0, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_7

    :cond_10
    if-gt v9, v5, :cond_15

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v1, :cond_12

    iput-boolean v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v1, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    goto :goto_6

    :cond_12
    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v4, v1, :cond_13

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-virtual {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iput v7, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v6, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v1, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_13
    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v4, v1, :cond_14

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-virtual {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iput v7, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    iput v7, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    iget-object v1, v2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_14
    invoke-virtual {v0, v9}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    :goto_5
    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    goto :goto_6

    :cond_15
    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    iput-boolean v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    :cond_16
    invoke-virtual {v0, v9}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    invoke-virtual {v0, v6}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    :goto_6
    iput-boolean v3, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsValueChanged:Z

    invoke-virtual {v0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :goto_7
    iget-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_8
    move v3, v6

    :cond_17
    :goto_9
    return v3
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$4;-><init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, p1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_3
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mGravityScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringFlingRunning:Z

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted(I)Z

    :cond_6
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/reflect/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsHcfEnabled:Z

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final performClick()Z
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final performLongClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    :cond_1
    :goto_0
    return v1
.end method

.method public final scrollBy(II)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(I)V

    return-void
.end method

.method public final setDateUnit(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f142b1d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f142b18

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f142b15

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mUnitValue:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    :goto_1
    return-void
.end method

.method public final setEditTextMode(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method public final setMaxInputLength(I)V
    .locals 3

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/text/InputFilter;

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final setMaxValue(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateWrapSelectorWheel()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMinValue(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-le p1, v0, :cond_1

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateWrapSelectorWheel()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setPickerContentDescription(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast p0, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$CustomEditText;->mPickerContentDescription:Ljava/lang/String;

    return-void
.end method

.method public final setTextSize(F)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public final setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerSubTypeface:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mHcfFocusedTypefaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setInputTextTypeface()V

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public final setValue(I)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-boolean v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    return-void
.end method

.method public final setYearDateTimeInputMode()V
    .locals 2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0, p1, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startAnimation(ILandroidx/picker/app/SeslTimePickerDialog$2;)V

    return-void
.end method
