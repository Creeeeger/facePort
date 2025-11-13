.class Lcom/android/settings/EditPinPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setNegativeButtonText(I)V

    .line 54
    sget p1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setPositiveButtonText(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 73
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_edit_pin_dialog_side_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->sec_edit_pin_dialog_top_bottom_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 75
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 76
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 73
    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    const v1, 0x102000b

    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 78
    sget v1, Lcom/android/settings/R$style;->edit_dialog_label_text_style:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 79
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 80
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_widget_alert_dialog_edittext_margin_start_remove:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 85
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x10000000

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    const/4 p1, 0x2

    .line 88
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    .line 89
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1010036

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 p0, 0x12

    .line 93
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p0, 0x4

    .line 95
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTextAlignment(I)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/text/InputFilter;

    .line 97
    new-instance p1, Landroid/text/InputFilter$LengthFilter;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object p1, p0, v3

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/16 p0, 0x11

    .line 100
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setGravity(I)V

    .line 101
    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result p0

    .line 102
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelection(I)V

    .line 103
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected onCreateDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/EditPinPreference;->setDialogLocation(Landroid/app/Dialog;)V

    return-object p1
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onDialogClosed(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings/EditPinPreference;Z)V

    :cond_0
    return-void
.end method

.method public setDialogLocation(Landroid/app/Dialog;)V
    .locals 2

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 137
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->seslGetPreferenceBounds(Landroid/graphics/Rect;)V

    .line 138
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    .line 139
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p1, p0, v0}, Landroid/app/Dialog;->semSetAnchor(II)V

    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/DialogPreference;->onClick()V

    :cond_1
    return-void
.end method

.method public updateDialog(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 147
    new-instance v0, Lcom/android/settings/EditPinPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/EditPinPreference$1;-><init>(Lcom/android/settings/EditPinPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
