.class public Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "NfcRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 48
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

    .line 52
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mContext:Landroid/content/Context;

    .line 53
    sget p1, Lcom/android/settings/R$layout;->sec_nfc_radio_button_preference_row:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 54
    sget p1, Lcom/android/settings/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method announceForAccessibility()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->nfc_radiobtn_select:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 78
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 80
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->mListener:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;

    return-void
.end method
