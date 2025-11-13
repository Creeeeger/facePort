.class Landroid/permission/PermissionControllerService$1;
.super Landroid/permission/IPermissionController$Stub;
.source "PermissionControllerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permission/PermissionControllerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/permission/PermissionControllerService;


# direct methods
.method constructor blacklist <init>(Landroid/permission/PermissionControllerService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-direct {p0}, Landroid/permission/IPermissionController$Stub;-><init>()V

    return-void
.end method

.method private varargs blacklist enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v3, v2}, Landroid/permission/PermissionControllerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At lest one of the following permissions is required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$grantOrUpgradeDefaultRuntimePermissions$2(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$revokeRuntimePermissions$0(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "permissions"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    return-void
.end method

.method static synthetic blacklist lambda$revokeRuntimePermissions$1(Lcom/android/internal/infra/AndroidFuture;Ljava/util/Map;)V
    .locals 1

    new-instance v0, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$revokeSelfPermissionsOnKill$4(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$updateUserSensitiveForApp$3(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/permission/PermissionControllerService;->onApplyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist countPermissionApps(Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/internal/infra/AndroidFuture;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "permissionNames"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    const-string v0, "callback"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/permission/PermissionControllerService;->onCountPermissionApps(Ljava/util/List;ILjava/util/function/IntConsumer;)V

    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "writer"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {v0, p1, p2, p3}, Landroid/permission/PermissionControllerService;->access$000(Landroid/permission/PermissionControllerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getAppPermissions(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callback"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onGetAppPermissions(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist getGroupOfPlatformPermission(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onGetGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public blacklist getHibernationEligibility(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.MANAGE_APP_HIBERNATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onGetHibernationEligibility(Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public blacklist getPermissionUsages(ZJLcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    invoke-static {p2, p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    const-string v0, "callback"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p4}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/permission/PermissionControllerService;->onGetPermissionUsages(ZJLjava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist getPlatformPermissionsForGroup(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onGetPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public blacklist getPrivilegesDescriptionStringForProfile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.MANAGE_COMPANION_DEVICES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v0, p1}, Landroid/permission/PermissionControllerService;->getPrivilegesDescriptionStringForProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public blacklist getRuntimePermissionBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v0, v3}, Landroid/permission/PermissionControllerService;->onGetRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/OutputStream;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRuntimePermissionBackup timed out"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not open pipe to write backup to"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method public blacklist getUnusedAppCount(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.MANAGE_APP_HIBERNATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerService;->onGetUnusedAppCount(Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public blacklist grantOrUpgradeDefaultRuntimePermissions(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Calling onGrantOrUpgradeDefaultRuntimePermissions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerService;->onGrantOrUpgradeDefaultRuntimePermissions(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist notifyOneTimePermissionSessionTimeout(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v0, p1, p2}, Landroid/permission/PermissionControllerService;->onOneTimePermissionSessionTimeout(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "permissionName"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, p1, p2, v2}, Landroid/permission/PermissionControllerService;->onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "revokeRuntimePermission timed out"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist revokeRuntimePermissions(Landroid/os/Bundle;ZILjava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 7

    const-string v0, "bundleizedRequest"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "permissions"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v1}, Landroid/permission/PermissionControllerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {}, Landroid/permission/PermissionControllerService$1;->getCallingUid()I

    move-result v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    new-instance v6, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda2;

    invoke-direct {v6, p5}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/permission/PermissionControllerService;->onRevokeRuntimePermissions(Ljava/util/Map;ZILjava/lang/String;Ljava/util/function/Consumer;)V

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist revokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/android/internal/infra/AndroidFuture;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-virtual {v1}, Landroid/permission/PermissionControllerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    new-instance v3, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda5;

    invoke-direct {v3, p4}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/permission/PermissionControllerService;->onRevokeSelfPermissionsOnKill(Ljava/lang/String;Ljava/util/List;ILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p4, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public blacklist setRuntimePermissionGrantStateByDeviceAdminFromParams(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/permission/AdminPermissionControlParams;->getGrantState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/permission/AdminPermissionControlParams;->getGrantState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    :cond_1
    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p3}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/permission/PermissionControllerService;->onSetRuntimePermissionGrantStateByDeviceAdmin(Ljava/lang/String;Landroid/permission/AdminPermissionControlParams;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist stageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v1, "android.permission.RESTORE_RUNTIME_PERMISSIONS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, p1, v0, v3}, Landroid/permission/PermissionControllerService;->onStageAndApplyRuntimePermissionsBackup(Landroid/os/UserHandle;Ljava/io/InputStream;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "restoreRuntimePermissionBackup timed out"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Landroid/permission/PermissionControllerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not open pipe to read backup from"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    nop

    :goto_2
    return-void
.end method

.method public blacklist updateUserSensitiveForApp(ILcom/android/internal/infra/AndroidFuture;)V
    .locals 2

    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/permission/PermissionControllerService$1;->enforceSomePermissionsGrantedToCaller([Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroid/permission/PermissionControllerService$1;->this$0:Landroid/permission/PermissionControllerService;

    new-instance v1, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerService;->onUpdateUserSensitivePermissionFlags(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
