.class public final Landroid/service/voice/VisualQueryDetectedResult$Builder;
.super Ljava/lang/Object;
.source "VisualQueryDetectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAccessibilityDetectionData:[B

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mPartialQuery:Ljava/lang/String;

.field private blacklist mSpeakerId:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/voice/VisualQueryDetectedResult;
    .locals 6

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->-$$Nest$smdefaultPartialQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mPartialQuery:Ljava/lang/String;

    :cond_0
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->-$$Nest$smdefaultSpeakerId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mSpeakerId:I

    :cond_1
    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/service/voice/VisualQueryDetectedResult;->-$$Nest$smdefaultAccessibilityDetectionData()[B

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mAccessibilityDetectionData:[B

    :cond_2
    new-instance v0, Landroid/service/voice/VisualQueryDetectedResult;

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mPartialQuery:Ljava/lang/String;

    iget v2, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mSpeakerId:I

    iget-object v3, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mAccessibilityDetectionData:[B

    invoke-direct {v0, v1, v2, v3}, Landroid/service/voice/VisualQueryDetectedResult;-><init>(Ljava/lang/String;I[B)V

    return-object v0
.end method

.method public varargs whitelist setAccessibilityDetectionData([B)Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mAccessibilityDetectionData:[B

    return-object p0
.end method

.method public whitelist setPartialQuery(Ljava/lang/String;)Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mPartialQuery:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setSpeakerId(I)Landroid/service/voice/VisualQueryDetectedResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/VisualQueryDetectedResult$Builder;->mSpeakerId:I

    return-object p0
.end method
