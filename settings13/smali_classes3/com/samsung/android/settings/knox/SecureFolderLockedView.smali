.class public Lcom/samsung/android/settings/knox/SecureFolderLockedView;
.super Landroid/app/Activity;
.source "SecureFolderLockedView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDeviceHasSoftKeys:Z

.field private mEffectiveUserId:I

.field private mHasEnteredWrongLastAttempt:Z

.field private mIsFromResetButton:Z

.field private mIsInMultiWindowMode:Z

.field private mIsJPNModel:Z

.field private mKnoxEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffectiveUserId(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInMultiWindowMode(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKnoxEventList(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlertDialog(Lcom/samsung/android/settings/knox/SecureFolderLockedView;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallSamsungAccountConfirmationPage(Lcom/samsung/android/settings/knox/SecureFolderLockedView;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->callSamsungAccountConfirmationPage(ZI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "KKG::SecureFolderLockedView"

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->TAG:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->NONE:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mDeviceHasSoftKeys:Z

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 82
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsJPNModel:Z

    return-void
.end method

.method private addWindowFlagsForWorkProfile(Landroid/view/Window;)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 558
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 559
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 561
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 564
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 565
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 566
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 569
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x40

    .line 577
    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const p0, 0x3e0ccccd    # 0.1375f

    .line 578
    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 p0, 0x2

    .line 579
    invoke-virtual {p1, p0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 570
    :cond_1
    :goto_0
    sget v2, Lcom/android/settings/R$id;->backgroundBlur:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    .line 572
    new-instance v2, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v2, v0}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v3, 0x78

    .line 573
    invoke-virtual {v2, v3}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    const-string v3, "#990e0e0e"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v2

    .line 574
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    .line 581
    :cond_2
    :goto_1
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x100000

    .line 582
    invoke-virtual {p1, p0, p0}, Landroid/view/Window;->setFlags(II)V

    .line 583
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private callSamsungAccountConfirmationPage(ZI)V
    .locals 3

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.knox.securefolder"

    const-string v2, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardSamsungAccountBridge"

    .line 504
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x8000

    .line 505
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v1, "isFromForgotButton"

    .line 507
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasSamsungAccount(Landroid/content/Context;)Z

    move-result p1

    const-string v1, "hasSAccount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "sa_state"

    .line 509
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    iget p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    const-string p2, "userId"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x2711

    .line 512
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception24 : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::SecureFolderLockedView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private drawSecureFolderLogo()V
    .locals 2

    .line 551
    sget v0, Lcom/android/settings/R$id;->knoxLogo:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 552
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSecureFolderLogo(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getInflatedLayoutType()I
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getActivityScreenHeight(Landroid/content/Context;)I

    move-result p0

    const/16 v1, 0x3e8

    if-le v0, p0, :cond_0

    const/16 p0, 0x3e9

    goto :goto_0

    :cond_0
    move p0, v1

    .line 267
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflated layout is : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v1, :cond_1

    const-string v1, "PORTRAIT"

    goto :goto_1

    :cond_1
    const-string v1, "LANDSCAPE"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KKG::SecureFolderLockedView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private initLockedView()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mWindow:Landroid/view/Window;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->addWindowFlagsForWorkProfile(Landroid/view/Window;)V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->updateLockedView()V

    return-void
.end method

.method private initSFLockState()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 237
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    .line 238
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->hasSamsungAccount(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->isResetWithSamsungAccountEnable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSAccountLock(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    goto :goto_0

    .line 243
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSAccountLock(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    goto :goto_0

    .line 248
    :cond_2
    sget-object v1, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    .line 251
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->setSFLockState(Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;)V

    return-void
.end method

.method private isInLandscapeMode()Z
    .locals 2

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private setSFLockState(Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;)V
    .locals 1

    .line 255
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initLockState : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KKG::SecureFolderLockedView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setWallpaperIfNeeded(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isWallpaperResourceRequired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDefaultWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    .line 193
    sget v0, Lcom/android/settings/R$id;->background_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x2

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p1, p0, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 197
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->supportBlur()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 199
    new-instance p0, Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemGfxImageFilter;-><init>()V

    const/high16 v0, 0x43160000    # 150.0f

    .line 200
    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    .line 201
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    :cond_0
    return-void
.end method

.method private startIntentSender()V
    .locals 8

    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/IntentSender;

    const-string v0, "KKG::SecureFolderLockedView"

    if-eqz v2, :cond_0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 213
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v1, "IntentSender is null : "

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 219
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception launching intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private updateLockedView()V
    .locals 15

    .line 272
    sget v0, Lcom/android/settings/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 273
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    sget v0, Lcom/android/settings/R$id;->mainLinearLayout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->isInLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    if-nez v2, :cond_0

    .line 277
    sget v2, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 278
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    .line 282
    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 283
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 284
    iget-object v3, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 285
    sget v4, Lcom/android/settings/R$id;->knoxLogoLayout:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->getInflatedLayoutType()I

    move-result v4

    const/16 v5, 0x3e9

    if-eq v4, v5, :cond_1

    .line 287
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v4, v2

    const-wide v6, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 288
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 292
    :cond_1
    sget v2, Lcom/android/settings/R$id;->knoxLogo:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->isInLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 295
    :cond_3
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :cond_4
    :goto_1
    sget v0, Lcom/android/settings/R$id;->knoxLockedLogo:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 303
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :cond_5
    sget v0, Lcom/android/settings/R$id;->knoxTitleText:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const-string v2, ""

    .line 308
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :cond_6
    sget v0, Lcom/android/settings/R$id;->knox_locked:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 313
    sget v2, Lcom/android/settings/R$id;->knox_locked_notice:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 314
    sget v4, Lcom/android/settings/R$id;->go_to_saccount:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 315
    sget v5, Lcom/android/settings/R$id;->sf_locked_bottom_btn:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 316
    sget v6, Lcom/android/settings/R$id;->sf_uninstall_bottom_btn:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 317
    iget-object v7, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v7, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->getSamsungAccount(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v8

    invoke-static {p0, v8}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v0, :cond_7

    .line 321
    iget-object v10, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->secure_folder_locked:I

    new-array v12, v9, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v14, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v13, v14, v10}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    if-eqz v2, :cond_11

    .line 326
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "KKG::SecureFolderLockedView"

    if-eqz v5, :cond_10

    .line 328
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    sget-object v10, Lcom/samsung/android/settings/knox/SecureFolderLockedView$9;->$SwitchMap$com$samsung$android$settings$knox$KnoxUtils$InitLockState:[I

    iget-object v11, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v9, :cond_d

    const/4 v3, 0x2

    if-eq v10, v3, :cond_b

    .line 396
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    sget-object v8, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_REMOVED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eq v4, v8, :cond_8

    const-string v4, "Something was terribly wrong. Give UNINSTALL button to user!"

    .line 397
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v6, :cond_a

    .line 400
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsJPNModel:Z

    if-eqz v0, :cond_9

    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->keyguard_locked_reset_removed_account_jpn:I

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v7, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 404
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->keyguard_locked_reset_removed_account_msg:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget v10, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v8, v10, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    aput-object v7, v3, v9

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :goto_2
    sget v0, Lcom/android/settings/R$string;->keyguard_sign_in:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 407
    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$4;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    sget v0, Lcom/android/settings/R$string;->uninstall:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 421
    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$5;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_a
    const-string p0, "uninstallBtn should not be null !"

    .line 431
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 372
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsJPNModel:Z

    if-eqz v0, :cond_c

    .line 373
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->keyguard_locked_reset_unchanged_account_sf_jpn:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v1

    aput-object v8, v3, v9

    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 375
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->keyguard_locked_reset_unchanged_account_sf:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v1

    aput-object v8, v3, v9

    invoke-virtual {v0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->themeDefaultTextColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    sget v0, Lcom/android/settings/R$string;->keyguard_sign_in:I

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 380
    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$3;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_d
    if-eqz v4, :cond_f

    .line 334
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsJPNModel:Z

    if-eqz v0, :cond_e

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->keyguard_locked_reset_changed_account_b2c_galaxy:I

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v7, v10, v1

    invoke-virtual {v0, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->go_to_samsungAccount_galaxy:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 339
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->keyguard_locked_reset_changed_account_b2c:I

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v7, v10, v1

    invoke-virtual {v0, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->go_to_samsungAccount:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_4
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 343
    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$1;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    sget v0, Lcom/android/settings/R$string;->keyguard_locked_reset_changed_account_sf_close:I

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v0, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$2;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_f
    const-string p0, "accountBtn should not be null !"

    .line 368
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_10
    const-string p0, "lockedBtn should not be null!"

    .line 436
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_5
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 520
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 521
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ResultCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", RequestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "KKG::SecureFolderLockedView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_7

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initSFLockState()V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_6

    .line 525
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 535
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    sget-object p2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initLockedView()V

    goto :goto_2

    .line 537
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->startIntentSender()V

    goto :goto_2

    .line 526
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    sget-object p2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFIED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-ne p1, p2, :cond_4

    .line 528
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 529
    :cond_4
    sget-object p2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->SA_CHANGED_LOCK:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-ne p1, p2, :cond_5

    .line 530
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initLockedView()V

    goto :goto_2

    :cond_5
    const-string p0, "This should not be executed"

    .line 532
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 543
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 546
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mSFLockState:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    sget-object v2, Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;->VERIFICATION_FAILED:Lcom/samsung/android/settings/knox/KnoxUtils$InitLockState;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 229
    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 230
    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    const/4 p0, 0x0

    .line 231
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->switchToProfile(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "KKG::SecureFolderLockedView"

    const-string v1, "onCreate"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    .line 98
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 99
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "userId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromResetBtn"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wasLastAttempt"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEffectiveUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fromResetBtn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", wasLastAttempt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_showNavigationBar"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mDeviceHasSoftKeys:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initSFLockState()V

    .line 109
    sget v0, Lcom/android/settings/R$layout;->secure_folder_locked_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mWindow:Landroid/view/Window;

    .line 112
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->secure_folder_background_color:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->drawSecureFolderLogo()V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->updateLayoutDetails()Z

    if-nez p1, :cond_0

    .line 119
    iget-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 121
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->callSamsungAccountConfirmationPage(ZI)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->initLockedView()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 589
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 591
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mKnoxEventList:Ljava/util/ArrayList;

    iget p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mEffectiveUserId:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/knox/KnoxSamsungAnalyticsLogger;->send(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "fromResetBtn"

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    const-string v0, "wasLastAttempt"

    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "KKG::SecureFolderLockedView"

    const-string v0, "onResume"

    .line 149
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsFromResetButton:Z

    const-string v1, "fromResetBtn"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mHasEnteredWrongLastAttempt:Z

    const-string v0, "wasLastAttempt"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public showUninstallDialog()V
    .locals 4

    .line 442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsJPNModel:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$string;->keyguard_locked_uninstall_popup_msg_jpn:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$string;->keyguard_locked_uninstall_popup_msg:I

    .line 445
    :goto_0
    sget v2, Lcom/android/settings/R$string;->bnr_secure_folder_backup_alert_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 446
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 447
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 448
    sget v2, Lcom/android/settings/R$string;->knox_uninstall_dialog_title:I

    new-instance v3, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$6;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    sget v2, Lcom/android/settings/R$string;->cancel:I

    new-instance v3, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$7;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    .line 484
    iget-object v2, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 486
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception29 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KKG::SecureFolderLockedView"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/settings/knox/SecureFolderLockedView$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView$8;-><init>(Lcom/samsung/android/settings/knox/SecureFolderLockedView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 499
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateLayoutDetails()Z
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 162
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 164
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mIsInMultiWindowMode:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 165
    sget v1, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 166
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 167
    sget v1, Lcom/android/settings/R$id;->knox_secure_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 168
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->knox_logo_height_multiwindow:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 170
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->isInLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    sget v1, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 173
    iget-boolean v4, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mDeviceHasSoftKeys:Z

    if-eqz v4, :cond_3

    .line 174
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getDisplayRotation(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 175
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 180
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mDeviceHasSoftKeys:Z

    if-eqz v1, :cond_3

    .line 181
    sget v1, Lcom/android/settings/R$id;->knox_logo_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 182
    iget-object v4, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->getNavigationBarSize(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v3, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 184
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$color;->secure_folder_background_color:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/knox/SecureFolderLockedView;->setWallpaperIfNeeded(Landroid/view/View;)V

    return v2
.end method
