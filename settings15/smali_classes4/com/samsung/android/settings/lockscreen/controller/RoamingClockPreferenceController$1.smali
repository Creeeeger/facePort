.class public final Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/lockscreen/controller/RoamingClockPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
