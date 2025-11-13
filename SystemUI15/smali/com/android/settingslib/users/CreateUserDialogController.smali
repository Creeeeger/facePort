.class public final Lcom/android/settingslib/users/CreateUserDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

.field public mCachedDrawablePath:Ljava/lang/String;

.field public mCancelCallback:Ljava/lang/Runnable;

.field public mCurrentState:I

.field public mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

.field public mEditUserInfoView:Landroid/view/View;

.field public mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

.field public final mFileAuthority:Ljava/lang/String;

.field public mGrantAdminView:Landroid/view/View;

.field public mIsAdmin:Ljava/lang/Boolean;

.field public mMaxToast:Landroid/widget/Toast;

.field public mNewUserIcon:Landroid/graphics/drawable/Drawable;

.field public mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

.field public mSavedName:Ljava/lang/String;

.field public mSavedPhoto:Landroid/graphics/Bitmap;

.field public mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

.field public mUserCreationDialog:Landroid/app/Dialog;

.field public mUserName:Ljava/lang/String;

.field public mUserNameView:Landroid/widget/EditText;

.field public mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mFileAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;
    .locals 8

    new-instance v7, Lcom/android/settingslib/users/EditUserPhotoController;

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    iget-object v6, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mFileAuthority:Ljava/lang/String;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v7
.end method

.method public getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const-string p0, "no_set_user_icon"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public isChangePhotoRestrictedByBase(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "no_set_user_icon"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final updateLayout()V
    .locals 12

    iget v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const v2, 0x7f070fbb

    const/16 v3, 0x8

    const v4, 0x7f130ce8

    const/4 v5, 0x7

    const/16 v6, 0x9

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_6

    const v10, 0x7f1301d9

    if-eq v0, v9, :cond_5

    if-eq v0, v7, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    goto/16 :goto_3

    :cond_0
    iput v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mNewUserIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f13142b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {v0, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v9, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v7, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v6, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v3, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v5, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    const v1, 0x7f131425

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x7f130552

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {v0, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v9, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v7, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v6, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v3, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v5, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0807fa

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v5, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f131421

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    const v5, 0x7f131420

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_add_user_long_message_displayed"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    const v11, 0x7f131419

    goto :goto_2

    :cond_7
    const v11, 0x7f131417

    :goto_2
    if-nez v10, :cond_8

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080a86

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {v1, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v9, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v7, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v6, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v3, v9}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v5, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    iget-object v5, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f13141b

    invoke-virtual {v1, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    iget-object v0, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/utils/CustomDialogHelper;->checkMaxFontScale(Landroid/widget/TextView;I)V

    iget-object v0, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    const v2, 0x7f130352

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    :goto_3
    return-void
.end method
