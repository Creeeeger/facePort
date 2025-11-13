.class public Landroidx/preference/SecEditTextPreference;
.super Lcom/android/settingslib/CustomEditTextPreferenceCompat;
.source "SecEditTextPreference.java"


# instance fields
.field private mInputType:I

.field private mMaxLength:I

.field private mPrivateImeOptions:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    sget v0, Lcom/android/settings/R$attr;->editTextPreferenceStyle:I

    const v1, 0x1010092

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SecEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_dialog_edittext:I

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 55
    sget p1, Lcom/android/settings/R$string;->dlg_ok:I

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setPositiveButtonText(I)V

    .line 56
    sget p1, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p0, p1}, Landroidx/preference/DialogPreference;->setNegativeButtonText(I)V

    const-string p1, "http://schemas.android.com/apk/res/android"

    const-string v0, "maxLength"

    .line 57
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iput v0, p0, Landroidx/preference/SecEditTextPreference;->mMaxLength:I

    :cond_0
    const-string v0, "inputType"

    .line 65
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/preference/SecEditTextPreference;->mInputType:I

    :cond_1
    const-string v0, "privateImeOptions"

    .line 70
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 72
    iput-object p1, p0, Landroidx/preference/SecEditTextPreference;->mPrivateImeOptions:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SecEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x40

    .line 39
    iput p1, p0, Landroidx/preference/SecEditTextPreference;->mMaxLength:I

    const/high16 p1, 0x80000

    .line 40
    iput p1, p0, Landroidx/preference/SecEditTextPreference;->mInputType:I

    const-string p1, ""

    .line 41
    iput-object p1, p0, Landroidx/preference/SecEditTextPreference;->mPrivateImeOptions:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 4

    .line 107
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    int-to-double v0, v0

    .line 108
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 116
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/SecEditTextPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    .line 86
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Landroidx/preference/SecEditTextPreference;->mMaxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 87
    iget v0, p0, Landroidx/preference/SecEditTextPreference;->mInputType:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 88
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 89
    iget-object v0, p0, Landroidx/preference/SecEditTextPreference;->mPrivateImeOptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 91
    iget p0, p0, Landroidx/preference/SecEditTextPreference;->mInputType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "inputType=YearDateTime_edittext"

    .line 92
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 100
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
