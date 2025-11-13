.class public final Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public changedLen:I

.field public final mId:I

.field public final mNext:I

.field public prevText:Ljava/lang/String;

.field public final synthetic this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    iput p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    add-int/lit8 p2, p2, 0x1

    const/4 p1, 0x2

    if-lt p2, p1, :cond_0

    const/4 p2, -0x1

    :cond_0
    iput p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    return-void
.end method

.method public static convertDigitCharacterToNumber(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x46

    if-ge v1, v3, :cond_1

    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    rem-int/lit8 v2, v2, 0xa

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    iput p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    return-void
.end method

.method public final changeFocus()V
    .locals 4

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    if-nez v0, :cond_0

    iget-object v2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v3, v2, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v2, v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mNext:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_1

    :cond_3
    iget v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v2, v1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string p3, "onClick"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "onLongClick"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p0, p1, p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    const/4 p3, 0x2

    const/4 p4, 0x1

    if-eqz p2, :cond_7

    if-eq p2, p4, :cond_2

    iget-object p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ge p2, p4, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p1, p3, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :cond_2
    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne p2, p4, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ne p2, p3, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_4

    const/16 p2, 0x9

    if-gt p1, p2, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iput-boolean p4, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsInvalidMinute:Z

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-boolean p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsInvalidMinute:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    const/4 p2, 0x5

    if-eq p1, p2, :cond_5

    if-nez p1, :cond_6

    :cond_5
    iput-boolean p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsInvalidMinute:Z

    iput-boolean p4, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mSkipToChangeInterval:Z

    goto :goto_0

    :cond_6
    iput-boolean p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsInvalidMinute:Z

    iput-boolean p3, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mSkipToChangeInterval:Z

    goto :goto_0

    :cond_7
    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changedLen:I

    if-ne p2, p4, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ne p2, p3, :cond_8

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    goto :goto_0

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->convertDigitCharacterToNumber(Ljava/lang/String;)I

    move-result p1

    if-gt p1, p3, :cond_9

    if-le p1, p4, :cond_a

    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-boolean p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-nez p1, :cond_a

    :cond_9
    iget-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget p2, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->mId:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;->changeFocus()V

    :cond_a
    :goto_0
    return-void
.end method
