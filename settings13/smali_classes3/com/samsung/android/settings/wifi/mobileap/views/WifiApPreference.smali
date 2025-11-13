.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
.super Landroidx/preference/Preference;
.source "WifiApPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final PREFERENCE_LAYOUT:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mButtonText:Ljava/lang/String;

.field private mButtonViewClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDividerAllowedAbove:Z

.field private mDividerAllowedBelow:Z

.field private mIconColor:I

.field private mIconScaleType:Landroid/widget/ImageView$ScaleType;

.field private mIsNonWhiteBackgroundRequired:Z

.field private mIsRippleEffectRequired:Z

.field private mProgress:I

.field private mProgressBarVisibility:Z

.field private mProgressColor:I

.field private mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

.field private mSecondaryAlertIconVisibility:Z

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

.field private mSecondaryIconDividerVisibility:Z

.field private mSecondaryIconVisibility:Z

.field private mSummary2Text:Ljava/lang/String;

.field private mSummaryIcon:Landroid/graphics/drawable/Drawable;

.field private mTextGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget v0, Lcom/android/settings/R$layout;->sec_wifi_ap_preference:I

    sput v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->PREFERENCE_LAYOUT:I

    .line 30
    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x800003

    .line 32
    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTextGravity:I

    const/4 p2, 0x1

    .line 33
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsRippleEffectRequired:Z

    const/4 p3, 0x0

    .line 34
    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsNonWhiteBackgroundRequired:Z

    .line 35
    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconDividerVisibility:Z

    const/4 p4, 0x0

    .line 37
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconVisibility:Z

    .line 40
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconVisibility:Z

    .line 47
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgress:I

    .line 48
    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressBarVisibility:Z

    .line 49
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressColor:I

    .line 50
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    .line 51
    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconColor:I

    .line 52
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedAbove:Z

    .line 53
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedBelow:Z

    const-string p2, ""

    .line 54
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2Text:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    .line 59
    sget p1, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->PREFERENCE_LAYOUT:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getSecondaryIconVisibility()Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconVisibility:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 12

    .line 81
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 82
    sget v0, Lcom/android/settings/R$id;->summary2_textview:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/android/settings/R$id;->text_container:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 84
    sget v2, Lcom/android/settings/R$id;->preference_container:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v2, 0x1020006

    .line 85
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 86
    sget v3, Lcom/android/settings/R$id;->progress_bar:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 87
    sget v4, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 88
    sget v5, Lcom/android/settings/R$id;->icon_secondary:I

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 89
    sget v6, Lcom/android/settings/R$id;->icon_secondary_alert_icon:I

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 90
    sget v7, Lcom/android/settings/R$id;->summary_icon:I

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 91
    sget v8, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p1, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 93
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsRippleEffectRequired:Z

    if-eqz v9, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v9, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$drawable;->default_preference_background:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_0
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsNonWhiteBackgroundRequired:Z

    if-eqz v9, :cond_1

    .line 100
    iget-object v9, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$color;->sesl_round_and_bgcolor_light:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 102
    :cond_1
    iget-object v9, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$drawable;->default_preference_background:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :goto_1
    iget v9, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTextGravity:I

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v1, 0x8

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    .line 109
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2Text:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 110
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2Text:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconColor:I

    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 126
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedAbove:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedBelow:Z

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 130
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressBarVisibility:Z

    if-eqz p1, :cond_6

    .line 131
    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgress:I

    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 133
    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressColor:I

    if-eqz p1, :cond_7

    .line 134
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 137
    :cond_6
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 141
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconDividerVisibility:Z

    if-eqz p1, :cond_8

    .line 142
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 144
    :cond_8
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const/4 p1, 0x1

    if-eqz v5, :cond_c

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 151
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    move v0, v9

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    move v0, p1

    goto :goto_6

    :cond_b
    move v0, v9

    :goto_6
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconVisibility:Z

    :cond_c
    if-eqz v6, :cond_10

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 161
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    move v0, v9

    goto :goto_7

    :cond_e
    move v0, v1

    :goto_7
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_8

    :cond_f
    move p1, v9

    :goto_8
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconVisibility:Z

    :cond_10
    if-eqz v7, :cond_13

    .line 169
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    .line 170
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_12

    move p1, v9

    goto :goto_9

    :cond_12
    move p1, v1

    :goto_9
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    if-eqz v8, :cond_16

    .line 177
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mButtonText:Ljava/lang/String;

    if-eqz p1, :cond_15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_a

    .line 180
    :cond_14
    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mButtonText:Ljava/lang/String;

    invoke-virtual {v8, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mButtonViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 178
    :cond_15
    :goto_a
    invoke-virtual {v8, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_16
    :goto_b
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 190
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick() - preference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public setDividerLine(ZZ)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedAbove:Z

    .line 244
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedBelow:Z

    .line 245
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 355
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->TAG:Ljava/lang/String;

    const-string v1, "setEnabled() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTextGravity:I

    .line 196
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIconColorFilter(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconColor:I

    return-void
.end method

.method public setIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 260
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    .line 261
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIsNonWhiteBackgroundRequired(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsNonWhiteBackgroundRequired:Z

    .line 206
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIsRippleEffectRequired(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsRippleEffectRequired:Z

    .line 201
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 365
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgress:I

    .line 366
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setProgressBarColor(I)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressColor:I

    .line 376
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .locals 0

    .line 370
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressBarVisibility:Z

    .line 371
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 293
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    .line 294
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setSecondaryAlertIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

    .line 327
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 287
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setSecondaryIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    .line 322
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSecondaryIconDividerVisibility(Z)V
    .locals 0

    .line 360
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconDividerVisibility:Z

    .line 361
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setSpannableSummary(Landroid/text/SpannableString;)V
    .locals 3

    .line 215
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpannableTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSpannableTitle(Landroid/text/SpannableString;)V
    .locals 3

    .line 210
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpannableTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary2Text(Ljava/lang/CharSequence;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2Text:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2Text:Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
