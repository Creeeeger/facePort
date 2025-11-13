.class public Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SyncRtSurfaceTransactionApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfaceParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    }
.end annotation


# instance fields
.field public final blacklist alpha:F

.field public final blacklist backgroundBlurRadius:I

.field public final blacklist cornerRadius:F

.field private final blacklist flags:I

.field public final blacklist layer:I

.field public final blacklist matrix:Landroid/graphics/Matrix;

.field public final blacklist mergeTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final blacklist surface:Landroid/view/SurfaceControl;

.field public final blacklist visible:Z

.field public final blacklist windowCrop:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I
    .locals 0

    iget p0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->flags:I

    return p0
.end method

.method private constructor blacklist <init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;IFIZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceControl;
    .param p2, "params"    # I
    .param p3, "alpha"    # F
    .param p4, "matrix"    # Landroid/graphics/Matrix;
    .param p5, "windowCrop"    # Landroid/graphics/Rect;
    .param p6, "layer"    # I
    .param p7, "cornerRadius"    # F
    .param p8, "backgroundBlurRadius"    # I
    .param p9, "visible"    # Z
    .param p10, "mergeTransaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p2, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->flags:I

    .line 278
    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    .line 279
    iput p3, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->alpha:F

    .line 280
    iput-object p4, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    .line 281
    iput-object p5, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    .line 282
    iput p6, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->layer:I

    .line 283
    iput p7, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->cornerRadius:F

    .line 284
    iput p8, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->backgroundBlurRadius:I

    .line 285
    iput-boolean p9, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->visible:Z

    .line 286
    iput-object p10, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 287
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;IFIZLandroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;IFIZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
