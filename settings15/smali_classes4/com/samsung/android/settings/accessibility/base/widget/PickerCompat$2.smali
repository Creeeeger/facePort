.class public final Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    const-string v1, "decimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertStringToFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    iget v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->defFloat:F

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    iget v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxFloat:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-ltz v3, :cond_3

    iget v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minFloat:F

    invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gtz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonPlus:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    if-ne v1, v3, :cond_2

    iget v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxFloat:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_3

    add-float/2addr v2, v4

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonMinus:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minFloat:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_3

    sub-float/2addr v2, v4

    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mValueChangeListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;

    if-eqz v1, :cond_4

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;->onValueChange(Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mCurrentValue:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    const-string v1, "integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxInt:I

    if-lt v3, v2, :cond_7

    iget v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minInt:I

    if-gt v3, v2, :cond_7

    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonPlus:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxInt:I

    if-le v1, v2, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v3, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonMinus:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getId()I

    move-result v3

    if-ne v1, v3, :cond_7

    iget v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minInt:I

    if-ge v1, v2, :cond_7

    add-int/lit8 v2, v2, -0x1

    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    int-to-float v3, v2

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mValueChangeListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;

    if-eqz v1, :cond_8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;->onValueChange(Ljava/lang/String;)V

    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mCurrentValue:Ljava/lang/String;

    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v1, v1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f141c2c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
