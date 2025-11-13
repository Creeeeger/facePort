.class final Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;
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

.field final synthetic $checkBoxSize:F

.field final synthetic $checkboxColor:Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;

.field final synthetic $checked:Z

.field final synthetic $enabled:Z

.field final synthetic $indication:Landroidx/compose/foundation/Indication;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onCheckedChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;ZLkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/Indication;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;",
            "Z",
            "Lkotlin/jvm/functions/Function1;",
            "F",
            "Landroidx/compose/foundation/Indication;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$checkboxColor:Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;

    iput-boolean p2, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$checked:Z

    iput-object p3, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$onCheckedChange:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$checkBoxSize:F

    iput-object p5, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$indication:Landroidx/compose/foundation/Indication;

    iput-object p6, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p7, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$enabled:Z

    iput-object p8, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p9, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$$changed:I

    iput p10, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$$default:I

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

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$checkboxColor:Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;

    iget-boolean v1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$checked:Z

    iget-object v2, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$onCheckedChange:Lkotlin/jvm/functions/Function1;

    iget v3, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$checkBoxSize:F

    iget-object v4, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$indication:Landroidx/compose/foundation/Indication;

    iget-object v5, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v6, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$enabled:Z

    iget-object v7, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget p1, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt$SeslBasicCheckbox$3;->$$default:I

    invoke-static/range {v0 .. v10}, Lcom/samsung/sesl/compose/foundation/BasicCheckboxKt;->SeslBasicCheckbox-aA_HZ9I(Lcom/samsung/sesl/compose/foundation/SeslBasicCheckboxColors;ZLkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/Indication;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
