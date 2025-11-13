.class public final Landroidx/picker3/widget/SeslColorPicker$5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$5;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSwatchChanged(I)V
    .locals 4

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$5;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    iput-boolean v0, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mFromSwatchTouch:Z

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    mul-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    iget-object v2, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {v2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-virtual {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateCurrentColor()V

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mFromSwatchTouch:Z

    return-void
.end method

.method public onSpectrumColorChanged(FF)V
    .locals 5

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$5;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v4, v2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    aput p1, v4, v1

    aput p2, v4, v0

    const/4 p1, 0x2

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v4, p1

    iget p1, v2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-static {p1, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    mul-int/lit8 v3, v3, 0x64

    int-to-float p1, v3

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-virtual {p0}, Landroidx/picker3/widget/SeslColorPicker;->updateCurrentColor()V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    return-void
.end method
