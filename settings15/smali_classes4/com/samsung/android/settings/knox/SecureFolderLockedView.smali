.class public Lcom/samsung/android/settings/knox/SecureFolderLockedView;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

.field public mDeviceHasSoftKeys:Z

.field public mEffectiveUserId:I

.field public mHasEnteredWrongLastAttempt:Z

.field public mIsFromResetButton:Z

.field public mIsInMultiWindowMode:Z

.field public mKnoxEventList:Ljava/util/ArrayList;

.field public final mLockEventReceiver:Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field public mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->NONE:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mDeviceHasSoftKeys:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mLockEventReceiver:Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;

    return-void
.end method


# virtual methods
.method public final callSamsungAccountConfirmationPage(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.knox.securefolder"

    const-string v2, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardSamsungAccountBridge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "isFromForgotButton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasSamsungAccount(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "hasSAccount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "sa_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "userId"

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x2711

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception24 : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "KKG::SecureFolderLockedView"

    invoke-static {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/CloneBackend$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final initLockedView()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const v0, 0x7f0a091e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v2, 0x3e8

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getInflatedLayoutType(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0809df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0809e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v0, 0x7f0a0912

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v5

    :goto_2
    const v6, 0x7f0a0843

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    if-nez v3, :cond_5

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v3

    iget-object v7, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v7}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v0, v3, v1, v7, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    const-string v7, "KKG::SecureFolderLockedView"

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v0, :cond_8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v8, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v9}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result v9

    const/16 v10, 0x3e9

    if-le v8, v9, :cond_6

    move v8, v10

    goto :goto_3

    :cond_6
    move v8, v2

    :goto_3
    if-ne v8, v2, :cond_7

    const-string v2, "PORTRAIT"

    goto :goto_4

    :cond_7
    const-string v2, "LANDSCAPE"

    :goto_4
    const-string v9, "Inflated layout is : "

    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v8, v10, :cond_8

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    int-to-double v8, v3

    const-wide v10, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_8
    const v2, 0x7f0a0842

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz v2, :cond_b

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_9

    if-ne v0, v4, :cond_a

    :cond_9
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_5
    const v0, 0x7f0a0841

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    const v0, 0x7f0a0845

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    const v0, 0x7f0a0847

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a0848

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a06db

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0e26

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0e27

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget v9, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v10, "samsungaccount"

    invoke-static {v8, v10, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v9

    invoke-static {p0, v9}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_e

    iget-object v10, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object v11, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v12, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v11, v12, v10}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f14290f

    invoke-virtual {v10, v12, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    if-eqz v2, :cond_15

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v5, :cond_14

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v10, 0x2

    if-eq v0, v10, :cond_12

    const/4 v3, 0x4

    const v10, 0x7f1412d5

    if-eq v0, v3, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    sget-object v3, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eq v0, v3, :cond_f

    const-string v0, "Something was terribly wrong. Give UNINSTALL button to user!"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v8}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f1412cc

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f143026

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_10
    const-string/jumbo p0, "uninstallBtn should not be null !"

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const v1, 0x7f1412cf

    filled-new-array {v9, v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060afc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const v1, 0x7f1412c7

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const v1, 0x7f1410b7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1412c9

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;I)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_13
    const-string p0, "accountBtn should not be null !"

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_14
    const-string p0, "lockedBtn should not be null!"

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_6
    return-void
.end method

.method public final initSFLockState()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasSamsungAccount(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSAccountLock(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSAccountLock(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "initLockState : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KKG::SecureFolderLockedView"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p3, "ResultCode = "

    const-string v0, ", RequestCode = "

    const-string v1, "KKG::SecureFolderLockedView"

    invoke-static {p3, v0, p2, p1, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initSFLockState()V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    sget-object p2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    sget-object p3, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eq p1, p3, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initLockedView()V

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.INTENT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/content/IntentSender;

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    const-string p1, "IntentSender is null : "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception launching intent : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-ne p1, p3, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_5
    if-ne p1, p2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initLockedView()V

    goto :goto_3

    :cond_6
    const-string p0, "This should not be executed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    sget-object p0, Lcom/samsung/android/settings/knox/KnoxUtils;->mDeviceType:Ljava/lang/String;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "KKG::SecureFolderLockedView"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "userId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromResetBtn"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "wasLastAttempt"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mEffectiveUserId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromResetBtn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wasLastAttempt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "android"

    const-string v4, "config_showNavigationBar"

    const-string v5, "bool"

    invoke-virtual {v1, v4, v5, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mDeviceHasSoftKeys:Z

    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mLockEventReceiver:Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initSFLockState()V

    const v0, 0x7f0d0aad

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0607b2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    const v0, 0x7f0a0842

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSecureFolderLogo(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    const v2, 0x7f0a0849

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v1, 0x7f0a084c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0704c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mDeviceHasSoftKeys:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mDeviceHasSoftKeys:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_4
    :goto_1
    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->callSamsungAccountConfirmationPage(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initLockedView()V

    :goto_2
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mLockEventReceiver:Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Lcom/samsung/android/settings/knox/SecureFolderLockedView;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "fromResetBtn"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    const-string/jumbo v0, "wasLastAttempt"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "KKG::SecureFolderLockedView"

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "fromResetBtn"

    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "wasLastAttempt"

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
