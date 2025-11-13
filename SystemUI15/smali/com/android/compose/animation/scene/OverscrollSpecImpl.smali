.class public final Lcom/android/compose/animation/scene/OverscrollSpecImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public final scene:Lcom/android/compose/animation/scene/SceneKey;

.field public final transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Landroidx/compose/foundation/gestures/Orientation;Lcom/android/compose/animation/scene/TransformationSpecImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->scene:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p2, p0, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->transformationSpec:Lcom/android/compose/animation/scene/TransformationSpecImpl;

    return-void
.end method
