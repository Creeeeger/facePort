.class public final Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;
.super Ljava/lang/Exception;
.source "KnoxGuardVaultException.java"


# instance fields
.field private blacklist mKgvErrorCode:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "kgvErrorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;->mKgvErrorCode:I

    .line 11
    return-void
.end method


# virtual methods
.method public blacklist getKgvErrorCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultException;->mKgvErrorCode:I

    return v0
.end method
