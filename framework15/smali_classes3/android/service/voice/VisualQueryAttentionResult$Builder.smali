.class public final Landroid/service/voice/VisualQueryAttentionResult$Builder;
.super Ljava/lang/Object;
.source "VisualQueryAttentionResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryAttentionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEngagementLevel:I

.field private blacklist mInteractionIntention:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

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
.method public whitelist build()Landroid/service/voice/VisualQueryAttentionResult;
    .locals 6

    invoke-direct {p0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->-$$Nest$smdefaultInteractionIntention()I

    move-result v0

    iput v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mInteractionIntention:I

    :cond_0
    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->-$$Nest$smdefaultEngagementLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mEngagementLevel:I

    :cond_1
    new-instance v0, Landroid/service/voice/VisualQueryAttentionResult;

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mInteractionIntention:I

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mEngagementLevel:I

    invoke-direct {v0, v1, v2}, Landroid/service/voice/VisualQueryAttentionResult;-><init>(II)V

    return-object v0
.end method

.method public whitelist setEngagementLevel(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mEngagementLevel:I

    return-object p0
.end method

.method public whitelist setInteractionIntention(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/VisualQueryAttentionResult$Builder;->mInteractionIntention:I

    return-object p0
.end method
