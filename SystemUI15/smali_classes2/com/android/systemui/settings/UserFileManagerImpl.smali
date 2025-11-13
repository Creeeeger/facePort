.class public final Lcom/android/systemui/settings/UserFileManagerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserFileManager;
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final Companion:Lcom/android/systemui/settings/UserFileManagerImpl$Companion;


# instance fields
.field public final backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/android/systemui/settings/UserFileManagerImpl$broadcastReceiver$1;

.field public final context:Landroid/content/Context;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/settings/UserFileManagerImpl;->Companion:Lcom/android/systemui/settings/UserFileManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->userManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p4, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Lcom/android/systemui/settings/UserFileManagerImpl$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/UserFileManagerImpl$broadcastReceiver$1;-><init>(Lcom/android/systemui/settings/UserFileManagerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->broadcastReceiver:Lcom/android/systemui/settings/UserFileManagerImpl$broadcastReceiver$1;

    return-void
.end method

.method public static final access$deleteFiles(Lcom/android/systemui/settings/UserFileManagerImpl;Ljava/io/File;)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    sget-object v2, Lcom/android/systemui/settings/UserFileManagerImpl;->Companion:Lcom/android/systemui/settings/UserFileManagerImpl$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "__USER_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/settings/UserFileManagerImpl$deleteFiles$filesToDelete$1;

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/UserFileManagerImpl$deleteFiles$filesToDelete$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    const-string v0, "UserFileManagerImpl"

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Empty directory: "

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    array-length p1, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Deleting file: "

    invoke-static {v4, v3, v0}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "Deletion failed."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    return-void
.end method

.method public static deleteParentDirsIfEmpty(Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserFileManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->deleteParentDirsIfEmpty(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public static migrate(Ljava/io/File;Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v0}, Lcom/android/systemui/settings/UserFileManagerImpl;->deleteParentDirsIfEmpty(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to rename and delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserFileManagerImpl"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearDeletedUserData$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V
    .locals 1

    new-instance v0, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/UserFileManagerImpl$clearDeletedUserData$1;-><init>(Lcom/android/systemui/settings/UserFileManagerImpl;)V

    iget-object p0, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getFile(ILjava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/settings/UserFileManagerImpl;->Companion:Lcom/android/systemui/settings/UserFileManagerImpl$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1}, Landroid/os/UserHandle;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "UserFileManager"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "files"

    filled-new-array {v1, p1, v2, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {v0, p0}, Lcom/android/systemui/settings/UserFileManagerImpl;->migrate(Ljava/io/File;Ljava/io/File;)V

    :cond_1
    return-object v0
.end method

.method public final getSharedPreferences$1(ILjava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5

    sget-object v0, Lcom/android/systemui/settings/UserFileManagerImpl;->Companion:Lcom/android/systemui/settings/UserFileManagerImpl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/systemui/settings/UserFileManagerImpl$Companion;->createFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    const-string v2, ".xml"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    const-string/jumbo v4, "shared_prefs"

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "UserFileManager"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1, v4, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2, p1}, Lcom/android/systemui/settings/UserFileManagerImpl;->migrate(Ljava/io/File;Ljava/io/File;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public final start()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserFileManagerImpl;->clearDeletedUserData$frameworks__base__packages__SystemUI__android_common__SystemUI_core()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->broadcastReceiver:Lcom/android/systemui/settings/UserFileManagerImpl$broadcastReceiver$1;

    iget-object v3, p0, Lcom/android/systemui/settings/UserFileManagerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const/4 v4, 0x0

    const/16 v7, 0x38

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method
