.class public Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "ShowContentListItemPreference.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllowDrawerDivider:Z

.field private mAllowLineDivider:Z

.field private mDotDivider:Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

.field private mLineDivider:Landroid/view/View;

.field private mShowContentAppInfo:Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 17
    const-class p1, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowLineDivider:Z

    .line 27
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 17
    const-class p1, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowLineDivider:Z

    if-eqz p2, :cond_0

    .line 33
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout_allapps:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    .line 35
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public allowDrawerDivider(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowLineDivider:Z

    return-void
.end method

.method public allowLineDivider(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowLineDivider:Z

    return-void
.end method

.method public getShowContentAppInfo()Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mShowContentAppInfo:Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget v0, Lcom/android/settings/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1020040

    .line 45
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 46
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mShowContentAppInfo:Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mShowContentAppInfo:Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mShowContentAppInfo:Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mShowContentAppInfo:Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    sget v0, Lcom/android/settings/R$id;->line_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mLineDivider:Landroid/view/View;

    .line 52
    sget v0, Lcom/android/settings/R$id;->dot_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mDotDivider:Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 54
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 55
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowDrawerDivider:Z

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mDotDivider:Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mDotDivider:Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mAllowLineDivider:Z

    if-nez p1, :cond_3

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mLineDivider:Landroid/view/View;

    if-eqz p0, :cond_4

    .line 67
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 70
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mLineDivider:Landroid/view/View;

    if-eqz p0, :cond_4

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setShowContentAppInfo(Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowContentListItemPreference;->mShowContentAppInfo:Lcom/samsung/android/settings/lockscreen/ShowContentAppInfo;

    return-void
.end method
