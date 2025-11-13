.class Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;
.super Ljava/lang/Object;
.source "AppChannelsBypassingDndPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->populateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

.field final synthetic val$channel:Landroid/app/NotificationChannel;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 187
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 188
    iget-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 189
    iget-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 190
    iget-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iget-object v1, p2, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p2, p2, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v3, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 191
    iget-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->-$$Nest$fgetmAllNotificationsToggle(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p2

    iget-object v1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->-$$Nest$mareAllChannelsBypassing(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 192
    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->-$$Nest$minsertEventLogging(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Ljava/lang/String;Z)V

    return v0
.end method
