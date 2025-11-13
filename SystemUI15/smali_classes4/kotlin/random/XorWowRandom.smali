.class public final Lkotlin/random/XorWowRandom;
.super Lkotlin/random/Random;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private addend:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/random/XorWowRandom$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/random/XorWowRandom$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    not-int v5, p1

    shl-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p2, 0x4

    xor-int v6, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/random/XorWowRandom;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    iput p1, p0, Lkotlin/random/XorWowRandom;->x:I

    iput p2, p0, Lkotlin/random/XorWowRandom;->y:I

    iput p3, p0, Lkotlin/random/XorWowRandom;->z:I

    iput p4, p0, Lkotlin/random/XorWowRandom;->w:I

    iput p5, p0, Lkotlin/random/XorWowRandom;->v:I

    iput p6, p0, Lkotlin/random/XorWowRandom;->addend:I

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    or-int/2addr p1, p4

    or-int/2addr p1, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x40

    if-ge p1, p2, :cond_0

    iget p2, p0, Lkotlin/random/XorWowRandom;->x:I

    ushr-int/lit8 p3, p2, 0x2

    xor-int/2addr p2, p3

    iget p3, p0, Lkotlin/random/XorWowRandom;->y:I

    iput p3, p0, Lkotlin/random/XorWowRandom;->x:I

    iget p3, p0, Lkotlin/random/XorWowRandom;->z:I

    iput p3, p0, Lkotlin/random/XorWowRandom;->y:I

    iget p3, p0, Lkotlin/random/XorWowRandom;->w:I

    iput p3, p0, Lkotlin/random/XorWowRandom;->z:I

    iget p3, p0, Lkotlin/random/XorWowRandom;->v:I

    iput p3, p0, Lkotlin/random/XorWowRandom;->w:I

    shl-int/lit8 p4, p2, 0x1

    xor-int/2addr p2, p4

    xor-int/2addr p2, p3

    shl-int/lit8 p3, p3, 0x4

    xor-int/2addr p2, p3

    iput p2, p0, Lkotlin/random/XorWowRandom;->v:I

    iget p2, p0, Lkotlin/random/XorWowRandom;->addend:I

    const p3, 0x587c5

    add-int/2addr p2, p3

    iput p2, p0, Lkotlin/random/XorWowRandom;->addend:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Initial state must have at least one non-zero element."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
