.class public final Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;
.super Lcom/android/settingslib/RestrictedDropDownPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field public final synthetic this$0:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;->this$0:Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;

    invoke-direct {p0, p3}, Lcom/android/settingslib/RestrictedDropDownPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p2, p3}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    iget-object p1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p1, 0x7f030183

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntries(I)V

    const/4 p1, 0x3

    new-array p3, p1, [Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p3, v2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    iput-object p3, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object p1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of p3, p1, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    iget v2, p1, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string p1, "%s"

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/RestrictedDropDownPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const-string p2, "android:premium_sms_access"

    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkEcmRestrictionAndSetDisabled(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference$1;-><init>(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$PremiumSmsPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedDropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
