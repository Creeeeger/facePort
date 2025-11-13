.class final Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $$this$pointerInput:Landroidx/compose/ui/input/pointer/PointerInputScope;

.field final synthetic $labsViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

.field final synthetic $tapCount$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/input/pointer/PointerInputScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;",
            "Landroidx/compose/runtime/MutableState;",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$labsViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$tapCount$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/PointerInputScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$tapCount$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    iget-object v5, v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/PointerInputScope;

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    float-to-double v6, v6

    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-wide v8, v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    sget-object v5, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    long-to-int v5, v8

    int-to-double v8, v5

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v8, v10

    cmpl-double v5, v6, v8

    const/4 v6, 0x0

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v7, v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/PointerInputScope;

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    float-to-double v9, v9

    check-cast v7, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    iget-wide v11, v7, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    const/16 v7, 0x20

    shr-long v13, v11, v7

    long-to-int v13, v13

    int-to-double v13, v13

    const-wide v15, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v13, v15

    cmpg-double v9, v9, v13

    if-gez v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    shr-long v9, v11, v7

    long-to-int v7, v9

    int-to-double v9, v7

    const-wide v11, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v9, v11

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v9, v1

    if-gez v1, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-interface {v3, v6}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$tapCount$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_4

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$tapCount$delegate:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lt v1, v2, :cond_4

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$tapCount$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/SettingHomeKt$SettingHome$1$1$1;->$labsViewModel:Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/viewmodel/LabsViewModel;->setShowLabsMenu()V

    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
