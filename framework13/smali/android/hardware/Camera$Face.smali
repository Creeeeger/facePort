.class public Landroid/hardware/Camera$Face;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist id:I

.field public whitelist leftEye:Landroid/graphics/Point;

.field public whitelist mouth:Landroid/graphics/Point;

.field public whitelist rect:Landroid/graphics/Rect;

.field public whitelist rightEye:Landroid/graphics/Point;

.field public whitelist score:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 1884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1944
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Face;->id:I

    .line 1953
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 1962
    iput-object v0, p0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 1971
    iput-object v0, p0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 1885
    return-void
.end method
