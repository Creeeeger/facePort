.class public final Landroid/view/translation/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_CAPABILITIES:Ljava/lang/String; = "translation_capabilities"

.field private static final blacklist ID_GENERATOR:Ljava/security/SecureRandom;

.field public static final blacklist STATUS_SYNC_CALL_FAIL:I = 0x2

.field public static final blacklist STATUS_SYNC_CALL_SUCCESS:I = 0x1

.field static final blacklist SYNC_CALLS_TIMEOUT_MS:I = 0xea60

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationManager"

.field private static final blacklist sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final blacklist mCapabilityCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;",
            "Landroid/os/IRemoteCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/view/translation/ITranslationManager;

.field private final blacklist mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTranslatorIds:Landroid/util/IntArray;


# direct methods
.method public static synthetic blacklist $r8$lambda$1IjILc_K4abGsuTe6FkDEBl34Mw(Landroid/view/translation/TranslationManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/translation/TranslationManager;->lambda$createOnDeviceTranslator$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/view/translation/TranslationManager;->sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic blacklist lambda$addOnDeviceTranslationCapabilityUpdateListener$5(Landroid/util/Pair;)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$0(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$2(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$createOnDeviceTranslator$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$createOnDeviceTranslator$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;ILandroid/view/translation/Translator;)V
    .locals 2

    if-nez p4, :cond_0

    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p3}, Landroid/util/IntArray;->add(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p4}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public greylist addOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "pending intent should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist addOnDeviceTranslationCapabilityUpdateListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capability listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TranslationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOnDeviceTranslationCapabilityUpdateListener: the listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already registered; ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;

    invoke-direct {v1, p1, p2}, Landroid/view/translation/TranslationManager$TranslationCapabilityRemoteCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->registerTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

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

.method public greylist addTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/translation/TranslationManager;->addOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V

    return-void
.end method

.method public greylist createOnDeviceTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "translationContext cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v9, Landroid/view/translation/Translator;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    move-object v2, v9

    move-object v4, p1

    move v5, v1

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/translation/Translator;-><init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;)V

    move-object v2, v9

    invoke-virtual {v2}, Landroid/view/translation/Translator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/view/translation/Translator;->isSessionCreated()Z

    move-result v4
    :try_end_1
    .catch Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :cond_1
    :try_start_3
    iget-object v4, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v4, v1}, Landroid/util/IntArray;->add(I)V
    :try_end_3
    .catch Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception v4

    const-string v5, "TranslationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timed out getting create session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public whitelist createOnDeviceTranslator(Landroid/view/translation/TranslationContext;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationContext;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "translationContext cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/translation/TranslationManager;->ID_GENERATOR:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    move v2, v1

    new-instance v3, Landroid/view/translation/Translator;

    iget-object v4, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/view/translation/TranslationManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    new-instance v10, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, p2, p3, v2}, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda3;-><init>(Landroid/view/translation/TranslationManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;I)V

    move-object v5, p1

    move v6, v2

    move-object v7, p0

    invoke-direct/range {v3 .. v10}, Landroid/view/translation/Translator;-><init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;Ljava/util/function/Consumer;)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist createTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/translation/TranslationManager;->createOnDeviceTranslator(Landroid/view/translation/TranslationContext;)Landroid/view/translation/Translator;

    move-result-object v0

    return-object v0
.end method

.method blacklist getAvailableRequestId()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/translation/TranslationManager;->sAvailableRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getOnDeviceTranslationCapabilities(II)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    invoke-direct {v0}, Landroid/os/SynchronousResultReceiver;-><init>()V

    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/view/translation/ITranslationManager;->onTranslationCapabilitiesRequest(IILandroid/os/ResultReceiver;I)V

    nop

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    iget v2, v1, Landroid/os/SynchronousResultReceiver$Result;->resultCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "translation_capabilities"

    const-class v4, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    new-instance v3, Landroid/util/ArraySet;

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    :goto_0
    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out getting supported translation capabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOnDeviceTranslationSettingsActivityIntent()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const v1, 0xea60

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/view/translation/ITranslationManager;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;
    :try_end_1
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "TranslationManager"

    const-string v3, "Fail to get translation service settings activity."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public greylist getTranslationCapabilities(II)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/view/translation/TranslationManager;->getOnDeviceTranslationCapabilities(II)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist getTranslationSettingsActivityIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/translation/TranslationManager;->getOnDeviceTranslationSettingsActivityIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public greylist removeOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "pending intent should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslationCapabilityUpdateListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v3, "TranslationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist in mTranslationCapabilityUpdateListeners"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v2, "TranslationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format pair="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist in mTranslationCapabilityUpdateListeners"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist removeOnDeviceTranslationCapabilityUpdateListener(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationCapability;",
            ">;)V"
        }
    .end annotation

    const-string v0, "capability callback should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IRemoteCallback;

    if-nez v1, :cond_0

    const-string v2, "TranslationManager"

    const-string/jumbo v3, "removeOnDeviceTranslationCapabilityUpdateListener: the capability listener not found; ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mService:Landroid/view/translation/ITranslationManager;

    iget-object v3, p0, Landroid/view/translation/TranslationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroid/view/translation/ITranslationManager;->unregisterTranslationCapabilityCallback(Landroid/os/IRemoteCallback;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mCapabilityCallbacks:Ljava/util/Map;

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

.method public greylist removeTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/translation/TranslationManager;->removeOnDeviceTranslationCapabilityUpdateListener(IILandroid/app/PendingIntent;)V

    return-void
.end method

.method blacklist removeTranslator(I)V
    .locals 3

    iget-object v0, p0, Landroid/view/translation/TranslationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v1, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/view/translation/TranslationManager;->mTranslatorIds:Landroid/util/IntArray;

    invoke-virtual {v2, v1}, Landroid/util/IntArray;->remove(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
