.class public Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppNameComparator:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$3;

.field public final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field public final mContext:Landroid/content/Context;

.field public mIsAllAppChecked:Ljava/lang/Boolean;

.field public final mSettingsButtonClickListener:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$1;

.field public mShowContentBtn:Landroid/widget/RadioButton;

.field public mShowContentContainer:Landroid/widget/LinearLayout;

.field public mShowContentSettingsBtn:Landroid/view/View;

.field public mShowContentSettingsBtnBg:Landroid/graphics/drawable/Drawable;

.field public mShowContentSummary:Landroid/widget/TextView;

.field public mSummaryText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p2}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mIsAllAppChecked:Ljava/lang/Boolean;

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mSummaryText:Ljava/lang/String;

    new-instance p2, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$1;-><init>(Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mSettingsButtonClickListener:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$1;

    new-instance p2, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$3;

    invoke-direct {p2}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$3;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mAppNameComparator:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$3;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a0e3b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentContainer:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    const v0, 0x7f0a0e3a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const v0, 0x7f0a0e3e

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mSummaryText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    if-nez v0, :cond_3

    const v0, 0x7f0a0e3c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mSettingsButtonClickListener:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$1;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtnBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->setSettingsBtnEnabled(Z)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v2, "lock_screen_allow_private_notifications"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->setSettingsBtnEnabled(Z)V

    return-void
.end method

.method public final setSettingsBtnEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "lock_screen_allow_private_notifications"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    if-eqz v2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mSettingsButtonClickListener:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$1;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtn:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentSettingsBtnBg:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method
