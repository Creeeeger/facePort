.class public final Lcom/android/settings/notification/RedactNotificationPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/RedactNotificationPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/notification/RedactNotificationPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/notification/RedactNotificationPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
