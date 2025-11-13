.class public final Landroid/view/translation/UiTranslationManager;
.super Ljava/lang/Object;
.source "UiTranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;,
        Landroid/view/translation/UiTranslationManager$UiTranslationState;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final blacklist EXTRA_SOURCE_LOCALE:Ljava/lang/String; = "source_locale"

.field public static final blacklist EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final blacklist EXTRA_TARGET_LOCALE:Ljava/lang/String; = "target_locale"

.field public static final blacklist LOG_TAG:Ljava/lang/String; = "UiTranslation"

.field public static final blacklist STATE_UI_TRANSLATION_FINISHED:I = 0x3

.field public static final blacklist STATE_UI_TRANSLATION_PAUSED:I = 0x1

.field public static final blacklist STATE_UI_TRANSLATION_RESUMED:I = 0x2

.field public static final blacklist STATE_UI_TRANSLATION_STARTED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UiTranslationManager"


# instance fields
.field private final blacklist mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/translation/UiTranslationStateCallback;",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/view/translation/ITranslationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    return-void
.end method


# virtual methods
.method public whitelist finishTranslation(Landroid/app/assist/ActivityId;)V
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
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

.method public blacklist onTranslationFinished(ZLandroid/app/assist/ActivityId;Landroid/content/ComponentName;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    invoke-virtual {p2}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, p3, v2}, Landroid/view/translation/ITranslationManager;->onTranslationFinished(ZLandroid/os/IBinder;Landroid/content/ComponentName;I)V
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

.method public whitelist pauseTranslation(Landroid/app/assist/ActivityId;)V
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
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

.method public whitelist registerUiTranslationStateCallback(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "UiTranslationManager"

    const-string/jumbo v2, "registerUiTranslationStateCallback: callback already registered; ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;-><init>(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->registerUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist resumeTranslation(Landroid/app/assist/ActivityId;)V
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
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

.method public greylist startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/app/assist/ActivityId;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/view/translation/UiTranslationSpec$Builder;

    invoke-direct {v0}, Landroid/view/translation/UiTranslationSpec$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/translation/UiTranslationSpec$Builder;->setShouldPadContentForCompat(Z)Landroid/view/translation/UiTranslationSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/translation/UiTranslationSpec$Builder;->build()Landroid/view/translation/UiTranslationSpec;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/view/translation/UiTranslationManager;->startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;Landroid/view/translation/UiTranslationSpec;)V

    return-void
.end method

.method public whitelist startTranslation(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/app/assist/ActivityId;Landroid/view/translation/UiTranslationSpec;)V
    .locals 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/app/assist/ActivityId;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p4}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result v7

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p5

    invoke-interface/range {v1 .. v9}, Landroid/view/translation/ITranslationManager;->updateUiTranslationState(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/os/IBinder;ILandroid/view/translation/UiTranslationSpec;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid empty views: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterUiTranslationStateCallback(Landroid/view/translation/UiTranslationStateCallback;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRemoteCallback;

    if-nez v1, :cond_0

    const-string v2, "UiTranslationManager"

    const-string/jumbo v3, "unregisterUiTranslationStateCallback: callback not found; ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/UiTranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->unregisterUiTranslationStateCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager;->mCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
