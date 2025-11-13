.class public final Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager$HistoricalOpsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mBeginTimeMillis:J

.field private final blacklist mEndTimeMillis:J

.field private blacklist mFilter:I

.field private blacklist mFlags:I

.field private blacklist mHistoryFlags:I

.field private blacklist mOpNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method public constructor whitelist <init>(JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    const/16 v0, 0x1f

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "beginTimeMillis must be non negative and lesser than endTimeMillis"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-wide p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mBeginTimeMillis:J

    iput-wide p3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mEndTimeMillis:J

    iput v1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/AppOpsManager$HistoricalOpsRequest;
    .locals 14

    new-instance v13, Landroid/app/AppOpsManager$HistoricalOpsRequest;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    iget v5, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    iget v6, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    iget-wide v7, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mBeginTimeMillis:J

    iget-wide v9, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mEndTimeMillis:J

    iget v11, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/app/AppOpsManager$HistoricalOpsRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/app/AppOpsManager$HistoricalOpsRequest-IA;)V

    return-object v13
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .locals 1

    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mAttributionTag:Ljava/lang/String;

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .locals 1

    const/16 v0, 0x1f

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFlags:I

    return-object p0
.end method

.method public whitelist setHistoryFlags(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .locals 1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mHistoryFlags:I

    return-object p0
.end method

.method public whitelist setOpNames(Ljava/util/List;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    nop

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mOpNames:Ljava/util/List;

    if-nez v0, :cond_2

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_2

    :cond_2
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    :goto_2
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .locals 1

    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mPackageName:Ljava/lang/String;

    if-nez p1, :cond_0

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    :goto_0
    return-object p0
.end method

.method public whitelist setUid(I)Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const-string/jumbo v3, "uid must be -1 or non negative"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mUid:I

    if-ne p1, v1, :cond_2

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    goto :goto_2

    :cond_2
    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;->mFilter:I

    :goto_2
    return-object p0
.end method
