.class public Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAllowDrawerDivider:Z

.field public mAllowLineDivider:Z

.field public mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

.field public mLineDivider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    const-string p1, "BriefPopupAppItemPreference"

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    const p1, 0x7f0d004d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    const-string p1, "BriefPopupAppItemPreference"

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    const p1, 0x7f0d004e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p1, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;

    const-string p1, "BriefPopupAppItemPreference"

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    const p1, 0x7f0d004d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBindViewHolder "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a010e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mBriefAppInfo:Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/samsung/android/settings/notification/brief/widget/BriefAppInfo;->appName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0a08c0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mLineDivider:Landroid/view/View;

    const v0, 0x7f0a0561

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/brief/widget/DrawerDividerView;

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iput-boolean v1, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowDrawerDivider:Z

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mAllowLineDivider:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mLineDivider:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopupAppItemPreference;->mLineDivider:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method
