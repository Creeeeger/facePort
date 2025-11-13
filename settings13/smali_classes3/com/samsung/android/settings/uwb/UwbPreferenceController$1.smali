.class Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "UwbPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/uwb/UwbPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;->this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;->this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    :cond_0
    invoke-static {p1, v1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->-$$Nest$fputmAirplaneModeOn(Lcom/samsung/android/settings/uwb/UwbPreferenceController;Z)V

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "airplane mode received: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;->this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->-$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/settings/uwb/UwbPreferenceController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UwbPreferenceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController$1;->this$0:Lcom/samsung/android/settings/uwb/UwbPreferenceController;

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/uwb/UwbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
