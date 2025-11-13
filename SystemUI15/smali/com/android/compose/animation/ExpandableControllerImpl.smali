.class public final Lcom/android/compose/animation/ExpandableControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/ExpandableController;


# instance fields
.field public final animatorState:Landroidx/compose/runtime/MutableState;

.field public final borderStroke:Landroidx/compose/foundation/BorderStroke;

.field public final boundsInComposeViewRoot:Landroidx/compose/runtime/MutableState;

.field public final color:J

.field public final composeViewRoot:Landroid/view/View;

.field public final contentColor:J

.field public final currentComposeViewInOverlay:Landroidx/compose/runtime/MutableState;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public final expandable:Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;

.field public final isComposed:Landroidx/compose/runtime/State;

.field public final isDialogShowing:Landroidx/compose/runtime/MutableState;

.field public final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public final overlay:Landroidx/compose/runtime/MutableState;

.field public final shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method private constructor <init>(JJLandroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->color:J

    iput-wide p3, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->contentColor:J

    iput-object p5, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->borderStroke:Landroidx/compose/foundation/BorderStroke;

    iput-object p7, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    iput-object p8, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->density:Landroidx/compose/ui/unit/Density;

    iput-object p9, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->animatorState:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->isDialogShowing:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->overlay:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->currentComposeViewInOverlay:Landroidx/compose/runtime/MutableState;

    iput-object p13, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->boundsInComposeViewRoot:Landroidx/compose/runtime/MutableState;

    iput-object p14, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p15, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->isComposed:Landroidx/compose/runtime/State;

    new-instance p1, Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;

    invoke-direct {p1, p0}, Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;-><init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->expandable:Lcom/android/compose/animation/ExpandableControllerImpl$expandable$1;

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/android/compose/animation/ExpandableControllerImpl;-><init>(JJLandroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/runtime/State;)V

    return-void
.end method
