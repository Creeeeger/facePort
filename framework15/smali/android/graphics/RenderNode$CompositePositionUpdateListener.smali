.class final Landroid/graphics/RenderNode$CompositePositionUpdateListener;
.super Ljava/lang/Object;
.source "RenderNode.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RenderNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompositePositionUpdateListener"
.end annotation


# static fields
.field private static final blacklist sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;


# instance fields
.field private final blacklist mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/RenderNode$PositionUpdateListener;

    sput-object v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;

    return-void
.end method

.method varargs constructor blacklist <init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->sEmpty:[Landroid/graphics/RenderNode$PositionUpdateListener;

    :goto_0
    iput-object v0, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    return-void
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v17, v1, v3

    move-object/from16 v4, v17

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-interface/range {v4 .. v16}, Landroid/graphics/RenderNode$PositionUpdateListener;->applyStretch(JFFFFFFFFFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v11, v1, v3

    move-object v4, v11

    move-wide v5, p1

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist positionChanged(JIIIIIIII)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v15, v1, v3

    move-object v4, v15

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-interface/range {v4 .. v14}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIIIIIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist positionLost(J)V
    .locals 4

    iget-object v0, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionLost(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist with(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    .locals 3

    new-instance v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const-class v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    iget-object v2, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    return-object v0
.end method

.method public blacklist without(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    .locals 3

    new-instance v0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const-class v1, Landroid/graphics/RenderNode$PositionUpdateListener;

    iget-object v2, p0, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->mListeners:[Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/ArrayUtils;->removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/RenderNode$PositionUpdateListener;

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    return-object v0
.end method
