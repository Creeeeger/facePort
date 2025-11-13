.class public Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;
.super Landroid/text/style/ReplacementSpan;
.source "InsertModeTransformationMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/InsertModeTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLinePlaceholderSpan"
.end annotation


# instance fields
.field private final blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput p1, p0, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;->mWidth:I

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public whitelist getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    iget v0, p0, Landroid/text/method/InsertModeTransformationMethod$SingleLinePlaceholderSpan;->mWidth:I

    return v0
.end method
