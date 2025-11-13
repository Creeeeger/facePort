.class public final Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController$displayPreference$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController$displayPreference$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController$displayPreference$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;->access$getMPreference$p(Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController$displayPreference$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController$displayPreference$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;->access$getMPreference$p(Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController$displayPreference$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;->access$getMPreference$p(Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController$displayPreference$1;->this$0:Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/labs/multiwindow/MultiWindowforAllAppsPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
