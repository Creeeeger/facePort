.class public final Lcom/android/systemui/complication/ComplicationLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INVALID_DIRECTIONS:Ljava/util/Map;

.field public static final INVALID_POSITIONS:[I


# instance fields
.field public final mConstraint:I

.field public final mDirection:I

.field public final mDirectionalSpacing:I

.field public final mPosition:I

.field public final mSnapToGuide:Z

.field public final mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0xc

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/complication/ComplicationLayoutParams;->INVALID_POSITIONS:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/complication/ComplicationLayoutParams;->INVALID_DIRECTIONS:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;-><init>(IIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 9

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;-><init>(IIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;-><init>(IIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_4

    sget-object p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->INVALID_POSITIONS:[I

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    aget v0, p1, p2

    and-int v1, p3, v0

    if-eq v1, v0, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput p3, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mPosition:I

    const/4 p1, 0x1

    :goto_1
    const/16 p2, 0x8

    if-gt p1, p2, :cond_3

    and-int p2, p3, p1

    if-ne p2, p1, :cond_2

    sget-object p2, Lcom/android/systemui/complication/ComplicationLayoutParams;->INVALID_DIRECTIONS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    and-int/2addr p2, p4

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid direction:"

    invoke-static {p4, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    shl-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iput p4, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    iput p5, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mWeight:I

    iput p6, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirectionalSpacing:I

    iput p7, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mConstraint:I

    iput-boolean p8, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid position:"

    invoke-static {p3, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(IIIIIZ)V
    .locals 9

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/complication/ComplicationLayoutParams;-><init>(IIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/complication/ComplicationLayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mPosition:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mPosition:I

    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirection:I

    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mWeight:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mWeight:I

    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirectionalSpacing:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mDirectionalSpacing:I

    iget v0, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mConstraint:I

    iput v0, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mConstraint:I

    iget-boolean p1, p1, Lcom/android/systemui/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    iput-boolean p1, p0, Lcom/android/systemui/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    return-void
.end method

.method public static iteratePositions(ILjava/util/function/Consumer;)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    and-int v1, p0, v0

    if-ne v1, v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
