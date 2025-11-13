.class final Landroidx/compose/material3/SliderDefaults$Track$7;
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

.field final synthetic $colors:Landroidx/compose/material3/SliderColors;

.field final synthetic $drawStopIndicator:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $drawTick:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $sliderState:Landroidx/compose/material3/SliderState;

.field final synthetic $thumbTrackGapSize:F

.field final synthetic $tmp2_rcvr:Landroidx/compose/material3/SliderDefaults;

.field final synthetic $trackInsideCornerSize:F


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderDefaults;",
            "Landroidx/compose/material3/SliderState;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SliderColors;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function3;",
            "FFII)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$tmp2_rcvr:Landroidx/compose/material3/SliderDefaults;

    iput-object p2, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$sliderState:Landroidx/compose/material3/SliderState;

    iput-object p3, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$colors:Landroidx/compose/material3/SliderColors;

    iput-object p6, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$drawStopIndicator:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$drawTick:Lkotlin/jvm/functions/Function3;

    iput p8, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$thumbTrackGapSize:F

    iput p9, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$trackInsideCornerSize:F

    iput p10, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$$changed:I

    iput p11, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$tmp2_rcvr:Landroidx/compose/material3/SliderDefaults;

    iget-object v1, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v2, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$enabled:Z

    iget-object v4, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$colors:Landroidx/compose/material3/SliderColors;

    iget-object v5, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$drawStopIndicator:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$drawTick:Lkotlin/jvm/functions/Function3;

    iget v7, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$thumbTrackGapSize:F

    iget v8, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$trackInsideCornerSize:F

    iget p1, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    iget v11, p0, Landroidx/compose/material3/SliderDefaults$Track$7;->$$default:I

    invoke-virtual/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults;->Track-4EFweAY(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
