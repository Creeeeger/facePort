.class public Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public defFloat:F

.field public defInt:I

.field public final mButtonClickListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;

.field public final mButtonMinus:Landroid/widget/ImageButton;

.field public final mButtonPlus:Landroid/widget/ImageButton;

.field public final mContext:Landroid/content/Context;

.field public mCurrentValue:Ljava/lang/String;

.field public mDataType:Ljava/lang/String;

.field public final mEditActionListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$1;

.field public mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field public final mPickerContainer:Landroid/widget/LinearLayout;

.field public final mPickerDialogLayout:Landroid/widget/LinearLayout;

.field public final mPickerValue:Landroid/widget/EditText;

.field public final mPickerValueRangeText:Landroid/widget/TextView;

.field public final mSecText:Landroid/widget/TextView;

.field public mValueChangeListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$setOnValueChangeListener;

.field public maxFloat:F

.field public maxInt:I

.field public minFloat:F

.field public minInt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$1;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;)V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mEditActionListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$1;

    new-instance p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;I)V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonClickListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0446

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0b57

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonMinus:Landroid/widget/ImageButton;

    const p1, 0x7f0a0b58

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonPlus:Landroid/widget/ImageButton;

    const p1, 0x7f0a0b56

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerContainer:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0b5b

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerDialogLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0b5a

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    const p1, 0x7f0a0b5c

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValueRangeText:Landroid/widget/TextView;

    const p1, 0x7f0a0d39

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$3;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    new-instance p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$4;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerDialogLayout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$5;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public final setDefaultValue(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mCurrentValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertStringToFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    const-string v1, "decimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxFloat:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minFloat:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->defFloat:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->defFloat:F

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->defFloat:F

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    const-string v1, "integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxInt:I

    if-le p1, v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minInt:I

    if-lt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    iput p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->defInt:I

    goto :goto_2

    :cond_3
    :goto_1
    iput p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->defInt:I

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->defInt:I

    int-to-float p0, p0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method
