.class public final Lcom/android/settings/development/Enable16kPagesPreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/Enable16kPagesPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$1;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController$1;->this$0:Lcom/android/settings/development/Enable16kPagesPreferenceController;

    iget-object v0, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController;->mProgressDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/Enable16kPagesPreferenceController;->mProgressDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    const-string v0, "Enable16kPages"

    const-string v1, "Failed to call applyPayload of UpdateEngineStable!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/android/settings/development/Enable16kPagesPreferenceController;->access$000(Lcom/android/settings/development/Enable16kPagesPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f142f39

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/development/Enable16kPagesPreferenceController;->-$$Nest$mdisplayToast(Lcom/android/settings/development/Enable16kPagesPreferenceController;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    const-string p0, "Enable16kPages"

    const-string p1, "applyPayload call to UpdateEngineStable succeeded."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
