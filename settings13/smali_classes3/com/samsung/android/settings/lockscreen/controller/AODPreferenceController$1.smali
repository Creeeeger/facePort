.class Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "AODPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$fgetmHost(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/lockscreen/LockScreenSettings;

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$fgetmAlwaysOnScreen(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$fgetmAlwaysOnScreen(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 77
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController$1;->this$0:Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;->-$$Nest$mupdateSummary(Lcom/samsung/android/settings/lockscreen/controller/AODPreferenceController;)V

    :cond_0
    return-void
.end method
