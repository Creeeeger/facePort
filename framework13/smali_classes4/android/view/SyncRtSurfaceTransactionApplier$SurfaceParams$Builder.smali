.class public Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist alpha:F

.field blacklist backgroundBlurRadius:I

.field blacklist cornerRadius:F

.field blacklist flags:I

.field blacklist layer:I

.field blacklist matrix:Landroid/graphics/Matrix;

.field blacklist mergeTransaction:Landroid/view/SurfaceControl$Transaction;

.field final blacklist surface:Landroid/view/SurfaceControl;

.field blacklist visible:Z

.field blacklist windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    .line 182
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .locals 13

    .line 269
    new-instance v12, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    iget v3, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    iget-object v4, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget v6, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    iget v7, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    iget v8, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget-boolean v9, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    iget-object v10, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;IFIZLandroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams-IA;)V

    return-object v12
.end method

.method public blacklist withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1
    .param p1, "alpha"    # F

    .line 189
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    .line 190
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 191
    return-object p0
.end method

.method public blacklist withBackgroundBlur(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1
    .param p1, "radius"    # I

    .line 239
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    .line 240
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 241
    return-object p0
.end method

.method public blacklist withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1
    .param p1, "radius"    # F

    .line 229
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    .line 230
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 231
    return-object p0
.end method

.method public blacklist withLayer(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1
    .param p1, "layer"    # I

    .line 219
    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    .line 220
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 221
    return-object p0
.end method

.method public blacklist withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 199
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    .line 200
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 201
    return-object p0
.end method

.method public blacklist withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1
    .param p1, "mergeTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 260
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 261
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 262
    return-object p0
.end method

.method public blacklist withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1
    .param p1, "visible"    # Z

    .line 249
    iput-boolean p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    .line 250
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 251
    return-object p0
.end method

.method public blacklist withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1
    .param p1, "windowCrop"    # Landroid/graphics/Rect;

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    .line 210
    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    .line 211
    return-object p0
.end method
