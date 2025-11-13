.class public Landroid/hardware/biometrics/BiometricTestSession;
.super Ljava/lang/Object;
.source "BiometricTestSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
    }
.end annotation


# static fields
.field private static final blacklist BASE_TAG:Ljava/lang/String; = "BiometricTestSession"


# instance fields
.field private final blacklist mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field private blacklist mCloseLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSensorId:I

.field private final blacklist mTestSession:Landroid/hardware/biometrics/ITestSession;

.field private final blacklist mTestedUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUsersCleaningUp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCloseLatch(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSensorId(Landroid/hardware/biometrics/BiometricTestSession;)I
    .locals 0

    iget p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsersCleaningUp(Landroid/hardware/biometrics/BiometricTestSession;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTag(Landroid/hardware/biometrics/BiometricTestSession;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId"    # I
    .param p3, "testSessionProvider"    # Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/hardware/biometrics/BiometricTestSession$1;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricTestSession$1;-><init>(Landroid/hardware/biometrics/BiometricTestSession;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 91
    iput-object p1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mContext:Landroid/content/Context;

    .line 92
    iput p2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    .line 93
    invoke-interface {p3, p1, p2, v0}, Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;->createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    .line 94
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    .line 95
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    .line 97
    return-void
.end method

.method private blacklist getTag()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiometricTestSession_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setTestHalEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 111
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestHalEnabled, sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mSensorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->setTestHalEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public blacklist acceptAuthentication(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 156
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->acceptAuthentication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 160
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist cleanupInternalState(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup already in progress for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->cleanupInternalState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    nop

    .line 229
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 4

    .line 234
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close, mTestedUsers size; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    .line 239
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 240
    .local v1, "user":I
    invoke-virtual {p0, v1}, Landroid/hardware/biometrics/BiometricTestSession;->cleanupInternalState(I)V

    .line 241
    .end local v1    # "user":I
    goto :goto_0

    .line 244
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Awaiting latch..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mCloseLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 246
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finished awaiting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Latch interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricTestSession;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup not finished before shutdown - pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricTestSession;->mUsersCleaningUp:Landroid/util/ArraySet;

    .line 255
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/BiometricTestSession;->setTestHalEnabled(Z)V

    .line 260
    return-void
.end method

.method public blacklist finishEnroll(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->finishEnroll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyAcquired(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "acquireInfo"    # I

    .line 187
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    nop

    .line 191
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyError(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I

    .line 204
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    nop

    .line 208
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyVendorAcquired(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "vendorAcquired"    # I

    .line 275
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyVendorAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    nop

    .line 279
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist notifyVendorError(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "vendorErrorCode"    # I

    .line 288
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/ITestSession;->notifyVendorError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    nop

    .line 292
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist rejectAuthentication(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->rejectAuthentication(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startEnroll(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestedUsers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricTestSession;->mTestSession:Landroid/hardware/biometrics/ITestSession;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/ITestSession;->startEnroll(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
