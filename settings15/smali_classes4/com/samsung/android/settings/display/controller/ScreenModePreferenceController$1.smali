.class public final Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[ScreenModePreferenceController]onReceive : action = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ScreenModePreferenceController"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.android.settings.SCREEN_MODE_ROUTINE_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->-$$Nest$mupdateScreenModeSummary(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[mScreenModeChangeReceiver] updateState ??? "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " / Yes"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;)Lcom/samsung/android/settings/display/DisplayDisabledAppearancePreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
