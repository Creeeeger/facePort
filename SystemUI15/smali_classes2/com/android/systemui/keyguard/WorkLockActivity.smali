.class public Lcom/android/systemui/keyguard/WorkLockActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBackCallback:Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mKgm:Landroid/app/KeyguardManager;

.field public final mLockEventReceiver:Lcom/android/systemui/keyguard/WorkLockActivity$1;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public workLockActivityHelper:Lcom/android/systemui/keyguard/WorkLockActivityHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/UserManager;Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->workLockActivityHelper:Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mBackCallback:Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/keyguard/WorkLockActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/WorkLockActivity$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Lcom/android/systemui/keyguard/WorkLockActivity$1;

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getBadgedIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mKgm:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public final getTargetUserId()I
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "DesktopModeService"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v0

    invoke-direct {p1, p0, p0, v0}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;I)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->workLockActivityHelper:Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Lcom/android/systemui/keyguard/WorkLockActivity$1;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->workLockActivityHelper:Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Lcom/android/systemui/util/DesktopManager;

    iget-object v3, p1, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0d052b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setContentView(I)V

    const v4, 0x7f0a0ce3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p1, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    const v4, 0x7f0a0ce2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "componentName"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget v6, p1, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mUserId:I

    if-nez v5, :cond_2

    :try_start_1
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v5}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "com.samsung.knox.securefolder/.launcher.view.LauncherActivityForDex"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_1
    const-string v5, "com.samsung.knox.securefolder/.launcher.view.LauncherActivity"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    :goto_0
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-interface {v8, v5, v9, v10, v6}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    const v10, 0x7f1313f0    # 1.9550004E38f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a0ce1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v5, v1, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    const-string v5, "WorkLockActivityHelper"

    const-string v6, "Failed to load icon and label"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    new-instance v4, Landroid/view/View;

    iget-object v5, p1, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->blankView:Landroid/view/View;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v4, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v2}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p1, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mwLockScreen:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;-><init>(Lcom/android/systemui/keyguard/WorkLockActivityHelper;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setOverlayWithDecorCaptionEnabled(Z)V

    const p1, 0x7f0d0044

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getBadgedIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    const v0, 0x7f0a0505

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mBackCallback:Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;

    invoke-interface {p1, v1, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->unregisterBroadcastReceiver()V

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mBackCallback:Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->workLockActivityHelper:Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->isblankView:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentblank(Z)V

    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "WorkLockActivity"

    const-string p1, "onWindowFocusChanged: returning without starting cdc"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->showConfirmCredentialActivity()V

    :cond_1
    return-void
.end method

.method public final setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    return-void
.end method

.method public final showConfirmCredentialActivity()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x54000000

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v5, -0x1

    invoke-static {p0, v5, v2, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->getTargetUserId()I

    move-result v1

    :try_start_0
    const-string v2, "password_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_3

    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {v1, v3, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    const-string v2, "android.app.KeyguardManager.FORCE_TASK_OVERLAY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "knox.container.proxy.EXTRA_TASK_ID"

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mLockEventReceiver:Lcom/android/systemui/keyguard/WorkLockActivity$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivity;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
