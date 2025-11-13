.class public Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;
.super Landroidx/preference/SecPreference;
.source "SecExpandableMenuPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnBindListener;,
        Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;
    }
.end annotation


# instance fields
.field private final mIconEndId:I

.field private final mIsDividerVisible:Z

.field private mIsExpanded:Z

.field private mKey:Ljava/lang/String;

.field private mOnBindListener:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnBindListener;

.field private mOnExpandListener:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;

.field private mProgressIcon:Landroid/widget/ProgressBar;

.field private mScanIconDrawableName:Ljava/lang/String;

.field private mScanStateProviderProvider:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;

.field private mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field private mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 190
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    .line 38
    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 191
    sget v1, Lcom/android/settings/R$layout;->preference_expandable_menu:I

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 192
    sget-object v1, Lcom/android/settings/R$styleable;->SecExpandableMenuPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 193
    sget p2, Lcom/android/settings/R$styleable;->SecExpandableMenuPreference_expandableIconEnd:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIconEndId:I

    .line 195
    sget p2, Lcom/android/settings/R$styleable;->SecExpandableMenuPreference_isDividerVisible:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsDividerVisible:Z

    .line 197
    sget p2, Lcom/android/settings/R$styleable;->SecExpandableMenuPreference_scanIconDrawableName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setStatus()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->shouldPlayAnimation(Landroid/content/Context;)Z

    move-result v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus: playAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecExpandableMenuPreference"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sget-object v1, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$1;->$SwitchMap$com$samsung$android$settings$privacy$SecurityDashboardConstants$Status:[I

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/android/settings/R$drawable;->ic_security_arrow_forward:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 112
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 92
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "scanning_red.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/android/settings/R$drawable;->list_status_red:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->security_dashboard_accessibility_status_desc_warning:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 78
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    if-nez v1, :cond_3

    .line 80
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "scanning_orange.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/android/settings/R$drawable;->list_status_orange:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->security_dashboard_accessibility_status_desc_suggestion:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    if-nez v1, :cond_5

    .line 66
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    if-eqz v0, :cond_6

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "scanning_green.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 72
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget v1, Lcom/android/settings/R$drawable;->list_status_green:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->security_dashboard_accessibility_status_desc_good:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getScanCategoryIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getStatus(Ljava/lang/String;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0

    .line 128
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 203
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 205
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 206
    sget v1, Lcom/android/settings/R$id;->icon_status:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 207
    sget v1, Lcom/android/settings/R$id;->menu_item_scan_progress_icon:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 208
    sget v1, Lcom/android/settings/R$id;->divider:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mOnBindListener:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnBindListener;

    if-eqz v1, :cond_0

    .line 210
    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnBindListener;->onBind(ZLjava/lang/String;)V

    .line 212
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIconEndId:I

    if-eqz v1, :cond_1

    .line 213
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 215
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsDividerVisible:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_security_dashboard_expandable_menu_divider_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 220
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_security_dashboard_menu_icons_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus()V

    return-void
.end method

.method public onClick()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanStateProviderProvider:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mOnExpandListener:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;

    if-eqz v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setIsExpanded(ZLjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mOnExpandListener:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;

    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;->onExpand(ZLjava/lang/String;)V

    .line 177
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->saveExpandableMenuClickToSALogging(Ljava/lang/String;)V

    return-void
.end method

.method public setIsExpanded(ZLjava/lang/String;)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    .line 182
    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setOnBindListener(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnBindListener;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mOnBindListener:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnBindListener;

    return-void
.end method

.method public setOnExpandListener(Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mOnExpandListener:Lcom/samsung/android/settings/widget/SecExpandableMenuPreference$OnExpandListener;

    return-void
.end method

.method public setScanIconDrawableName(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    return-void
.end method

.method public setScanStateProvider(Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanStateProviderProvider:Lcom/samsung/android/settings/privacy/SecurityAndPrivacySettings$ScanStateProvider;

    return-void
.end method

.method public setShowStatusIcon(Z)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus()V

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " iconStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isExpanded == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecExpandableMenuPreference"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus()V

    return-void
.end method
