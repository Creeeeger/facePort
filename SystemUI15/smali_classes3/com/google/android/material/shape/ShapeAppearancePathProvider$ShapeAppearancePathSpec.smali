.class public final Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bounds:Landroid/graphics/RectF;

.field public final interpolation:F

.field public final path:Landroid/graphics/Path;

.field public final pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

.field public final shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->pathListener:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iput p2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->interpolation:F

    iput-object p3, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->bounds:Landroid/graphics/RectF;

    iput-object p5, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$ShapeAppearancePathSpec;->path:Landroid/graphics/Path;

    return-void
.end method
