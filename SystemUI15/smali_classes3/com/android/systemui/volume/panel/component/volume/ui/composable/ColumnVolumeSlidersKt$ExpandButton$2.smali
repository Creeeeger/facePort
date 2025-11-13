.class final Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;
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

.field final synthetic $isExpandable:Z

.field final synthetic $isExpanded:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onExpandedChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $sliderColors:Lcom/android/compose/PlatformSliderColors;


# direct methods
.method public constructor <init>(ZZLkotlin/jvm/functions/Function1;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/ui/Modifier;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1;",
            "Lcom/android/compose/PlatformSliderColors;",
            "Landroidx/compose/ui/Modifier;",
            "II)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$isExpanded:Z

    iput-boolean p2, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$isExpandable:Z

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$onExpandedChanged:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$sliderColors:Lcom/android/compose/PlatformSliderColors;

    iput-object p5, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput p6, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$$changed:I

    iput p7, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-boolean v0, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$isExpanded:Z

    iget-boolean v1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$isExpandable:Z

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$onExpandedChanged:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$sliderColors:Lcom/android/compose/PlatformSliderColors;

    iget-object v4, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget p1, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt$ExpandButton$2;->$$default:I

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/volume/panel/component/volume/ui/composable/ColumnVolumeSlidersKt;->ExpandButton(ZZLkotlin/jvm/functions/Function1;Lcom/android/compose/PlatformSliderColors;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
