.class public final Landroidx/picker3/widget/SeslColorPicker$17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/picker3/widget/SeslColorPicker;->mFromRecentLayoutTouch:Z

    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v2, v2, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->mContext:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    sget v4, Landroidx/picker3/widget/SeslColorPicker;->RECENT_COLOR_SLOT_COUNT:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v4, v4, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-boolean v1, v4, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    iget-object v4, v4, Landroidx/picker3/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v6, v6, Landroidx/picker3/widget/SeslColorPicker;->mPickedColor:Landroidx/picker3/widget/SeslColorPicker$PickedColor;

    iput-object v4, v6, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    iput v4, v6, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mAlpha:I

    iget-object v4, v6, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, v6, Landroidx/picker3/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {v4, v5}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-virtual {v4, v5}, Landroidx/picker3/widget/SeslColorPicker;->updateHexAndRGBValues(I)V

    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v4, v4, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v6, v6, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%d"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v6, v6, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v4, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v4, v4, Landroidx/picker3/widget/SeslColorPicker;->mOnColorChangedListener:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->onColorChanged(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$17;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-boolean v2, p0, Landroidx/picker3/widget/SeslColorPicker;->mFromRecentLayoutTouch:Z

    return-void
.end method
