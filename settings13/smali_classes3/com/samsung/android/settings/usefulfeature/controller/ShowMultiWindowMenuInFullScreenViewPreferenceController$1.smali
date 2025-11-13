.class Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ShowMultiWindowMenuInFullScreenViewPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/ShowMultiWindowMenuInFullScreenViewPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
