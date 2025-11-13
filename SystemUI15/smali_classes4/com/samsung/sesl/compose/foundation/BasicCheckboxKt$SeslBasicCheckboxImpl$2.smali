.class final Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;
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

.field final synthetic $checkboxColor:Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;

.field final synthetic $checkboxSize:F

.field final synthetic $enabled:Z

.field final synthetic $indication:Landroidx/compose/foundation/Indication;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/ui/state/ToggleableState;


# direct methods
.method public constructor <init>(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/Indication;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;",
            "Landroidx/compose/ui/state/ToggleableState;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroidx/compose/foundation/Indication;",
            "F",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$checkboxColor:Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;

    iput-object p2, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$state:Landroidx/compose/ui/state/ToggleableState;

    iput-object p3, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$indication:Landroidx/compose/foundation/Indication;

    iput p5, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$checkboxSize:F

    iput-object p6, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p7, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$enabled:Z

    iput-object p8, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p9, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$$changed:I

    iput p10, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$checkboxColor:Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;

    iget-object v1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$state:Landroidx/compose/ui/state/ToggleableState;

    iget-object v2, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$indication:Landroidx/compose/foundation/Indication;

    iget v4, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$checkboxSize:F

    iget-object v5, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v6, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$enabled:Z

    iget-object v7, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget p1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckboxImpl$2;->$$default:I

    invoke-static/range {v0 .. v10}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt;->SeslBasicCheckboxImpl-GHTll3U(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;Landroidx/compose/ui/state/ToggleableState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/Indication;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
