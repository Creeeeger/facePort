.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;
    }
.end annotation


# static fields
.field public static final greylist-max-o PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final greylist-max-o PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final greylist-max-o PACKAGE_UNCHANGED:I = 0x0

.field public static final greylist-max-o PACKAGE_UPDATING:I = 0x1

.field static final blacklist TAG:Ljava/lang/String; = "PackageMonitor"


# instance fields
.field greylist-max-o mAppearingPackages:[Ljava/lang/String;

.field greylist-max-o mChangeType:I

.field greylist-max-o mChangeUserId:I

.field greylist-max-o mDisappearingPackages:[Ljava/lang/String;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mModifiedComponents:[Ljava/lang/String;

.field greylist-max-o mModifiedPackages:[Ljava/lang/String;

.field blacklist mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

.field greylist-max-o mRegisteredContext:Landroid/content/Context;

.field greylist-max-o mRegisteredHandler:Landroid/os/Handler;

.field greylist-max-o mSomePackagesChanged:Z

.field final blacklist mSupportsPackageRestartQuery:Z

.field greylist-max-o mTempArray:[Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$bSKEInwdT6Kd7GAyzMZPsXTTqeQ(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;->lambda$postHandlePackageEvent$0(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostHandlePackageEvent(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;->postHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->packageRestartQueryDisabledByDefault()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    return-void
.end method

.method private blacklist getPackageFilter()Landroid/content/IntentFilter;
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    :cond_0
    return-object v1
.end method

.method private synthetic blacklist lambda$postHandlePackageEvent$0(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->doHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist postHandlePackageEvent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/content/PackageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/content/PackageMonitor;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o anyPackagesAppearing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o anyPackagesDisappearing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o didSomePackagesChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method public final blacklist doHandlePackageEvent(Landroid/content/Intent;)V
    .locals 13

    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent broadcast does not contain user handle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "android.intent.extra.REPLACING"

    const-string v6, "android.intent.extra.UID"

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v3, :cond_2

    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v8, v2

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinishedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    :cond_2
    goto/16 :goto_7

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v3, :cond_6

    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v8, v2

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    iput v7, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v3, v6, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStartedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    const-string v4, "android.intent.extra.ARCHIVAL"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v3, v6, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    const-string v4, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v6, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsersWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v2, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    :cond_6
    goto/16 :goto_7

    :cond_7
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    aput-object v3, v6, v2

    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    goto/16 :goto_7

    :cond_a
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v3, :cond_b

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageDataCleared(Ljava/lang/String;I)V

    :cond_b
    goto/16 :goto_7

    :cond_c
    const-string v3, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_e

    const-string v3, "android.intent.extra.PACKAGES"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iget-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    :cond_d
    goto/16 :goto_7

    :cond_e
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iget-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const/4 v11, 0x1

    move-object v7, p0

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z

    goto/16 :goto_7

    :cond_f
    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_7

    :cond_10
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v8, "android.intent.extra.changed_package_list"

    if-eqz v3, :cond_13

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    move v4, v7

    goto :goto_2

    :cond_11
    nop

    :goto_2
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v3, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_12

    aget-object v4, v3, v2

    iget v5, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    goto/16 :goto_7

    :cond_13
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    move v4, v7

    goto :goto_4

    :cond_14
    nop

    :goto_4
    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v3, :cond_15

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_5
    array-length v4, v3

    if-ge v2, v4, :cond_15

    aget-object v4, v3, v2

    iget v5, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    goto :goto_7

    :cond_16
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->onPackagesSuspended([Ljava/lang/String;)V

    goto :goto_7

    :cond_17
    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-boolean v7, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    invoke-virtual {p0, v2}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    const-string v3, "android.intent.action.PACKAGE_UNSTOPPED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    iput v4, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->onPackageUnstopped(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_7

    :cond_19
    :goto_6
    nop

    :goto_7
    iget-boolean v2, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    :cond_1a
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    iput v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return-void
.end method

.method public greylist-max-o getChangingUserId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return v0
.end method

.method greylist-max-o getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public greylist-max-o getRegisteredHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public greylist-max-o isComponentModified(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public greylist-max-o isPackageAppearing(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageDisappearing(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isPackageModified(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isReplacing()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public greylist-max-o onBeginPackageChanges()V
    .locals 0

    return-void
.end method

.method public greylist-max-o onFinishPackageChanges()V
    .locals 0

    return-void
.end method

.method public greylist-max-o onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZLandroid/os/Bundle;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageAddedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackageAppeared(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    array-length v1, p3

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public blacklist onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackageModified(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageModifiedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageRemovedAllUsersWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageRemovedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageStateChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageUnstopped(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageUpdateFinishedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public blacklist onPackageUpdateStartedWithExtras(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackagesAvailable([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackagesSuspended([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->doHandlePackageEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public greylist-max-o onSomePackagesChanged()V
    .locals 0

    return-void
.end method

.method public greylist-max-o onUidRemoved(I)V
    .locals 0

    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .locals 1

    nop

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    return-void
.end method

.method public greylist register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public blacklist register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;->getPackageFilter()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-direct {v1, p0}, Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;-><init>(Lcom/android/internal/content/PackageMonitor;)V

    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist unregister()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSupportsPackageRestartQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mPackageMonitorCallback:Lcom/android/internal/content/PackageMonitor$PackageMonitorCallback;

    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
