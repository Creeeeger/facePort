.class public Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataFormat;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$DataType;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelInputType;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$Mode;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ModelType;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$ExecType;,
        Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession$CompUnit;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KnoxAiSession"


# instance fields
.field public final mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

.field public final mSessionID:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;J)V
    .locals 2
    .param p1    # Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    const-string v1, "KnoxAiSession session init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    iput-wide p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    return-void
.end method


# virtual methods
.method public close()Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    const-string v1, "ERROR: Invalid Session, Create session via KnoxAiManager instead"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->close(J)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public execute([Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    const-string p1, "ERROR: Invalid Session, Create session via KnoxAiManager instead"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->execute(J[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;[Lcom/samsung/android/knox/ex/knoxAI/DataBuffer;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getModelInputShape(I[I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    const-string p1, "ERROR: Invalid Session, Create session via KnoxAiManager instead"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->getModelInputShape(JI[I)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getSessionID()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    return-wide v0
.end method

.method public open(Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;->KNOX_AI_SERVICE_FAILURE:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mKnoxAiManagerInternal:Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->TAG:Ljava/lang/String;

    const-string p1, "ERROR: Invalid Session, Create session via KnoxAiManager instead"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiSession;->mSessionID:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManagerInternal;->open(JLcom/samsung/android/knox/ex/knoxAI/KfaOptions;)Lcom/samsung/android/knox/ex/knoxAI/KnoxAiManager$ErrorCodes;

    move-result-object v0

    :goto_0
    return-object v0
.end method
