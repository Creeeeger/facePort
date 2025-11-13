.class public Lcom/samsung/android/settings/widget/SecGearPreference;
.super Lcom/samsung/android/settings/widget/SecRestrictedPreference;
.source "SecGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecGearPreference$RoleDescriptionAccessibilityDelegate;,
        Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 0

    .line 52
    sget p0, Lcom/android/settings/R$layout;->sec_widget_preference_gear:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 65
    sget v0, Lcom/android/settings/R$id;->settings_button_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    sget v1, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 68
    new-instance v2, Lcom/samsung/android/settings/widget/SecGearPreference$RoleDescriptionAccessibilityDelegate;

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->button_tts:I

    .line 69
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/widget/SecGearPreference$RoleDescriptionAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 77
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :goto_0
    sget p0, Lcom/android/settings/R$id;->icon_frame:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 84
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->settings_button_container:I

    if-ne p1, v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1, p0}, Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;->onGearClick(Lcom/samsung/android/settings/widget/SecGearPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    .line 47
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecGearPreference$OnGearClickListener;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
