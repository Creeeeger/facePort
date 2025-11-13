.class public final Landroid/hardware/display/DisplayedContentSamplingAttributes;
.super Ljava/lang/Object;
.source "DisplayedContentSamplingAttributes.java"


# instance fields
.field private blacklist mComponentMask:I

.field private blacklist mDataspace:I

.field private blacklist mPixelFormat:I


# direct methods
.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mPixelFormat:I

    iput p2, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mDataspace:I

    iput p3, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mComponentMask:I

    return-void
.end method


# virtual methods
.method public blacklist getComponentMask()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mComponentMask:I

    return v0
.end method

.method public blacklist getDataspace()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mDataspace:I

    return v0
.end method

.method public blacklist getPixelFormat()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mPixelFormat:I

    return v0
.end method
