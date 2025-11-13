.class public final synthetic Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/EditUserInfoController;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/util/function/BiConsumer;

.field public final synthetic f$5:Lcom/android/settingslib/utils/CustomDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/EditUserInfoController;Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;Lcom/android/settingslib/utils/CustomDialogHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/BiConsumer;

    iput-object p6, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$5:Lcom/android/settingslib/utils/CustomDialogHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/EditUserInfoController;

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$4:Ljava/util/function/BiConsumer;

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;->f$5:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object v4, p1, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    move-object v0, v4

    :cond_1
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v2, v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/users/EditUserInfoController;->clear()V

    if-eqz v3, :cond_3

    invoke-interface {v3, v2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
