.class public Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KnoxAiManager"

.field public static sKnoxAiManager:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;


# instance fields
.field public mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KnoxAiManager Constructor called: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->sKnoxAiManager:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->sKnoxAiManager:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->sKnoxAiManager:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public createKnoxAiSession()Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
    .locals 5

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->TAG:Ljava/lang/String;

    const-string v1, "createKnoxAiSession entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    invoke-virtual {v1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->createKnoxAiSession()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;J)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "createKnoxAiSession failed : "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public destroyKnoxAiSession(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 2
    .param p1    # Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    iget-wide v0, p1, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->destroyKnoxAiSession(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object p0

    return-object p0
.end method

.method public getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getKeyProvisioning(Lcom/samsung/android/knox/ex/knoxAI/KeyProvisioningResultCallback;)V

    return-void
.end method
