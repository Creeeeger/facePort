.class public final Landroid/graphics/text/LineBreaker$Builder;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBreakStrategy:I

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIndents:[I

.field private blacklist mJustificationMode:I

.field private blacklist mUseBoundsForWidth:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    iput-boolean v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/text/LineBreaker;
    .locals 8

    new-instance v7, Landroid/graphics/text/LineBreaker;

    iget v1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    iget v2, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    iget v3, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    iget-object v4, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    iget-boolean v5, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/graphics/text/LineBreaker;-><init>(III[IZLandroid/graphics/text/LineBreaker-IA;)V

    return-object v7
.end method

.method public whitelist setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public whitelist setIndents([I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0

    iput-object p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0

    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    return-object p0
.end method

.method public whitelist setUseBoundsForWidth(Z)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mUseBoundsForWidth:Z

    return-object p0
.end method
