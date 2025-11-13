.class public final Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;
.super Landroid/os/UpdateEngineStableCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mUpdateEngineStable:Landroid/os/UpdateEngineStable;

.field public final synthetic this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/Enable16kPagesPreferenceController;Landroid/os/UpdateEngineStable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    invoke-direct {p0}, Landroid/os/UpdateEngineStableCallback;-><init>()V

    iput-object p2, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->mUpdateEngineStable:Landroid/os/UpdateEngineStable;

    return-void
.end method


# virtual methods
.method public final onPayloadApplicationComplete(I)V
    .locals 3

    const-string v0, "Enable16kPages"

    const-string v1, "Callback from update engine stable received. unbinding.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->mUpdateEngineStable:Landroid/os/UpdateEngineStable;

    invoke-virtual {v1}, Landroid/os/UpdateEngineStable;->unbind()Z

    iget-object v1, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    iget-object v2, v1, Lcom/android/settings/development/Enable16kPagesPreferenceController;->mProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/settings/development/Enable16kPagesPreferenceController;->mProgressDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "applyPayload successful"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/Enable16kPagesPreferenceController;->access$200(Lcom/android/settings/development/Enable16kPagesPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    iget-boolean v0, v0, Lcom/android/settings/development/Enable16kPagesPreferenceController;->mEnable16k:Z

    const-string v1, "enable_16k_pages"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    invoke-static {p1}, Lcom/android/settings/development/Enable16kPagesPreferenceController;->access$300(Lcom/android/settings/development/Enable16kPagesPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/SystemUpdateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SystemUpdateManager;

    iget-object v0, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "is_security_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "title"

    const-string v2, "Android 16K Kernel Experimental Update"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/SystemUpdateManager;->updateSystemUpdateInfo(Landroid/os/PersistableBundle;)V

    iget-object p0, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/Enable16kPagesPreferenceController;->access$400(Lcom/android/settings/development/Enable16kPagesPreferenceController;)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string p1, "recovery"

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "applyPayload failed, error code: "

    invoke-static {p1, v1, v0}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$OtaUpdateCallback;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/Enable16kPagesPreferenceController;->access$500(Lcom/android/settings/development/Enable16kPagesPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f142f39

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/development/Enable16kPagesPreferenceController;->-$$Nest$mdisplayToast(Lcom/android/settings/development/Enable16kPagesPreferenceController;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onStatusUpdate(IF)V
    .locals 0

    return-void
.end method
