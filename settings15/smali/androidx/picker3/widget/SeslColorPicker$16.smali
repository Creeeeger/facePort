.class public final Landroidx/picker3/widget/SeslColorPicker$16;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;

.field public final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0xff

    if-le p1, v3, :cond_4

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "255"

    if-ne p1, v3, :cond_0

    :try_start_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v3, v3, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "0"

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object v1, v1, Landroidx/picker3/widget/SeslColorPicker;->editTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iput-boolean v2, p1, Landroidx/picker3/widget/SeslColorPicker;->mfromRGB:Z

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p1, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-static {p1}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-static {p0}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p2, p2, Landroidx/picker3/widget/SeslColorPicker;->beforeValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$16;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "0"

    if-lez p1, :cond_1

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerRedEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerGreenEditText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, p2

    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    iget-object p4, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_3

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerBlueEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    iget-object p4, p0, Landroidx/picker3/widget/SeslColorPicker;->mOpacitySeekBar:Landroidx/picker3/widget/SeslOpacitySeekBar;

    invoke-virtual {p4}, Landroid/widget/SeekBar;->getProgress()I

    move-result p4

    and-int/lit16 p4, p4, 0xff

    shl-int/lit8 p4, p4, 0x18

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p4

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p1, p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%08x"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mColorPickerHexEditText:Landroid/widget/EditText;

    invoke-static {p2}, Landroidx/picker3/widget/SeslColorPicker$16$$ExternalSyntheticOutline0;->m(Landroid/widget/EditText;)V

    iget-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSaturationSeekbar:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Landroidx/picker3/widget/SeslColorPicker;->mfromSpectrumTouch:Z

    if-nez p2, :cond_4

    invoke-virtual {p0, p1}, Landroidx/picker3/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    :cond_4
    :goto_2
    return-void
.end method
