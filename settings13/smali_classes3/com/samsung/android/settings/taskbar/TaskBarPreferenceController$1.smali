.class Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "TaskBarPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onChange: refresh task bar pref"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p0, p0, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController$1;->this$0:Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/taskbar/TaskBarPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
