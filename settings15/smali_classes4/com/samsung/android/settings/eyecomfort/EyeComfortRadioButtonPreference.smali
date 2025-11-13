.class public Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;

    const p1, 0x7f0d0950

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const p1, 0x7f0d0546

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020016

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    return-void
.end method

.method public final onClick()V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;->mListener:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;

    iget-object v1, v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mAdaptivePreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const/16 v4, 0x1cf3

    const-wide/16 v5, 0x1

    const v7, 0x9d08

    const/16 v8, 0x107e

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter_adaptive_mode"

    invoke-static {p0, v0, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v8, v7, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-static {v8, v4, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->mCustomPreference:Lcom/samsung/android/settings/eyecomfort/EyeComfortRadioButtonPreference;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "location_mode"

    const/4 v10, 0x0

    invoke-static {p0, v1, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move p0, v9

    goto :goto_0

    :cond_1
    move p0, v10

    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v11, "blue_light_filter_type"

    invoke-static {v1, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez p0, :cond_2

    const/4 p0, 0x2

    if-ne v1, p0, :cond_2

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/eyecomfort/EyeComfortSettings;->showLocationOnDialog(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "blue_light_filter_scheduled"

    invoke-static {p0, v0, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v8, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-static {v8, v7, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_3
    :goto_1
    return-void
.end method
