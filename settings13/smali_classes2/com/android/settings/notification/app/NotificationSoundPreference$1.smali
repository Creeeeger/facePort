.class Lcom/android/settings/notification/app/NotificationSoundPreference$1;
.super Landroid/os/AsyncTask;
.source "NotificationSoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/NotificationSoundPreference;->updateRingtoneName(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/NotificationSoundPreference;Landroid/net/Uri;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    iput-object p2, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 6

    .line 71
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_notification_sound_silent:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/app/NotificationSoundPreference;->-$$Nest$fputmRingtoneName(Lcom/android/settings/notification/app/NotificationSoundPreference;Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result p1

    .line 81
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 82
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->notification_sound_default:I

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/notification/app/NotificationSoundPreference;->-$$Nest$fputmRingtoneName(Lcom/android/settings/notification/app/NotificationSoundPreference;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.resource"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->notification_unknown_sound_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/app/NotificationSoundPreference;->-$$Nest$fputmRingtoneName(Lcom/android/settings/notification/app/NotificationSoundPreference;Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    const-string v2, "external resources"

    invoke-static {p1, v2}, Lcom/android/settings/notification/app/NotificationSoundPreference;->-$$Nest$fputmRingtoneName(Lcom/android/settings/notification/app/NotificationSoundPreference;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-static {p1, p0, v1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/CharSequence;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/app/NotificationSoundPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/NotificationSoundPreference$1;->onPostExecute(Ljava/lang/CharSequence;)V

    return-void
.end method
