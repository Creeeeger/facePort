.class public final Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;
.super Ljava/lang/Object;
.source "BlockedNumbersManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BlockedNumbersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockSuppressionStatus"
.end annotation


# instance fields
.field private blacklist mIsSuppressed:Z

.field private blacklist mUntilTimestampMillis:J


# direct methods
.method public constructor blacklist <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;->mIsSuppressed:Z

    iput-wide p2, p0, Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;->mUntilTimestampMillis:J

    return-void
.end method


# virtual methods
.method public blacklist getIsSuppressed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;->mIsSuppressed:Z

    return v0
.end method

.method public blacklist getUntilTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;->mUntilTimestampMillis:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BlockSuppressionStatus; isSuppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;->mIsSuppressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", until="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;->mUntilTimestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
