.class public Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "SnsRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;

    .line 37
    sget p1, Lcom/android/settings/R$layout;->sec_sns_radio_button_preference_row:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 38
    sget p1, Lcom/android/settings/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020016

    .line 66
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x1020010

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_1
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p0}, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference;->mListener:Lcom/samsung/android/settings/wifi/intelligent/SnsRadioButtonPreference$OnClickListener;

    return-void
.end method
