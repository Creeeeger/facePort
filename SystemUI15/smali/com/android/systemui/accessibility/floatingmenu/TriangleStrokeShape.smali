.class public final Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;
.super Landroid/graphics/drawable/shapes/PathShape;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mTriangularPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;->mTriangularPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;->mTriangularPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method
