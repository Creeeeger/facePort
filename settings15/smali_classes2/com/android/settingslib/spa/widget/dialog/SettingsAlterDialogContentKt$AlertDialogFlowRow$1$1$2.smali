.class final Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $crossAxisPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mainAxisLayoutSize:I

.field final synthetic $mainAxisSpacing:F

.field final synthetic $sequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/layout/Placeable;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $this_Layout:Landroidx/compose/ui/layout/MeasureScope;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;FILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$sequences:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iput p3, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$mainAxisSpacing:F

    iput p4, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$mainAxisLayoutSize:I

    iput-object p5, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$crossAxisPositions:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    const-string v2, "$this$layout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$sequences:Ljava/util/List;

    iget-object v9, v0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$this_Layout:Landroidx/compose/ui/layout/MeasureScope;

    iget v10, v0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$mainAxisSpacing:F

    iget v11, v0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$mainAxisLayoutSize:I

    iget-object v0, v0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlterDialogContentKt$AlertDialogFlowRow$1$1$2;->$crossAxisPositions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_4

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    new-array v6, v3, [I

    move v4, v13

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    iget v5, v5, Landroidx/compose/ui/layout/Placeable;->width:I

    invoke-static {v15}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-ge v4, v7, :cond_0

    invoke-interface {v9, v10}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v7

    goto :goto_2

    :cond_0
    move v7, v13

    :goto_2
    add-int/2addr v5, v7

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->End:Landroidx/compose/foundation/layout/Arrangement$End$1;

    new-array v8, v3, [I

    move v5, v13

    :goto_3
    if-ge v5, v3, :cond_2

    aput v13, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    move-object v3, v4

    move-object v4, v9

    move v5, v11

    move-object/from16 v16, v8

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/foundation/layout/Arrangement$End$1;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    move v4, v13

    :goto_4
    if-ge v4, v3, :cond_3

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    aget v6, v16, v4

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v1, v5, v6, v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
