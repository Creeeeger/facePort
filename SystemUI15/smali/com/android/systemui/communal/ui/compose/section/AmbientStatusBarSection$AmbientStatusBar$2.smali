.class final Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;
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

.field final synthetic $$default:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $this_AmbientStatusBar:Lcom/android/compose/animation/scene/SceneScope;

.field final synthetic $tmp0_rcvr:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/Modifier;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$tmp0_rcvr:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$this_AmbientStatusBar:Lcom/android/compose/animation/scene/SceneScope;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$$changed:I

    iput p5, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$tmp0_rcvr:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$this_AmbientStatusBar:Lcom/android/compose/animation/scene/SceneScope;

    iget-object v2, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget p1, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$2;->$$default:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;->AmbientStatusBar(Lcom/android/compose/animation/scene/SceneScope;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
