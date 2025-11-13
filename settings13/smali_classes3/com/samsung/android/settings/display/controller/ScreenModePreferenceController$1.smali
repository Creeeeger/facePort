.class Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ScreenModePreferenceController]onReceive : action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScreenModePreferenceController"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.android.settings.SCREEN_MODE_ROUTINE_ACTION"

    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->-$$Nest$mupdateScreenModeSummary(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Ljava/lang/CharSequence;

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[mScreenModeChangeReceiver] updateState ??? "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " / Yes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
