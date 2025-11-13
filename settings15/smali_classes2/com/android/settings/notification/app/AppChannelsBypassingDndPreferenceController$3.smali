.class public final Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

.field public final synthetic val$channel:Landroid/app/NotificationChannel;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1, p0}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    iget-object p0, p1, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->areAllChannelsBypassing()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return p2
.end method
