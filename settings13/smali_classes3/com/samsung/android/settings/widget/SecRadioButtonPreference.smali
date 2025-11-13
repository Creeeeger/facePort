.class public Lcom/samsung/android/settings/widget/SecRadioButtonPreference;
.super Landroidx/preference/SecCheckBoxPreference;
.source "SecRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mDrawableRes:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private mIsAniStart:Z

.field private mIsEnable:Z

.field private mIsIcon:Z

.field private mIsVisible:Z

.field private mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SecCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsVisible:Z

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsAniStart:Z

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsEnable:Z

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsIcon:Z

    .line 33
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_front_widget_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 34
    sget p1, Lcom/android/settings/R$layout;->preference_widget_radiobutton:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Landroidx/preference/SecCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    sget v1, Lcom/android/settings/R$id;->image_view:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    .line 62
    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsIcon:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 65
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    goto :goto_2

    .line 67
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsVisible:Z

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsVisible:Z

    if-eqz p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mDrawableRes:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsAniStart:Z

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference$1;-><init>(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsEnable:Z

    if-eqz p0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const p0, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 83
    :cond_4
    :goto_2
    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    if-eqz v0, :cond_5

    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 p0, 0x3

    .line 86
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_5
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsEnable:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIsIcon:Z

    .line 113
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    return-void
.end method
