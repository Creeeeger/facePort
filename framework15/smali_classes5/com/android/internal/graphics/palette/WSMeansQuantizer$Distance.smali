.class Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;
.super Ljava/lang/Object;
.source "WSMeansQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/WSMeansQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Distance"
.end annotation


# instance fields
.field private final blacklist mDistance:F

.field private final blacklist mIndex:I


# direct methods
.method constructor blacklist <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->mIndex:I

    iput p2, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->mDistance:F

    return-void
.end method


# virtual methods
.method blacklist getDistance()F
    .locals 1

    iget v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->mDistance:F

    return v0
.end method

.method blacklist getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/graphics/palette/WSMeansQuantizer$Distance;->mIndex:I

    return v0
.end method
