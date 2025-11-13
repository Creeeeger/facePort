.class public final Landroidx/picker3/widget/SeslColorPicker$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker3/widget/SeslColorPicker;I)V
    .locals 0

    iput p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final afterTextChanged$androidx$picker3$widget$SeslColorPicker$15(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method private final beforeTextChanged$androidx$picker3$widget$SeslColorPicker$1(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final beforeTextChanged$androidx$picker3$widget$SeslColorPicker$15(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method private final beforeTextChanged$androidx$picker3$widget$SeslColorPicker$7(IIILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget v0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string v0, ""

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-boolean v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    :cond_2
    return-void

    :pswitch_1
    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v0, v0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_3
    const/16 v0, 0x64

    if-le p1, v0, :cond_4

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_4
    :goto_3
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget p0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->$r8$classId:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "#"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-boolean p3, p2, Landroidx/picker3/widget/SeslColorPicker;->mTextFromRGB:Z

    if-nez p3, :cond_4

    :try_start_0
    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroidx/picker3/widget/SeslColorPicker;->mfromEditText:Z

    const/4 p3, 0x0

    iput-boolean p3, p2, Landroidx/picker3/widget/SeslColorPicker;->mFlagVar:Z

    const/16 p4, 0x64

    if-gt p1, p4, :cond_4

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerSaturationEditText:Landroid/widget/EditText;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mGradientColorSeekBar:Landroidx/picker3/widget/SeslGradientColorSeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void

    :pswitch_1
    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x64

    if-gt p1, p2, :cond_5

    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-boolean p4, p3, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    if-eqz p4, :cond_5

    mul-int/lit16 p1, p1, 0xff

    div-int/2addr p1, p2

    iget-object p2, p3, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerOpacityEditText:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$1;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
