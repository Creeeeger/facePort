.class public Landroid/app/ActivityClient;
.super Ljava/lang/Object;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityClient$ActivityClientControllerSingleton;
    }
.end annotation


# static fields
.field private static final blacklist INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/ActivityClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/app/ActivityClient$1;

    invoke-direct {v0}, Landroid/app/ActivityClient$1;-><init>()V

    sput-object v0, Landroid/app/ActivityClient;->sInstance:Landroid/util/Singleton;

    new-instance v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;-><init>(Landroid/app/ActivityClient$ActivityClientControllerSingleton-IA;)V

    sput-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityClient-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityClient;-><init>()V

    return-void
.end method

.method private static blacklist getActivityClientController()Landroid/app/IActivityClientController;
    .locals 2

    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    iget-object v0, v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->mKnownInstance:Landroid/app/IActivityClientController;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    invoke-virtual {v1}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityClientController;

    :goto_0
    return-object v1
.end method

.method public static blacklist getInstance()Landroid/app/ActivityClient;
    .locals 1

    sget-object v0, Landroid/app/ActivityClient;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityClient;

    return-object v0
.end method

.method public static blacklist setActivityClientController(Landroid/app/IActivityClientController;)Landroid/app/IActivityClientController;
    .locals 1

    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    iput-object p0, v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->mKnownInstance:Landroid/app/IActivityClientController;

    return-object p0
.end method


# virtual methods
.method public blacklist activityDestroyed(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist activityLocalRelaunch(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityLocalRelaunch(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist activityPaused(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityPaused(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist activityRefreshed(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityRefreshed(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist activityRelaunched(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist activityResumed(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->activityResumed(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist activityTopResumedStateLost()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityClientController;->activityTopResumedStateLost()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist adjustPopOverOptions(Landroid/os/IBinder;[I[I[Landroid/graphics/Point;[I)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->adjustPopOverOptions(Landroid/os/IBinder;[I[I[Landroid/graphics/Point;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;I)I
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {p3, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist clearOverrideActivityTransition(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->clearOverrideActivityTransition(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist convertFromTranslucent(Landroid/os/IBinder;Z)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->convertFromTranslucentOp(Landroid/os/IBinder;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist enableTaskLocaleOverride(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->enableTaskLocaleOverride(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDisplayId(Landroid/os/IBinder;)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist isImmersive(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isTopOfTask(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist overrideActivityTransition(Landroid/os/IBinder;ZIII)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->overrideActivityTransition(Landroid/os/IBinder;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist overridePendingTaskTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->overridePendingTaskTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist releaseActivityInstance(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist reportSplashScreenAttached(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->splashScreenAttached(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setForceSendResultForMediaProjection(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->setForceSendResultForMediaProjection(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setImmersive(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setShowWhenLocked(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setTurnScreenOn(Landroid/os/IBinder;Z)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setTurnScreenOn(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist startLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->startLockTaskModeByToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->stopLockTaskModeByToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->unregisterRemoteAnimations(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method blacklist willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
