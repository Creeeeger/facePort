.class public Landroidx/picker/widget/SeslNumberPicker;
.super Landroid/widget/LinearLayout;
.source "SeslNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;,
        Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;,
        Landroidx/picker/widget/SeslNumberPicker$CustomEditText;,
        Landroidx/picker/widget/SeslNumberPicker$Formatter;,
        Landroidx/picker/widget/SeslNumberPicker$OnScrollListener;,
        Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;,
        Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;,
        Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;


# instance fields
.field private mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslNumberPicker;->sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 212
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 252
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 254
    new-instance v6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;-><init>(Landroidx/picker/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    return-void
.end method

.method static getTwoDigitFormatter()Landroidx/picker/widget/SeslNumberPicker$Formatter;
    .locals 1

    .line 128
    sget-object v0, Landroidx/picker/widget/SeslNumberPicker;->sTwoDigitFormatter:Landroidx/picker/widget/SeslNumberPicker$TwoDigitFormatter;

    return-object v0
.end method


# virtual methods
.method public applyWheelCustomInterval(Z)V
    .locals 0

    .line 330
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->applyWheelCustomInterval(Z)V

    return-void
.end method

.method public computeScroll()V
    .locals 0

    .line 447
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->computeScroll()V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 473
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 463
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 0

    .line 468
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 430
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 433
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 416
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 419
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 366
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 369
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 390
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 391
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 424
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->dispatchTrackballEvent(Landroid/view/MotionEvent;)V

    .line 425
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 810
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    .line 813
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 681
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->getDisplayedValues()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 0

    .line 830
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method getEnableStateSet()[I
    .locals 0

    .line 850
    sget-object p0, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 657
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->getMaxValue()I

    move-result p0

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 634
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->getMinValue()I

    move-result p0

    return p0
.end method

.method public getPaintFlags()I
    .locals 0

    .line 751
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->getPaintFlags()I

    move-result p0

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 625
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->getValue()I

    move-result p0

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 586
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->getWrapSelectorWheel()Z

    move-result p0

    return p0
.end method

.method public isChangedDefaultInterval()Z
    .locals 0

    .line 335
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->isChangedDefaultInterval()Z

    move-result p0

    return p0
.end method

.method public isEditTextMode()Z
    .locals 0

    .line 306
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->isEditTextMode()Z

    move-result p0

    return p0
.end method

.method isVisibleToUserWrapper()Z
    .locals 0

    .line 854
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method isVisibleToUserWrapper(Landroid/graphics/Rect;)Z
    .locals 0

    .line 858
    invoke-static {p0, p1}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 782
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 783
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 404
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 405
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 776
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 777
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 788
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 793
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 411
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 396
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 399
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 798
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 799
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 380
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 346
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 361
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1, p2}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 804
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 805
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 385
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 374
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 375
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 340
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->onWindowVisibilityChanged(I)V

    .line 341
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method performClick(Z)V
    .locals 0

    .line 565
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->performClick(Z)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 554
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {v0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->isEditTextModeNotAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

    return p0

    .line 557
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->performClick()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public performLongClick()Z
    .locals 1

    .line 570
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->performLongClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public scrollBy(II)V
    .locals 0

    .line 458
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1, p2}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->scrollBy(II)V

    return-void
.end method

.method setAmPm()V
    .locals 0

    .line 268
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setAmPm()V

    return-void
.end method

.method public setCustomIntervalValue(I)V
    .locals 0

    .line 311
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setCustomIntervalValue(I)V

    return-void
.end method

.method public setDateUnit(I)V
    .locals 0

    .line 939
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setDateUnit(I)V

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 0

    .line 694
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 0

    .line 297
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setEditTextMode(Z)V

    return-void
.end method

.method public setEditTextModeEnabled(Z)V
    .locals 0

    .line 278
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setEditTextModeEnabled(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 452
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 453
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setErrorToastMessage(Ljava/lang/String;)V
    .locals 0

    .line 703
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setErrorToastMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setFormatter(Landroidx/picker/widget/SeslNumberPicker$Formatter;)V
    .locals 0

    .line 517
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setFormatter(Landroidx/picker/widget/SeslNumberPicker$Formatter;)V

    return-void
.end method

.method setMaxInputLength(I)V
    .locals 0

    .line 822
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setMaxInputLength(I)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    .line 671
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setMaxValue(I)V

    return-void
.end method

.method setMeasuredDimensionWrapper(II)V
    .locals 0

    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    .line 648
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setMinValue(I)V

    return-void
.end method

.method public setMonthInputMode()V
    .locals 0

    .line 838
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setMonthInputMode()V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V
    .locals 0

    .line 502
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    return-void
.end method

.method public setOnScrollListener(Landroidx/picker/widget/SeslNumberPicker$OnScrollListener;)V
    .locals 0

    .line 492
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setOnScrollListener(Landroidx/picker/widget/SeslNumberPicker$OnScrollListener;)V

    return-void
.end method

.method public setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 482
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setOnValueChangedListener(Landroidx/picker/widget/SeslNumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method public setPaintFlags(I)V
    .locals 0

    .line 761
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setPaintFlags(I)V

    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 263
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setPickerContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setSubTextSize(F)V
    .locals 0

    .line 723
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setSubTextSize(F)V

    return-void
.end method

.method public setSubTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 741
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setSubTextTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 713
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setTextSize(F)V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 732
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setTextTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 549
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setValue(I)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 0

    .line 607
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method public setYearDateTimeInputMode()V
    .locals 0

    .line 846
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->setYearDateTimeInputMode()V

    return-void
.end method

.method public startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V
    .locals 0

    .line 771
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;

    invoke-interface {p0, p1, p2}, Landroidx/picker/widget/SeslNumberPicker$NumberPickerDelegate;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    return-void
.end method

.method superOnMeasure(II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 351
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
