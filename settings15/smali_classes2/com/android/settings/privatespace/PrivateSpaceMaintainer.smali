.class public final Lcom/android/settings/privatespace/PrivateSpaceMaintainer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mProfileBroadcastReceiver:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;

.field public mUserHandle:Landroid/os/UserHandle;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mremoveSettingsAllTasks(Lcom/android/settings/privatespace/PrivateSpaceMaintainer;)V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->isFocused:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;
    .locals 2

    const-class v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->sPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-direct {v1, p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->sPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->sPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized createPrivateSpace()Z
    .locals 7

    const-string v0, "Private space created with id: "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    const-string v4, "Private space"

    const-string v5, "android.os.usertype.profile.PRIVATE"

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/UserManager;->createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    :try_start_3
    const-string v0, "PrivateSpaceMaintainer"

    const-string v1, "Failed to create private space"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->registerBroadcastReceiver()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->startProfile(Landroid/os/UserHandle;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected that "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not a profile"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PrivateSpaceMaintainer"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    const-string v0, "PrivateSpaceMaintainer"

    const-string v1, "profile not started, created profile is deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->deletePrivateSpace()Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    :try_start_7
    const-string v1, "PrivateSpaceMaintainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->setHidePrivateSpaceEntryPointSetting(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->setPrivateSpaceAutoLockSetting(I)V

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v4, "lock_screen_allow_private_notifications"

    invoke-static {v0, v4, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "PrivateSpaceMaintainer"

    const-string v1, "setting USER_SETUP_COMPLETE = 1 for private profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "user_setup_complete"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "PrivateSpaceMaintainer"

    const-string v1, "setting SKIP_FIRST_USE_HINTS = 1 for private profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "skip_first_use_hints"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->disableComponentsToHidePrivateSpaceSettings()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "PrivateSpaceMaintainer"

    const-string v3, "Error creating private space"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    :goto_1
    monitor-exit p0

    return v3

    :cond_5
    :goto_2
    monitor-exit p0

    return v2

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized deletePrivateSpace()Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;
    .locals 3

    const-string v0, "Deleting Private space with id: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->DELETE_PS_ERROR_NO_PRIVATE_SPACE:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    const-string v1, "PrivateSpaceMaintainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PrivateSpaceMaintainer"

    const-string v1, "Private space deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    sget-object v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->DELETE_PS_ERROR_NONE:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v0, "PrivateSpaceMaintainer"

    const-string v1, "Failed to delete private space"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_3
    const-string v1, "PrivateSpaceMaintainer"

    const-string v2, "Error deleting private space"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    sget-object v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;->DELETE_PS_ERROR_INTERNAL:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ErrorDeletingPrivateSpace;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final disableComponentsToHidePrivateSpaceSettings()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    const-string v1, "PrivateSpaceMaintainer"

    if-nez v0, :cond_0

    const-string p0, "User handle null while hiding settings icon"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Hiding settings app launcher icon for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->disableComponentsToHideSettings(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method public final declared-synchronized doesPrivateSpaceExist()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->registerBroadcastReceiver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return v1

    :cond_4
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPrivateProfileHandle()Landroid/os/UserHandle;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProfileBroadcastReceiver()Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PrivateSpaceMaintainer"

    const-string v2, "Cannot return a broadcast receiver when private space doesn\'t exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mProfileBroadcastReceiver:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;-><init>(Lcom/android/settings/privatespace/PrivateSpaceMaintainer;)V

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mProfileBroadcastReceiver:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mProfileBroadcastReceiver:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPrivateProfileRunning()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isPrivateSpaceLocked()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized registerBroadcastReceiver()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getProfileBroadcastReceiver()Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PROFILE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;->this$0:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    iget-object v2, v2, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetBroadcastReceiver()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mProfileBroadcastReceiver:Lcom/android/settings/privatespace/PrivateSpaceMaintainer$ProfileBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setHidePrivateSpaceEntryPointSetting(I)V
    .locals 2

    const-string v0, "Setting HIDE_PRIVATE_SPACE_ENTRY_POINT = "

    const-string v1, "PrivateSpaceMaintainer"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_privatespace_entry_point"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setPrivateSpaceAutoLockSetting(I)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->supportAutolockForPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "private_space_auto_lock"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
