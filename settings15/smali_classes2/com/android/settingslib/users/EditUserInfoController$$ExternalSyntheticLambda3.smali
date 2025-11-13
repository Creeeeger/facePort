.class public final synthetic Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/EditUserInfoController;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lcom/android/settingslib/utils/CustomDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;Lcom/android/settingslib/utils/CustomDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$2:Lcom/android/settingslib/utils/CustomDialogHelper;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;->f$2:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {p1}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
