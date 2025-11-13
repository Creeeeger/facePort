.class public abstract Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCurrentVal:Ljava/lang/String;

.field public mHorizontalPadding:I

.field public mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

.field public mPickerDescription:Landroid/widget/TextView;

.field public mRootView:Landroid/view/View;

.field public mTestBtn:Landroid/widget/Button;

.field public mTestEdit:Lcom/google/android/material/textfield/TextInputEditText;

.field public mTestEditLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0d0208

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mCurrentVal:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07137c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mHorizontalPadding:I

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a0b59

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPickerDescription:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a0b55

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a0fdc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mRootView:Landroid/view/View;

    const p2, 0x7f0a0fdd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestEditLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestEdit:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/text/InputFilter;

    new-instance p3, Landroid/text/InputFilter$LengthFilter;

    const/16 v1, 0x3e8

    invoke-direct {p3, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestEdit:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p2, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    const v1, 0x7f0604f4

    invoke-virtual {p3, v1}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mRootView:Landroid/view/View;

    iget p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mHorizontalPadding:I

    invoke-virtual {p1, p2, v0, p2, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mRootView:Landroid/view/View;

    const/high16 p2, 0x2000000

    invoke-virtual {p1, p2}, Landroid/view/View;->setScrollBarStyle(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mTestBtn:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final setSwitchBarPadding(Lcom/android/settings/widget/SettingsMainSwitchBar;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mHorizontalPadding:I

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, p0, v1, p0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setupPicker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    const-string v1, "Decimal"

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    const-string v3, "inputType=ipAddress;"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Integer"

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxFloat:F

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->maxInt:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "0.1"

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->parseFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minFloat:F

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->minInt:I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValueRangeText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertDefaultLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/base/StringBuilderUtils;->convertNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    const v2, 0x7f141c2b    # 1.96872E38f

    invoke-virtual {v0, v2, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mCurrentVal:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->setDefaultValue(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mCurrentVal:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    iget-object v0, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mEditActionListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$1;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;I)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerValue:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;

    invoke-direct {v2, p1}, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$InputTextFilter;-><init>(Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonMinus:Landroid/widget/ImageButton;

    iget-object v1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonClickListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonPlus:Landroid/widget/ImageButton;

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mButtonClickListener:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat$2;

    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerFragment;->mPicker:Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mPickerContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/widget/PickerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f14024d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
