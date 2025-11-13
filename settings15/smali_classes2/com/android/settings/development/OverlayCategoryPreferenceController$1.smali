.class public final Lcom/android/settings/development/OverlayCategoryPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

.field public final synthetic val$currentPackageName:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/OverlayCategoryPreferenceController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    iput-object p2, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$currentPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    :try_start_0
    const-string p1, "package_device_default"

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    iget-object p1, p1, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$currentPackageName:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v0}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    iget-object p1, p1, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->val$packageName:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "OverlayCategoryPC"

    const-string v0, "Error enabling overlay."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    iget-object v1, v0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;->this$0:Lcom/android/settings/development/OverlayCategoryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->access$000(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f141ba4

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
