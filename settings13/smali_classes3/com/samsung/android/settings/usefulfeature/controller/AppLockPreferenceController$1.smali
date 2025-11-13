.class Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "AppLockPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/AppLockPreferenceController;)Landroidx/preference/SecPreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
