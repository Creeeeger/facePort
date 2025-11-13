.class final Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $animatorState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $color:J

.field final synthetic $composeViewRoot:Landroid/view/View;

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $controller:Lcom/android/compose/animation/ExpandableControllerImpl;

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $onOverlayComposeViewChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $overlay:Landroid/view/ViewGroupOverlay;

.field final synthetic $sizeInOriginalLayout:J


# direct methods
.method public constructor <init>(JJLandroidx/compose/runtime/State;Landroid/view/ViewGroupOverlay;Lcom/android/compose/animation/ExpandableControllerImpl;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/runtime/State;",
            "Landroid/view/ViewGroupOverlay;",
            "Lcom/android/compose/animation/ExpandableControllerImpl;",
            "Lkotlin/jvm/functions/Function3;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1;",
            "Landroidx/compose/ui/unit/Density;",
            "I)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$color:J

    iput-wide p3, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$sizeInOriginalLayout:J

    iput-object p5, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$animatorState:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$overlay:Landroid/view/ViewGroupOverlay;

    iput-object p7, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$controller:Lcom/android/compose/animation/ExpandableControllerImpl;

    iput-object p8, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$content:Lkotlin/jvm/functions/Function3;

    iput-object p9, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$composeViewRoot:Landroid/view/View;

    iput-object p10, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$onOverlayComposeViewChanged:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$density:Landroidx/compose/ui/unit/Density;

    iput p12, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-wide v0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$color:J

    iget-wide v2, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$sizeInOriginalLayout:J

    iget-object v4, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$animatorState:Landroidx/compose/runtime/State;

    iget-object v5, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$overlay:Landroid/view/ViewGroupOverlay;

    iget-object v6, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$controller:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v7, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$content:Lkotlin/jvm/functions/Function3;

    iget-object v8, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$composeViewRoot:Landroid/view/View;

    iget-object v9, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$onOverlayComposeViewChanged:Lkotlin/jvm/functions/Function1;

    iget-object v10, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$density:Landroidx/compose/ui/unit/Density;

    iget p0, p0, Lcom/android/compose/animation/ExpandableKt$AnimatedContentInOverlay$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    invoke-static/range {v0 .. v12}, Lcom/android/compose/animation/ExpandableKt;->AnimatedContentInOverlay-mxx1QeM(JJLandroidx/compose/runtime/State;Landroid/view/ViewGroupOverlay;Lcom/android/compose/animation/ExpandableControllerImpl;Lkotlin/jvm/functions/Function3;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
