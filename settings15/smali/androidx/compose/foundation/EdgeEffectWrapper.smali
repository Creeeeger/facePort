.class public final Landroidx/compose/foundation/EdgeEffectWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public bottomEffect:Landroid/widget/EdgeEffect;

.field public bottomEffectNegation:Landroid/widget/EdgeEffect;

.field public final context:Landroid/content/Context;

.field public final glowColor:I

.field public leftEffect:Landroid/widget/EdgeEffect;

.field public leftEffectNegation:Landroid/widget/EdgeEffect;

.field public rightEffect:Landroid/widget/EdgeEffect;

.field public rightEffectNegation:Landroid/widget/EdgeEffect;

.field public size:J

.field public topEffect:Landroid/widget/EdgeEffect;

.field public topEffectNegation:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->context:Landroid/content/Context;

    iput p2, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->glowColor:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    return-void
.end method

.method public static isAnimating(Landroid/widget/EdgeEffect;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isStretched(Landroid/widget/EdgeEffect;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move p0, v1

    :goto_0
    cmpg-float p0, p0, v1

    const/4 v1, 0x1

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method


# virtual methods
.method public final createEdgeEffect()Landroid/widget/EdgeEffect;
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->context:Landroid/content/Context;

    :try_start_0
    new-instance v1, Landroid/widget/EdgeEffect;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    :goto_0
    iget v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->glowColor:I

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->setColor(I)V

    iget-wide v2, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->size:J

    const/16 p0, 0x20

    shr-long v4, v2, p0

    long-to-int p0, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {v1, p0, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_0
    return-object v1
.end method

.method public final getOrCreateBottomEffect()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateLeftEffect()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateRightEffect()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method

.method public final getOrCreateTopEffect()Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/EdgeEffectWrapper;->createEdgeEffect()Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    :cond_0
    return-object v0
.end method
