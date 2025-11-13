.class public final Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->-$$Nest$fgetmButton(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->-$$Nest$fgetmFaceManager(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const-string v2, "FaceSettings/Remove"

    if-eqz p2, :cond_0

    const-string p0, "No faces"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Multiple enrollments: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p2}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->-$$Nest$fgetmFaceUpdater(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Lcom/android/settings/biometrics/face/FaceUpdater;

    move-result-object p2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/face/Face;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {v0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->-$$Nest$fgetmUserId(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {v1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->-$$Nest$fgetmRemovalCallback(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/hardware/face/FaceManager$RemovalCallback;

    move-result-object v1

    iget-object v2, p2, Lcom/android/settings/biometrics/face/FaceUpdater;->mFaceManager:Landroid/hardware/face/FaceManager;

    new-instance v3, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingRemovalCallback;

    iget-object p2, p2, Lcom/android/settings/biometrics/face/FaceUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v3, p2, v1}, Lcom/android/settings/biometrics/face/FaceUpdater$NotifyingRemovalCallback;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceManager$RemovalCallback;)V

    invoke-virtual {v2, p1, v0, v3}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->-$$Nest$fgetmButton(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    iput-boolean v1, p1, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->mRemoving:Z

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$2;->this$0:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->-$$Nest$fgetmActivity(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-class p1, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;

    if-eqz p0, :cond_3

    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$ConfirmRemoveDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_3
    return-void
.end method
