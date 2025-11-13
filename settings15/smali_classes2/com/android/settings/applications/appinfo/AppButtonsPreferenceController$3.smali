.class public final Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public final onBadgingChanged(I)V
    .locals 0

    return-void
.end method

.method public final onCreated(I)V
    .locals 0

    return-void
.end method

.method public final onFinished(IZ)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[Request restore Success] PackageName : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p2, p2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const-string v0, "AppButtonsPrefCtl"

    invoke-static {p1, p2, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmButton4(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmProgress(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$3;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0, p2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->-$$Nest$fputmIsRestoringState(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Z)V

    return-void
.end method

.method public final onProgressChanged(IF)V
    .locals 0

    return-void
.end method
