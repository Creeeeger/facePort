.class public Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "NotificationReminderAppItemPreference.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAllowLineDivider:Z

.field private mLineDivider:Landroid/view/View;

.field private mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 18
    const-class p1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowLineDivider:Z

    .line 25
    sget p1, Lcom/android/settings/R$layout;->noti_reminder_app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 18
    const-class p1, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowLineDivider:Z

    if-eqz p2, :cond_0

    .line 31
    sget p1, Lcom/android/settings/R$layout;->noti_reminder_app_item_preference_layout_allapps:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    goto :goto_0

    .line 33
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->noti_reminder_app_item_preference_layout:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public allowDrawerDivider(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowLineDivider:Z

    return-void
.end method

.method public allowLineDivider(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowLineDivider:Z

    return-void
.end method

.method public getReminderAppInfo()Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 39
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->TAG:Ljava/lang/String;

    const-string v1, "onBindViewHolder "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget v0, Lcom/android/settings/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1020040

    .line 43
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 44
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 49
    :cond_0
    sget v0, Lcom/android/settings/R$id;->line_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mLineDivider:Landroid/view/View;

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 53
    iget-boolean p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mAllowLineDivider:Z

    if-nez p1, :cond_1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mLineDivider:Landroid/view/View;

    if-eqz p0, :cond_2

    const/16 p1, 0x8

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mLineDivider:Landroid/view/View;

    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setReminderAppInfo(Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderAppItemPreference;->mReminderAppListInfo:Lcom/samsung/android/settings/notification/reminder/ReminderAppListInfo;

    return-void
.end method
