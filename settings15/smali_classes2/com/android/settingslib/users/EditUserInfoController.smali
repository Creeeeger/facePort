.class public final Lcom/android/settingslib/users/EditUserInfoController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mEditUserInfoDialog:Landroid/app/Dialog;

.field public mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

.field public mMaxToast:Landroid/widget/Toast;

.field public mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

.field public mSavedPhoto:Landroid/graphics/Bitmap;

.field public mWaitingForActivityResult:Z


# virtual methods
.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/android/settingslib/users/EditUserPhotoController;->mImagesDir:Ljava/io/File;

    const-string v2, "NewUserPhoto.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    return-void
.end method

.method public final createDialog(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/users/ActivityStarter;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .locals 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0219

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a10db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-le v1, v3, :cond_0

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    new-array v3, v1, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;

    invoke-direct {v4, p0, p1}, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Landroidx/fragment/app/FragmentActivity;)V

    aput-object v4, v3, v2

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v3, "disableImage=true"

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    new-instance v3, Lcom/android/settingslib/users/EditUserInfoController$1;

    invoke-direct {v3, p0}, Lcom/android/settingslib/users/EditUserInfoController$1;-><init>(Lcom/android/settingslib/users/EditUserInfoController;)V

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v3, 0x7f0a10dc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    move-object v4, p3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v6, -0x2710

    invoke-static {v4, v6, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0713ad

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v7, Lcom/android/settingslib/drawable/CircleFramedDrawable;

    invoke-direct {v7, v6, v4}, Lcom/android/settingslib/drawable/CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v7, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-object v4, v7

    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->isChangePhotoRestrictedByBase(Landroid/content/Context;)Z

    move-result v4

    const/16 v6, 0x8

    if-eqz v4, :cond_3

    const p2, 0x7f0a009c

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/EditUserInfoController;->getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance p2, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1, v4}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/settingslib/users/EditUserInfoController;->createEditUserPhotoController(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    :goto_1
    new-instance p2, Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-direct {p2, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2, v2}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {p2, v1, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    const/4 p1, 0x2

    invoke-virtual {p2, p1, v2}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    const/16 p1, 0x9

    invoke-virtual {p2, p1, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {p2, v6, v2}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    const/4 p1, 0x7

    invoke-virtual {p2, p1, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {p2}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    const p1, 0x7f141da6

    invoke-virtual {p2, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    iget-object p1, p2, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Landroid/graphics/drawable/Drawable;Landroid/widget/EditText;Ljava/lang/String;Ljava/util/function/BiConsumer;Lcom/android/settingslib/utils/CustomDialogHelper;)V

    const/4 p3, 0x6

    const p4, 0x7f141b4c

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p6, p2}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;Lcom/android/settingslib/utils/CustomDialogHelper;)V

    const/4 p3, 0x5

    const p4, 0x7f1408bf

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    new-instance p3, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p6, p2}, Lcom/android/settingslib/users/EditUserInfoController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/users/EditUserInfoController;Ljava/lang/Runnable;Lcom/android/settingslib/utils/CustomDialogHelper;)V

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p2, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController;->mEditUserInfoDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public createEditUserPhotoController(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;
    .locals 8

    new-instance v7, Lcom/android/settingslib/users/EditUserPhotoController;

    iget-object v4, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/settingslib/users/EditUserInfoController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/android/settingslib/drawable/CircleFramedDrawable;Z)V

    return-object v7
.end method

.method public getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    const-string p0, "no_set_user_icon"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public isChangePhotoRestrictedByBase(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "no_set_user_icon"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method
