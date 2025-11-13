.class Landroidx/picker/widget/SeslSpinningDatePickerSpinner;
.super Landroid/widget/LinearLayout;
.source "SeslSpinningDatePickerSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$AbsDatePickerDelegate;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$CustomEditText;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;,
        Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;
    }
.end annotation


# static fields
.field private static final mDateFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;


# instance fields
.field private mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

.field private mIsLeapMonth:Z

.field private mIsLunar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    invoke-direct {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;-><init>()V

    sput-object v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDateFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 276
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 278
    new-instance v6, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinnerDelegate;-><init>(Landroidx/picker/widget/SeslSpinningDatePickerSpinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    return-void
.end method

.method static getDateFormatter()Landroidx/picker/widget/SeslSpinningDatePickerSpinner$Formatter;
    .locals 1

    .line 153
    sget-object v0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDateFormatter:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DateFormatter;

    return-object v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 0

    .line 396
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->computeScroll()V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 0

    .line 422
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 0

    .line 412
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method protected computeVerticalScrollRange()I
    .locals 0

    .line 417
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->computeVerticalScrollRange()I

    move-result p0

    return p0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 381
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 367
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 370
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 317
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 320
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 341
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 342
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 375
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->dispatchTrackballEvent(Landroid/view/MotionEvent;)V

    .line 376
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    .line 733
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0
.end method

.method getEnableStateSet()[I
    .locals 0

    .line 737
    sget-object p0, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    return-object p0
.end method

.method public getOnSpinnerDateClickListener()Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;
    .locals 0

    .line 460
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->getOnSpinnerDateClickListener()Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;

    move-result-object p0

    return-object p0
.end method

.method getValue()Ljava/util/Calendar;
    .locals 2

    .line 591
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->getValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 592
    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mIsLunar:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->convertSolarToLunar(Ljava/util/Calendar;Landroidx/picker/widget/SeslSpinningDatePicker$LunarDate;)Ljava/util/Calendar;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getWrapSelectorWheel()Z
    .locals 0

    .line 547
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->getWrapSelectorWheel()Z

    move-result p0

    return p0
.end method

.method isVisibleToUserWrapper()Z
    .locals 0

    .line 741
    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method isVisibleToUserWrapper(Landroid/graphics/Rect;)Z
    .locals 0

    .line 745
    invoke-static {p0, p1}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 710
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 711
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 356
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 704
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 705
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 716
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    .line 361
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 362
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 347
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 350
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 721
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 722
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 331
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 298
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 312
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 727
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 728
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 336
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 325
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 326
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 292
    iget-object v0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->onWindowVisibilityChanged(I)V

    .line 293
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 520
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->performClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public performLongClick()Z
    .locals 1

    .line 532
    invoke-super {p0}, Landroid/widget/LinearLayout;->performLongClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->performLongClick()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public scrollBy(II)V
    .locals 0

    .line 407
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->scrollBy(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 401
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 402
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method setLunar(ZZ)V
    .locals 0

    .line 620
    iput-boolean p1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mIsLunar:Z

    .line 621
    iput-boolean p2, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mIsLeapMonth:Z

    .line 622
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1, p2}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->setLunar(ZZ)V

    return-void
.end method

.method setMaxValue(Ljava/util/Calendar;)V
    .locals 0

    .line 640
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->setMaxValue(Ljava/util/Calendar;)V

    return-void
.end method

.method setMeasuredDimensionWrapper(II)V
    .locals 0

    .line 307
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method setMinValue(Ljava/util/Calendar;)V
    .locals 0

    .line 610
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->setMinValue(Ljava/util/Calendar;)V

    return-void
.end method

.method public setOnSpinnerDateClickListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;)V
    .locals 0

    .line 451
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->setOnSpinnerDateClickListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnSpinnerDateClickListener;)V

    return-void
.end method

.method public setOnValueChangedListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;)V
    .locals 0

    .line 431
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->setOnValueChangedListener(Landroidx/picker/widget/SeslSpinningDatePickerSpinner$OnValueChangeListener;)V

    return-void
.end method

.method setValue(Ljava/util/Calendar;)V
    .locals 0

    .line 515
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->setValue(Ljava/util/Calendar;)V

    return-void
.end method

.method setWrapSelectorWheel(Z)V
    .locals 0

    .line 568
    iget-object p0, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method superOnMeasure(II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 303
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method updateDate(III)V
    .locals 2

    .line 464
    invoke-virtual {p0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->getValue()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 465
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 466
    iget-boolean v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mIsLunar:Z

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->mDelegate:Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;

    invoke-interface {v1, v0, p1, p2, p3}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner$DatePickerDelegate;->convertLunarToSolar(Ljava/util/Calendar;III)Ljava/util/Calendar;

    move-result-object v0

    .line 469
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslSpinningDatePickerSpinner;->setValue(Ljava/util/Calendar;)V

    return-void
.end method
