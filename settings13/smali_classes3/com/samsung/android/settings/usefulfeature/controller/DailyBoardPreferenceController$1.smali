.class Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "DailyBoardPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;->-$$Nest$mupdatePreferenceSummary(Lcom/samsung/android/settings/usefulfeature/controller/DailyBoardPreferenceController;Z)V

    :cond_1
    return-void
.end method
