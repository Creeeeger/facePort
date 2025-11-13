.class final Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;
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

.field final synthetic $enabled:Z

.field final synthetic $fraction:F

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $switchColors:Lcom/samsung/sesl/compose/component/SeslSwitchColors;

.field final synthetic $tmp0_rcvr:Lcom/samsung/sesl/compose/component/SeslSwitchDefault;


# direct methods
.method public constructor <init>(Lcom/samsung/sesl/compose/component/SeslSwitchDefault;FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$tmp0_rcvr:Lcom/samsung/sesl/compose/component/SeslSwitchDefault;

    iput p2, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$fraction:F

    iput-object p3, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$switchColors:Lcom/samsung/sesl/compose/component/SeslSwitchColors;

    iput-object p4, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p5, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$enabled:Z

    iput p7, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$$changed:I

    iput p8, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$tmp0_rcvr:Lcom/samsung/sesl/compose/component/SeslSwitchDefault;

    iget v1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$fraction:F

    iget-object v2, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$switchColors:Lcom/samsung/sesl/compose/component/SeslSwitchColors;

    iget-object v3, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v4, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v5, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$enabled:Z

    iget p1, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$$changed:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Lcom/samsung/sesl/compose/component/SeslSwitchDefault$Thumb$1;->$$default:I

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/sesl/compose/component/SeslSwitchDefault;->Thumb(FLcom/samsung/sesl/compose/component/SeslSwitchColors;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
