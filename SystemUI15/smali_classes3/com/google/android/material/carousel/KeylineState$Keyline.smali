.class public final Lcom/google/android/material/carousel/KeylineState$Keyline;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cutoff:F

.field public final isAnchor:Z

.field public final loc:F

.field public final locOffset:F

.field public final mask:F

.field public final maskedItemSize:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/carousel/KeylineState$Keyline;-><init>(FFFFZF)V

    return-void
.end method

.method public constructor <init>(FFFFZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    iput p2, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iput p3, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iput p4, p0, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    return-void
.end method
