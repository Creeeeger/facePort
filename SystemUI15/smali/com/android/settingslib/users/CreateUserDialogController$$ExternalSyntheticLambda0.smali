.class public final synthetic Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/CreateUserDialogController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/CreateUserDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 8

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iget p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mNewUserIcon:Landroid/graphics/drawable/Drawable;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p1, p1, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/user/CreateUserActivity;

    iget-object v2, p1, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    const v0, 0x7f13142b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    new-instance v7, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda5;

    invoke-direct {v7, p1, v1}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/user/CreateUserActivity;Ljava/lang/Boolean;)V

    new-instance v5, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {v5, p1, v0}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/user/CreateUserActivity;I)V

    iget-object v2, p1, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/settingslib/users/UserCreatingDialog;

    iget-object p1, v2, Lcom/android/systemui/user/UserCreator;->context:Landroid/content/Context;

    invoke-direct {v4, p1}, Lcom/android/settingslib/users/UserCreatingDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object p1, v2, Lcom/android/systemui/user/UserCreator;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/user/UserCreator$createUser$1;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/user/UserCreator$createUser$1;-><init>(Lcom/android/systemui/user/UserCreator;Ljava/lang/String;Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCancelCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCancelCallback:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    return-void
.end method
