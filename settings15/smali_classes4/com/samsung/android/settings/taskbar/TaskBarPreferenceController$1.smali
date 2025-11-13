.class public final Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onChange: refresh task bar pref"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
