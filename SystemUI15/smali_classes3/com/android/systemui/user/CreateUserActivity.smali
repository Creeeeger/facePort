.class public Lcom/android/systemui/user/CreateUserActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBackCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;

.field public final mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

.field public mSetupUserDialog:Landroid/app/Dialog;

.field public final mUserCreator:Lcom/android/systemui/user/UserCreator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserCreator;Lcom/android/settingslib/users/CreateUserDialogController;Landroid/app/IActivityManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance p5, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/user/CreateUserActivity;)V

    iput-object p5, p0, Lcom/android/systemui/user/CreateUserActivity;->mBackCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    iput-object p2, p0, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    iput-object p3, p0, Lcom/android/systemui/user/CreateUserActivity;->mActivityManager:Landroid/app/IActivityManager;

    iput-object p4, p0, Lcom/android/systemui/user/CreateUserActivity;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    iput-boolean v0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz p0, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x3ec

    if-ne p1, p2, :cond_2

    const-string p1, "default_icon_tint_color"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    iget-object v1, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    if-eqz p2, :cond_1

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;I)V

    check-cast v1, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;

    invoke-virtual {v1, p2}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$1;

    invoke-direct {p2, p0}, Lcom/android/settingslib/users/EditUserPhotoController$1;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;)V

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lcom/android/settingslib/users/EditUserPhotoController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;Landroid/net/Uri;)V

    check-cast v1, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;

    invoke-virtual {v1, p2}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/users/EditUserPhotoController$2;

    invoke-direct {p2, p0}, Lcom/android/settingslib/users/EditUserPhotoController$2;-><init>(Lcom/android/settingslib/users/EditUserPhotoController;)V

    iget-object p0, p0, Lcom/android/settingslib/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    const v1, 0x7f0d0022

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    iget-object v1, p0, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "pending_photo"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    const-string v3, "current_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    const-string v3, "admin_status"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    :cond_0
    const-string/jumbo v3, "saved_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    const-string v3, "awaiting_result"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    :cond_1
    const p1, 0x7f140604

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    const p1, 0x7f13142b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_is_keyguard_showing"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/user/CreateUserActivity;)V

    iget-object v5, p0, Lcom/android/systemui/user/CreateUserActivity;->mUserCreator:Lcom/android/systemui/user/UserCreator;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/UserManager;->isMultipleAdminEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v5, Lcom/android/systemui/user/UserCreator;->userManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    new-instance v5, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/user/CreateUserActivity;)V

    new-instance v6, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/user/CreateUserActivity;I)V

    iput-object p0, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    new-instance v7, Lcom/android/settingslib/utils/CustomDialogHelper;

    invoke-direct {v7, p0}, Lcom/android/settingslib/utils/CustomDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v7, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iput-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mSuccessCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    iput-object v6, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCancelCallback:Ljava/lang/Runnable;

    iput-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivityStarter:Lcom/android/settingslib/users/ActivityStarter;

    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0d011e

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    iget-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object v5, v5, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mGrantAdminView:Landroid/view/View;

    const v5, 0x7f0a0291

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    new-instance v5, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0a049b

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f0a0499

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    :goto_1
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0d00fa

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    iget-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object v5, v5, Lcom/android/settingslib/utils/CustomDialogHelper;->mCustomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    const v5, 0x7f0a0df9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    iget-object v6, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mSavedName:Ljava/lang/String;

    if-nez v6, :cond_5

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_6

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    new-array v4, v0, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;

    iget-object v7, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v1, v7, v5}, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/app/Activity;I)V

    aput-object v6, v4, v2

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v4, "disableImage=true"

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    new-instance v4, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, p1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/widget/EditText;)V

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v4, Lcom/android/settingslib/users/CreateUserDialogController$2;

    invoke-direct {v4, v1}, Lcom/android/settingslib/users/CreateUserDialogController$2;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    const v4, 0x7f0a0dfa

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, -0x2710

    invoke-static {v4, v5, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getBackgroundExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda6;

    invoke-direct {v5, v1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    check-cast v4, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;

    invoke-virtual {v4, v5}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/users/CreateUserDialogController$1;

    invoke-direct {v5, v1, p1}, Lcom/android/settingslib/users/CreateUserDialogController$1;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/widget/ImageView;)V

    iget-object v6, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v7, v4, v5}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {v4, v7, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/users/CreateUserDialogController;->isChangePhotoRestrictedByBase(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserInfoView:Landroid/view/View;

    const v4, 0x7f0a00ab

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object v4, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/users/CreateUserDialogController;->getChangePhotoAdminRestriction(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v5, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1, v4}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v1, p1}, Lcom/android/settingslib/users/CreateUserDialogController;->createEditUserPhotoController(Landroid/widget/ImageView;)Lcom/android/settingslib/users/EditUserPhotoController;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    :goto_4
    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    new-instance v4, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V

    const/4 v5, 0x6

    const v6, 0x7f130ce8

    invoke-virtual {p1, v5, v6, v4}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    new-instance v4, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v3, v5}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;ZI)V

    const/4 v3, 0x5

    const v5, 0x7f1301d9

    invoke-virtual {p1, v3, v5, v4}, Lcom/android/settingslib/utils/CustomDialogHelper;->setButton(IILandroid/view/View$OnClickListener;)V

    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p1, p1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialog:Landroid/app/Dialog;

    iput-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Lcom/android/settingslib/users/CreateUserDialogController;->updateLayout()V

    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/settingslib/users/CreateUserDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/users/CreateUserDialogController;)V

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mCustomDialogHelper:Lcom/android/settingslib/utils/CustomDialogHelper;

    iget-object p1, p1, Lcom/android/settingslib/utils/CustomDialogHelper;->mDialogMessage:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, v1, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity;->mBackCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;

    invoke-interface {p1, v2, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/user/CreateUserActivity;->mBackCallback:Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "create_user_dialog_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mSetupUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "create_user_dialog_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/user/CreateUserActivity;->mCreateUserDialogController:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserCreationDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mEditUserPhotoController:Lcom/android/settingslib/users/EditUserPhotoController;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v1, v1, Lcom/android/settingslib/users/EditUserPhotoController;->mCachedDrawablePath:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCachedDrawablePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "pending_photo"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mIsAdmin:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "admin_status"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v1, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mUserNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "saved_name"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "current_state"

    iget v2, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mCurrentState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "awaiting_result"

    iget-boolean v0, v0, Lcom/android/settingslib/users/CreateUserDialogController;->mWaitingForActivityResult:Z

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
