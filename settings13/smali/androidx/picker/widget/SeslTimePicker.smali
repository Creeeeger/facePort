.class public Landroidx/picker/widget/SeslTimePicker;
.super Landroid/widget/FrameLayout;
.source "SeslTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;,
        Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;,
        Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;,
        Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Landroidx/picker/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101049d

    .line 105
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/picker/widget/SeslTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    new-instance v6, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;-><init>(Landroidx/picker/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v6, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 350
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getBaseline()I
    .locals 0

    .line 312
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->getBaseline()I

    move-result p0

    return p0
.end method

.method public getHour()I
    .locals 0

    .line 200
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->getHour()I

    move-result p0

    return p0
.end method

.method public getMinute()I
    .locals 0

    .line 220
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->getMinute()I

    move-result p0

    return p0
.end method

.method public is24HourView()Z
    .locals 0

    .line 256
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->is24Hour()Z

    move-result p0

    return p0
.end method

.method public isEditTextMode()Z
    .locals 0

    .line 180
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->isEditTextMode()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 302
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->isEnabled()Z

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 320
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 363
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 364
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 370
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 371
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 153
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 155
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->getDefaultWidth()I

    move-result p1

    .line 156
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-ne v1, v3, :cond_1

    .line 159
    iget-object p2, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p2}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->getDefaultHeight()I

    move-result p2

    .line 160
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 162
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 356
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 357
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 342
    check-cast p1, Landroid/view/View$BaseSavedState;

    .line 343
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 344
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 335
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 336
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, v0}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public requestLayout()V
    .locals 0

    .line 452
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 453
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    if-eqz p0, :cond_0

    .line 454
    invoke-interface {p0}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->requestLayout()V

    :cond_0
    return-void
.end method

.method public set5MinuteInterval(Z)V
    .locals 0

    .line 272
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->set5MinuteInterval(Z)V

    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 0

    .line 171
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 292
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->setEnabled(Z)V

    return-void
.end method

.method public setHour(I)V
    .locals 2

    .line 190
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->setHour(I)V

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->setIs24Hour(Z)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 381
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setMinute(I)V
    .locals 2

    .line 210
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->setMinute(I)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;)V
    .locals 0

    .line 146
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->setOnEditTextModeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setOnTimeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;)V
    .locals 0

    .line 281
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->setOnTimeChangedListener(Landroidx/picker/widget/SeslTimePicker$OnTimeChangedListener;)V

    return-void
.end method

.method public startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V
    .locals 0

    .line 391
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;

    invoke-interface {p0, p1, p2}, Landroidx/picker/widget/SeslTimePicker$TimePickerDelegate;->startAnimation(ILandroidx/picker/util/SeslAnimationListener;)V

    return-void
.end method
