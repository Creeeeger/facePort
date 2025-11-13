.class public Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "BriefPopupAppItemPreference.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllowDrawerDivider:Z

.field private mAllowLineDivider:Z

.field private mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

.field private mDotDivider:Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

.field private mLineDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 19
    const-class p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    .line 44
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-class p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    .line 39
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-class p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    .line 34
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    const-class p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    .line 29
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 19
    const-class p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    if-eqz p2, :cond_0

    .line 51
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout_allapps:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    .line 53
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public allowDrawerDivider(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    return-void
.end method

.method public allowLineDivider(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    return-void
.end method

.method public getBriefAppInfo()Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget v0, Lcom/android/settings/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1020040

    .line 63
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 64
    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    sget v0, Lcom/android/settings/R$id;->line_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mLineDivider:Landroid/view/View;

    .line 70
    sget v0, Lcom/android/settings/R$id;->dot_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mDotDivider:Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 73
    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mDotDivider:Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mDotDivider:Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    if-nez p1, :cond_3

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mLineDivider:Landroid/view/View;

    if-eqz p0, :cond_4

    .line 85
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mLineDivider:Landroid/view/View;

    if-eqz p0, :cond_4

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBriefAppInfo(Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    return-void
.end method
