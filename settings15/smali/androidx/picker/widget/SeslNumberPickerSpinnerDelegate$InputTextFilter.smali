.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result p2

    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p3, p3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt p2, p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p3, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-virtual {p2, p3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p2, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p2, :cond_5

    iget-object p2, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    if-nez p2, :cond_4

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    :cond_4
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_5
    return-object v1

    :cond_6
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p3

    invoke-interface {p4, p6, p3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo p5, "vi"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object p3

    const-string p4, "inputType=month_edittext"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_1

    :cond_7
    move p3, v2

    :goto_1
    iget-object p4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p4, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length p5, p4

    :goto_2
    if-ge v2, p5, :cond_b

    aget-object p6, p4, v2

    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p6

    if-eqz p3, :cond_8

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    invoke-virtual {p6, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_a

    :cond_9
    return-object p1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    if-nez p2, :cond_c

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V

    :cond_c
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_d
    return-object v1
.end method

.method public final getAcceptedChars()[C
    .locals 0

    sget-object p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object p0
.end method

.method public final getInputType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
