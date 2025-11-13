.class Landroid/graphics/SurfaceTexture$SetFrameRateArgs;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/SurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetFrameRateArgs"
.end annotation


# instance fields
.field final blacklist mChangeFrameRateStrategy:I

.field final blacklist mCompatibility:I

.field final blacklist mFrameRate:F


# direct methods
.method constructor blacklist <init>(FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mFrameRate:F

    iput p2, p0, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mCompatibility:I

    iput p3, p0, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mChangeFrameRateStrategy:I

    return-void
.end method
