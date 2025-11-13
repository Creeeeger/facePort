.class public Lcom/android/systemui/popup/SamsungScreenPinningRequest;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# static fields
.field private static final PIN_WINDOWS_DEX:I = 0x0

.field private static final PIN_WINDOWS_EXCLUDED:I = 0x1

.field private static final PIN_WINDOWS_NORMAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SamsungScreenPinningRequest"


# instance fields
.field private mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mAppName:Ljava/lang/String;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsExcluded:Z

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mNavBarMode:I

.field private mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

.field public final mPinWindowsReceiver:Landroid/content/BroadcastReceiver;

.field private mTaskId:I

.field private mTouchExplorationEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$fYo6s-aeovrosYRivJ2P9GvTHlg(Lcom/android/systemui/popup/SamsungScreenPinningRequest;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->lambda$createDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;-><init>(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)V

    iput-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    sget-object p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    sget-object p1, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    iput-object p3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method

.method private createDialog(ILandroid/widget/LinearLayout;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    const v2, 0x7f140604

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    const v1, 0x7f130b1e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f130b1f

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f130b26

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f130b25

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const p1, 0x7f130b1d

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f130b1c

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/android/systemui/popup/SamsungScreenPinningRequest$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)V

    const p2, 0x7f130d5f

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const-string p2, "SamsungScreenPinningRequest"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private extractRecentTaskInfo(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v0, v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mAtm:Landroid/app/ActivityTaskManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "SamsungScreenPinningRequest"

    if-ge v3, v1, :cond_5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPackageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    iget v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget v7, v5, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    if-ne v7, p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    iget v3, v5, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v3, v6, :cond_2

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    iget-object v0, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New taskId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getContentsView()Landroid/widget/LinearLayout;
    .locals 5

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    const v4, 0x7f140604

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->hasNavigationBar(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    const v3, 0x7f0d0342

    goto :goto_1

    :cond_1
    const v3, 0x7f0d0344

    goto :goto_1

    :cond_2
    const v3, 0x7f0d0343

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->setPinWindowsOptionalText(ZLandroid/widget/LinearLayout;)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "navigationbar_key_order"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->setPinWindowsKeyImage(Landroid/widget/LinearLayout;I)V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->setPinWindowsGestureImage(Landroid/widget/LinearLayout;I)V

    :cond_3
    return-object v2
.end method

.method private hasNavigationBar(I)Z
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p1, "SamsungScreenPinningRequest"

    const-string v0, "hasNavigationBar failed"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    return-void
.end method

.method private setPinWindowsGestureImage(Landroid/widget/LinearLayout;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->onTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    const v0, 0x7f0a09db

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0621

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setPinWindowsKeyImage(Landroid/widget/LinearLayout;I)V
    .locals 4

    const v0, 0x7f0a0623

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a09de

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f080da9

    const v2, 0x7f080da8

    if-nez p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->hasNavigationBar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f060600

    goto :goto_2

    :cond_2
    const v2, 0x7f060601

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->hasNavigationBar(I)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz v2, :cond_5

    const/high16 p0, -0x40800000    # -1.0f

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    goto :goto_4

    :cond_4
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_5
    :goto_4
    return-void
.end method

.method private setPinWindowsOptionalText(ZLandroid/widget/LinearLayout;)V
    .locals 1

    const v0, 0x7f0a08e6

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->onTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->hasNavigationBar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p0, 0x7f130fc9

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    if-eqz p0, :cond_1

    const p0, 0x7f130b23

    goto :goto_0

    :cond_1
    const p0, 0x7f130b22

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTouchExplorationEnabled:Z

    if-eqz p0, :cond_3

    const p0, 0x7f130b21

    goto :goto_1

    :cond_3
    const p0, 0x7f130b20

    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public checkUnableToPin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public clearPrompt()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->unregisterReceivers()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->checkUnableToPin()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f130b27

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    invoke-interface {p1, p2}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mNavBarMode:I

    return-void
.end method

.method public onTouchExplorationEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerReceivers()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public showPrompt(IZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Old taskId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungScreenPinningRequest"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->extractRecentTaskInfo(I)V

    iput-object p3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mAppName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    iput p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->registerReceivers()V

    iget-boolean p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->createDialog(ILandroid/widget/LinearLayout;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->getContentsView()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->createDialog(ILandroid/widget/LinearLayout;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "New taskId: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mTaskId:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "mIsExcluded: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mIsExcluded:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->mPinWindowsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method
