.class public final synthetic Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

.field public final synthetic f$1:Landroid/app/NotificationChannelGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;->f$1:Landroid/app/NotificationChannelGroup;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;->f$1:Landroid/app/NotificationChannelGroup;

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationBackend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v3, v2, p1, v0}, Landroid/app/INotificationManager;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "NotificationBackend"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateGroupPreferences(Landroid/app/NotificationChannelGroup;Landroidx/preference/PreferenceGroup;)V

    :cond_0
    return v1
.end method
