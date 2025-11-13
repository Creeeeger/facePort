.class final Lcom/android/systemui/media/mediaoutput/icons/device/DockKt$Dock$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/DockKt$Dock$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/DockKt$Dock$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/DockKt$Dock$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/DockKt$Dock$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/DockKt$Dock$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 22

    new-instance v12, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v0, 0x4042000000000000L    # 36.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "Dock"

    const/high16 v4, 0x42100000    # 36.0f

    const/high16 v5, 0x42100000    # 36.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move v2, v3

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v9, 0xff000000L

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v13, 0x0

    invoke-static {v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x41617382

    const v2, 0x40fa6666    # 7.825f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x415581d8

    const v21, 0x410924dd

    const v16, 0x415ade01

    const v17, 0x40fa6666    # 7.825f

    const v18, 0x415581d8

    const v19, 0x41028f5c    # 8.16f

    move-object v15, v0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x415581d8

    const v6, 0x41c0b333

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41617382

    const v21, 0x41c6ac08    # 24.834f

    const v16, 0x415581d8

    const v17, 0x41c3fdf4    # 24.499f

    const v18, 0x415ade01

    const v19, 0x41c6ac08    # 24.834f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41c6ac08    # 24.834f

    const v7, 0x41aed604

    invoke-virtual {v0, v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41b4ced9    # 22.601f

    const v21, 0x41c0b333

    const v16, 0x41b220c5    # 22.266f

    const v17, 0x41c6ac08    # 24.834f

    const v18, 0x41b4ced9    # 22.601f

    const v19, 0x41c3fdf4    # 24.499f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41b4ced9    # 22.601f

    const v8, 0x410924dd

    invoke-virtual {v0, v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41aed604

    const v21, 0x40fa6666    # 7.825f

    const v16, 0x41b4ced9    # 22.601f

    const v17, 0x41028f5c    # 8.16f

    const v18, 0x41b220c5    # 22.266f

    const v19, 0x40fa6666    # 7.825f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x41d2ac08    # 26.334f

    invoke-static {v0, v1, v2, v7, v5}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x413d81d8

    const v21, 0x41c0b333

    const v16, 0x414da1cb    # 12.852f

    const v17, 0x41d2ac08    # 26.334f

    const v18, 0x413d81d8

    const v19, 0x41ca9c0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x413d81d8

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41617382

    const v21, 0x40ca6666    # 6.325f

    const v16, 0x413d81d8

    const v17, 0x40eaa57a

    const v18, 0x414da1cb    # 12.852f

    const v19, 0x40ca6666    # 6.325f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40ca6666    # 6.325f

    invoke-virtual {v0, v7, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41c0ced9    # 24.101f

    const v21, 0x410924dd

    const v16, 0x41b8be77    # 23.093f

    const v17, 0x40ca6666    # 6.325f

    const v18, 0x41c0ced9    # 24.101f

    const v19, 0x40eaa57a

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41c0ced9    # 24.101f

    invoke-virtual {v0, v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41aed604

    const v21, 0x41d2ac08    # 26.334f

    const v16, 0x41c0ced9    # 24.101f

    const v17, 0x41ca9c0f

    const v18, 0x41b8be77    # 23.093f

    const v19, 0x41d2ac08    # 26.334f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0, v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v14

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x419a4ac1

    const v1, 0x41bf6704

    const v2, 0x41853c02

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v1

    const v20, 0x417e7803

    const v21, 0x41b96704

    const v16, 0x4181eb85    # 16.24f

    const v17, 0x41bf6704

    const v18, 0x417e7803

    const v19, 0x41bcb780

    move-object v15, v1

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41853c02

    const v21, 0x41b36704

    const v16, 0x417e7803

    const v17, 0x41b616bc

    const v18, 0x4181eb85    # 16.24f

    const v19, 0x41b36704

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41b36704

    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41a04ac1

    const v21, 0x41b96704

    const v16, 0x419d9b3d    # 19.7008f

    const v17, 0x41b36704

    const v18, 0x41a04ac1

    const v19, 0x41b616bc

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x419a4ac1

    const v21, 0x41bf6704

    const v16, 0x41a04ac1

    const v17, 0x41bcb780

    const v18, 0x419d9b3d    # 19.7008f

    const v19, 0x41bf6704

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v1, v1, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v14

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x41c3f58e

    const v1, 0x41ed669b

    const v2, 0x413801a3

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v1

    const v10, 0x41082196

    const v11, 0x41d41bda

    const v6, 0x411b5f07    # 9.7107f

    const v7, 0x41ed669b

    const v8, 0x41082196

    const v9, 0x41e33c9f

    move-object v5, v1

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41082196

    const v13, 0x4197875f

    invoke-virtual {v1, v2, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x412c1340

    const v11, 0x41858e8a

    const v6, 0x41082196

    const v7, 0x418d9e84

    const v8, 0x41184120

    const v9, 0x41858e8a

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x414981d8

    const v15, 0x41858e8a

    invoke-virtual {v1, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v11, 0x41918e8a

    invoke-virtual {v1, v2, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x412c1340

    invoke-virtual {v1, v2, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41202196    # 10.0082f

    const v2, 0x4197875f

    const v6, 0x41257dbf

    const v7, 0x41918e8a

    const v8, 0x41202196    # 10.0082f

    const v9, 0x41943c9f

    move v15, v11

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41202196    # 10.0082f

    const v11, 0x41d41bda

    invoke-virtual {v1, v2, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x413801a3

    const v2, 0x41e1669b

    const v6, 0x41202196    # 10.0082f

    const v7, 0x41d912a3    # 27.1341f

    const v8, 0x41233c36    # 10.2022f

    const v9, 0x41e1669b

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41cfef00

    const v11, 0x41d41bda

    const v6, 0x41ce60aa

    const v7, 0x41e1669b

    const v8, 0x41cfef00

    const v9, 0x41d912a3    # 27.1341f

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v0, 0x41cfef00

    invoke-virtual {v1, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41c9f62b

    const v11, 0x41918e8a

    const v6, 0x41cfef00

    const v7, 0x41943c9f

    const v8, 0x41cd40ec

    const v9, 0x41918e8a

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v0, 0x41ba2ee6

    invoke-virtual {v1, v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x41858e8a

    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v0, 0x41c9f62b

    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41dbef00

    const v11, 0x4197875f

    const v6, 0x41d3df07    # 26.4839f

    const v7, 0x41858e8a

    const v8, 0x41dbef00

    const v9, 0x418d9e84

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v0, 0x41dbef00

    const v2, 0x41d41bda

    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v10, 0x41c3f58e

    const v11, 0x41ed669b

    const v6, 0x41dbef00

    const v7, 0x41e33c9f

    const v8, 0x41d24c98

    const v9, 0x41ed669b

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    iget-object v1, v1, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v14

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
