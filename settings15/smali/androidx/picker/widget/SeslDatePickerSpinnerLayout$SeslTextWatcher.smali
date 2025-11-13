.class public final Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public mChangedLen:I

.field public final mCheck:I

.field public final mId:I

.field public final mIsMonth:Z

.field public final mMaxLen:I

.field public final mNext:I

.field public mPrevText:Ljava/lang/String;

.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    iput p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    iput p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    iput-boolean p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mIsMonth:Z

    add-int/lit8 p1, p3, -0x1

    iput p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    const/4 p2, 0x2

    if-gez p1, :cond_0

    iput p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    :cond_0
    add-int/lit8 p3, p3, 0x1

    if-le p3, p2, :cond_1

    const/4 p3, -0x1

    :cond_1
    iput p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    sget p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->$r8$clinit:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    iput p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    return-void
.end method

.method public final changeFocus()V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mCheck:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    :cond_2
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    const/4 p2, 0x1

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->$r8$clinit:I

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object p4, p4, v0

    invoke-virtual {p4}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p4, :cond_1

    const-string v0, "onClick"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onLongClick"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object p4, p4, v0

    invoke-virtual {p4}, Landroid/widget/EditText;->isFocused()Z

    move-result p4

    if-nez p4, :cond_2

    return-void

    :cond_2
    iget-boolean p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mIsMonth:Z

    const/4 v0, 0x0

    const/16 v1, 0xa

    const/4 v2, 0x2

    const-string v3, ""

    if-eqz p4, :cond_11

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p4}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p4

    if-eqz p4, :cond_8

    iget p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    if-ne p4, p2, :cond_8

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p4, p4, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p4, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v5, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne p3, v5, :cond_5

    if-ge v4, p4, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p3

    if-ge p3, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_9

    :cond_5
    if-lez p3, :cond_26

    const-string p2, "0"

    if-lt p4, v1, :cond_6

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0, v0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    return-void

    :cond_6
    const-string p3, "1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_26

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    if-ge v4, p4, :cond_7

    invoke-virtual {p0, v0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_9

    :cond_8
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->isDigit(C)Z

    move-result p4

    if-eqz p4, :cond_9

    goto/16 :goto_9

    :cond_9
    iget p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    const-string v1, "fa"

    if-lt p3, p4, :cond_d

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p3, p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ar"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    const-string/jumbo p4, "ur"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_9

    :cond_b
    :goto_1
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_26

    :goto_2
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget p4, p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge v0, p4, :cond_26

    iget-object p3, p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_9

    :cond_c
    add-int/2addr v0, p2

    goto :goto_2

    :cond_d
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "hi"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string/jumbo p4, "ta"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "ml"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string/jumbo p4, "te"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "or"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "ne"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "as"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "bn"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "gu"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string/jumbo p4, "si"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "pa"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "kn"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    const-string p4, "mr"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_3

    :cond_e
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    :cond_f
    :goto_3
    if-lez p3, :cond_26

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    if-eqz p1, :cond_10

    goto/16 :goto_9

    :cond_10
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_9

    :cond_11
    iget p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mChangedLen:I

    if-ne p4, p2, :cond_26

    iget p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    const/4 v4, 0x3

    if-ge p4, v4, :cond_1d

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p4, p4, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p4, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, p3, :cond_14

    iget v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne p3, v6, :cond_14

    if-ge v5, p4, :cond_13

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p3

    const/4 p4, 0x4

    if-ge p3, p4, :cond_12

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    goto :goto_4

    :cond_12
    invoke-virtual {p0, v0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    :goto_4
    return-void

    :cond_13
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_9

    :cond_14
    if-lt p4, v1, :cond_15

    if-eqz v5, :cond_17

    :cond_15
    const/16 p1, 0x14

    if-lt p4, p1, :cond_16

    if-eqz v5, :cond_17

    if-eq v5, p2, :cond_17

    :cond_16
    const/16 p1, 0x1e

    if-lt p4, p1, :cond_18

    if-eqz v5, :cond_17

    if-eq v5, p2, :cond_17

    if-ne v5, v2, :cond_18

    :cond_17
    invoke-virtual {p0, v0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    return-void

    :cond_18
    if-le v5, v4, :cond_1a

    if-ge v5, p4, :cond_19

    invoke-virtual {p0, v0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    :cond_1a
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p1, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    sub-int/2addr p1, p2

    goto :goto_5

    :cond_1b
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p1, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    :goto_5
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, p2, :cond_26

    if-ne v5, v4, :cond_26

    if-ge v5, p4, :cond_1c

    invoke-virtual {p0, v0, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    return-void

    :cond_1c
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto/16 :goto_9

    :cond_1d
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p4, p4, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v1, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iget p4, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mPrevText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, p3, :cond_23

    iget v6, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mMaxLen:I

    if-ne p3, v6, :cond_23

    if-lt v5, v1, :cond_22

    if-le v5, p4, :cond_1e

    goto/16 :goto_8

    :cond_1e
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result p3

    if-eqz p3, :cond_1f

    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p3, p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p3, p3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    sub-int/2addr p3, p2

    goto :goto_6

    :cond_1f
    iget-object p3, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p3, p3, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p3, p3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    :goto_6
    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p4}, Ljava/util/Calendar;->clear()V

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Landroidx/picker/widget/SeslNumberPicker;

    iget-object p4, p4, Landroidx/picker/widget/SeslNumberPicker;->mDelegate:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget p4, p4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-virtual {v1, v5, p3, p4}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p4, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p4, p4, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    iget-object v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, v1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Ljava/util/Calendar;->set(III)V

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p2, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p3, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    iget-object p2, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p3, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_7

    :cond_20
    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->changeFocus()V

    goto :goto_9

    :cond_21
    :goto_7
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    return-void

    :cond_22
    :goto_8
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    return-void

    :cond_23
    add-int/lit8 v2, p3, -0x1

    int-to-double v6, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v6

    double-to-int v4, v8

    if-eq p3, p2, :cond_24

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_24
    div-int/2addr v1, v4

    if-lt v5, v1, :cond_25

    div-int/2addr p4, v4

    if-le v5, p4, :cond_26

    :cond_25
    invoke-virtual {p0, v2, v3}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->showInvalidValueEnteredToast(ILjava/lang/String;)V

    :cond_26
    :goto_9
    return-void
.end method

.method public final showInvalidValueEnteredToast(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget v1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->mId:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    if-nez p2, :cond_1

    iget-object p2, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    iget-object v0, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    iput-object p2, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p1, p1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0ad1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a095e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p2, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    invoke-virtual {p2, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
