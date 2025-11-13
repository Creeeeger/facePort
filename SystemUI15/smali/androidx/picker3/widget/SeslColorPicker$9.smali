.class public final Landroidx/picker3/widget/SeslColorPicker$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-boolean v0, p3, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    iput-boolean v0, p3, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorSpectrumView:Landroidx/picker3/widget/SeslColorSpectrumView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, v1, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationProgress:I

    const-string p1, "%d"

    if-ltz p2, :cond_1

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-boolean v2, v1, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    if-ne v2, v0, :cond_1

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-boolean v2, v1, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iput-boolean v0, v1, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    iget-object v0, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-boolean v3, p1, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    :cond_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-boolean p2, p1, Landroidx/picker3/widget/SeslColorPicker;->mFromRecentLayoutTouch:Z

    if-nez p2, :cond_3

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object p2, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    const/4 v0, 0x2

    aput p3, p2, v0

    iget p3, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-static {p3, p2}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    :cond_3
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-boolean p3, p2, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    if-eqz p3, :cond_4

    invoke-virtual {p2, p1}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-boolean v3, p2, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    :cond_4
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mSelectedColorBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_5
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p3, p2, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    if-eqz p3, :cond_6

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iget p2, p2, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    invoke-virtual {p3, p1, p2}, Landroidx/picker3/widget/SeslOpacitySeekBar;->changeColorBase(II)V

    :cond_6
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->onColorChanged(I)V

    :cond_7
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    :try_start_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$9;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    return-void
.end method
