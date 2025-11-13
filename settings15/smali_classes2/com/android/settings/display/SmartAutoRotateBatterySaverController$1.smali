.class public final Lcom/android/settings/display/SmartAutoRotateBatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/display/SmartAutoRotateBatterySaverController;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/SmartAutoRotateBatterySaverController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateBatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateBatterySaverController;

    invoke-static {p1}, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotateBatterySaverController;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateBatterySaverController;

    invoke-static {p1}, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotateBatterySaverController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateBatterySaverController;

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$1;->this$0:Lcom/android/settings/display/SmartAutoRotateBatterySaverController;

    invoke-static {p0}, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->-$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotateBatterySaverController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
