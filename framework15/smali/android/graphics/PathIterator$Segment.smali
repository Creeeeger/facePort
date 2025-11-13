.class public Landroid/graphics/PathIterator$Segment;
.super Ljava/lang/Object;
.source "PathIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PathIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation


# instance fields
.field private final blacklist mConicWeight:F

.field private final blacklist mPoints:[F

.field private final blacklist mVerb:I


# direct methods
.method constructor blacklist <init>(I[FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/PathIterator$Segment;->mVerb:I

    iput-object p2, p0, Landroid/graphics/PathIterator$Segment;->mPoints:[F

    iput p3, p0, Landroid/graphics/PathIterator$Segment;->mConicWeight:F

    return-void
.end method


# virtual methods
.method public whitelist getConicWeight()F
    .locals 1

    iget v0, p0, Landroid/graphics/PathIterator$Segment;->mConicWeight:F

    return v0
.end method

.method public whitelist getPoints()[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/PathIterator$Segment;->mPoints:[F

    return-object v0
.end method

.method public whitelist getVerb()I
    .locals 1

    iget v0, p0, Landroid/graphics/PathIterator$Segment;->mVerb:I

    return v0
.end method
