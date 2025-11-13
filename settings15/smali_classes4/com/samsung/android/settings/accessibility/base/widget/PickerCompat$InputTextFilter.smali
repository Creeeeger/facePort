.class public final Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public isAutoDecimalPoint:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->isAutoDecimalPoint:Z

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p4, v0, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p5

    invoke-interface {p4, p6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p4, p4, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    const/4 p5, 0x3

    invoke-virtual {p4, p5}, Landroid/widget/EditText;->setTextDirection(I)V

    iget-object p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p4, p4, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    const-string p6, "decimal"

    invoke-virtual {p4, p6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    const-string p6, ""

    if-eqz p4, :cond_8

    iget-boolean p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->isAutoDecimalPoint:Z

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    const-string p4, ".."

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->isAutoDecimalPoint:Z

    return-object p6

    :cond_0
    if-lez p3, :cond_1

    sub-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x2e

    if-eq p3, p4, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->isAutoDecimalPoint:Z

    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertStringToFloat(Ljava/lang/String;)F

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget p4, p4, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxFloat:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p4, p4, v0

    if-ltz p4, :cond_2

    cmpl-float p4, p3, v0

    if-ltz p4, :cond_2

    const/4 p4, 0x4

    goto :goto_0

    :cond_2
    move p4, p5

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p4, :cond_7

    const/4 p4, 0x0

    cmpl-float p4, p3, p4

    if-lez p4, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget p2, p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxFloat:F

    invoke-static {p3, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gtz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget p2, p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minFloat:F

    invoke-static {p3, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gez p2, :cond_a

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    return-object p6

    :cond_4
    const-string p4, "0"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-ne p4, v1, :cond_5

    const-string p2, "0."

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->isAutoDecimalPoint:Z

    iget-object p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p4, p4, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p4, p4, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, p5, :cond_a

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget p2, p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxFloat:F

    invoke-static {p3, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gtz p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget p2, p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minFloat:F

    invoke-static {p3, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    if-gez p2, :cond_a

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    return-object p6

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p6

    :catch_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    return-object p6

    :cond_8
    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p3, p3, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    const-string p4, "integer"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;->this$0:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget p3, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxInt:I

    if-gt p2, p3, :cond_9

    iget p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minInt:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-ge p2, p0, :cond_a

    :catch_1
    :cond_9
    return-object p6

    :cond_a
    return-object p1
.end method

.method public final getAcceptedChars()[C
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [C

    return-object p0
.end method

.method public final getInputType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
