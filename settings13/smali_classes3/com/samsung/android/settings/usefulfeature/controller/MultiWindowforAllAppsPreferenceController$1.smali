.class Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "MultiWindowforAllAppsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/MultiWindowforAllAppsPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
