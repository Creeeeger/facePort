.class public final Lcom/android/settingslib/users/CreateUserDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

.field public mCachedDrawablePath:Ljava/lang/String;

.field public mCancelCallback:Ljava/lang/Runnable;

.field public mCurrentState:I

.field public mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

.field public mEditUserInfoView:Landroid/view/View;

.field public mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

.field public mGrantAdminView:Landroid/view/View;

.field public mIsAdmin:Ljava/lang/Boolean;

.field public mMaxToast:Landroid/widget/Toast;

.field public mNewUserIcon:Landroid/graphics/drawable/Drawable;

.field public mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

.field public mSavedName:Ljava/lang/String;

.field public mSavedPhoto:Landroid/graphics/Bitmap;

.field public mSuccessCallback:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;

.field public mUserCreationDialog:Landroid/app/Dialog;

.field public mUserName:Ljava/lang/String;

.field public mUserNameView:Landroid/widget/EditText;

.field public mWaitingForActivityResult:Z


# virtual methods
.method public final createDialog(Landroidx/fragment/app/FragmentActivity;Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda10;ZLcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda4;)Landroid/app/Dialog;
    .locals 2

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/settingslib/utils/CustomDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iput-object p4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;

    iput-object p5, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCancelCallback:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0d0433

    const/4 p4, 0x0

    invoke-static {p1, p2, p4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p2, p2, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    const p2, 0x7f0a0372

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    new-instance p2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p5, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p5, 0x1

    if-eqz p2, :cond_0

    const p2, 0x7f0a06e1

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0a06df

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0d0219

    invoke-static {p1, p2, p4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p2, p2, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    const p2, 0x7f0a10db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    iget-object p4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    if-nez p4, :cond_2

    const p4, 0x7f143120

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p4, 0x0

    const/16 v0, 0x20

    if-le p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-array p2, p5, [Landroid/text/InputFilter;

    new-instance v0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroidx/fragment/app/FragmentActivity;)V

    aput-object v0, p2, p4

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string p2, "disableImage=true"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    new-instance p2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/widget/EditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, Lcom/android/settingslib/users/CreateUserDialogController$2;

    invoke-direct {p2, p0}, Lcom/android/settingslib/users/CreateUserDialogController$2;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    const p2, 0x7f0a10dc

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/16 v0, -0x2710

    invoke-static {p2, v0, p4}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    if-eqz p4, :cond_4

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p2

    new-instance p4, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda6;

    invoke-direct {p4, p0}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    check-cast p2, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {p2, p4}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p4, Lcom/android/settingslib/users/CreateUserDialogController$1;

    invoke-direct {p4, p1}, Lcom/android/settingslib/users/CreateUserDialogController$1;-><init>(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v1, p2, p4}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p2, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/users/CreateUserDialogController;->isChangePhotoRestrictedByBase(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    const p2, 0x7f0a009c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/users/CreateUserDialogController;->getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p4, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda4;

    invoke-direct {p4, p0, p2}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/settingslib/users/CreateUserDialogController;->createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    :goto_3
    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    new-instance p2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p3, p4}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V

    const/4 p4, 0x6

    const v0, 0x7f141979

    invoke-virtual {p1, p4, v0, p2}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    new-instance p2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p3, p4}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V

    const/4 p3, 0x5

    const p4, 0x7f14054e

    invoke-virtual {p1, p3, p4, p2}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p1, p1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    new-instance p2, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p1, p1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    const/16 p2, 0xa

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;
    .locals 8

    new-instance v7, Lcom/android/settingslib/users/EditUserPhotoController;

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/users/EditUserPhotoController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/users/ActivityStarter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/android/settingslib/drawable/CircleFramedDrawable;Z)V

    return-object v7
.end method

.method public final finish()V
    .locals 5

    iget v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mNewUserIcon:Landroid/graphics/drawable/Drawable;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;->f$0:Lcom/android/settings/users/UserSettings;

    iput-object v2, v4, Lcom/android/settings/users/UserSettings;->mPendingUserIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v4, Lcom/android/settings/users/UserSettings;->mPendingUserName:Ljava/lang/CharSequence;

    iput-boolean v3, v4, Lcom/android/settings/users/UserSettings;->mPendingUserIsAdmin:Z

    iget v0, v0, Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;->f$1:I

    invoke-virtual {v4, v0}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCancelCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedPhoto:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedDrawable:Lcom/android/settingslib/drawable/CircleFramedDrawable;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/settings/users/UserSettings$$ExternalSyntheticLambda15;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCancelCallback:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    return-void
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

.method public final updateLayout()V
    .locals 11

    iget v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/16 v2, 0x8

    const v3, 0x7f141979

    const/4 v4, 0x7

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_6

    const v9, 0x7f14054e

    if-eq v0, v8, :cond_5

    if-eq v0, v6, :cond_4

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

    const v2, 0x7f143120

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

    invoke-virtual {v0, v7, v7}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v6, v7}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v5, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v2, v7}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v4, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    const v1, 0x7f143117

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x7f140d53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {v0, v7, v7}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v6, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v5, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v2, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0, v4, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f080338

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v4, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f143113

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    const v1, 0x7f143112

    invoke-virtual {v0, v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setMessage(I)V

    iget-object v1, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object v0, v0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_add_user_long_message_displayed"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_7

    const v10, 0x7f1430d6

    goto :goto_2

    :cond_7
    const v10, 0x7f1430d5

    :goto_2
    if-nez v9, :cond_8

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f080568

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-virtual {v1, v7, v7}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v8, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v6, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v5, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v2, v8}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1, v4, v7}, Lcom/android/settingslib/utils/CustomDialogHelper;->setVisibility(IZ)V

    invoke-virtual {v1}, Lcom/android/settingslib/utils/CustomDialogHelper;->setupDialogPaddings()V

    iget-object v4, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f1430d8

    invoke-virtual {v1, v0}, Lcom/android/settingslib/utils/CustomDialogHelper;->setTitle(I)V

    invoke-virtual {v1, v10}, Lcom/android/settingslib/utils/CustomDialogHelper;->setMessage(I)V

    iget-object v0, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mNegativeButton:Landroid/widget/Button;

    const v4, 0x7f1408bf

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v0, v1, Lcom/android/settingslib/utils/CustomDialogHelper;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogTitle:Landroidx/appcompat/widget/DialogTitle;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p0, p0, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_a
    :goto_3
    return-void
.end method
