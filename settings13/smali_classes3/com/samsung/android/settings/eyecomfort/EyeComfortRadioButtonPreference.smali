.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "EyeComfortRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;

    .line 23
    sget p1, Lcom/android/settings/R$layout;->sec_preference_radio_button_eye_comfort:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 24
    sget p1, Lcom/android/settings/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020016

    .line 49
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 50
    invoke-static {p0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method setOnClickListener(Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;

    return-void
.end method
