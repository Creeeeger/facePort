.class final Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt$LevelU$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt$LevelU$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt$LevelU$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt$LevelU$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt$LevelU$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt$LevelU$2;

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

    const v0, 0x4192813b

    const v1, 0x4192e148    # 18.36f

    const v2, 0x41000069    # 8.0001f

    const v3, 0x411ae148    # 9.68f

    const v4, 0x41244dd3    # 10.269f

    const v5, 0x41a5a1ff

    const v6, 0x41a86282

    const v7, 0x41d851ec    # 27.04f

    const v8, 0x41d7cd01

    new-instance v21, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v9, 0x4042000000000000L    # 36.0

    double-to-float v12, v9

    sget-object v9, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v19, 0xe0

    const/16 v20, 0x0

    const-string v10, "LevelU"

    const/high16 v13, 0x42100000    # 36.0f

    const/high16 v14, 0x42100000    # 36.0f

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, v21

    move v11, v12

    invoke-direct/range {v9 .. v20}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v9, 0xff000000L

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct {v12, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v9, 0x0

    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v9

    invoke-direct {v13, v9, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v9, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v9, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v15, 0x41d851ec    # 27.04f

    const v16, 0x41d8edc6

    const v17, 0x41d67cee    # 26.811f

    const v18, 0x41da919d

    const v19, 0x41d39db2    # 26.452f

    const v20, 0x41da919d

    move-object v14, v9

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41d0be77    # 26.093f

    const v16, 0x41da919d

    const v17, 0x41cee979    # 25.864f

    const v18, 0x41d8edc6

    const v19, 0x41cee979    # 25.864f

    const v20, 0x41d7cd01

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x41cee979    # 25.864f

    invoke-virtual {v9, v10, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x41cee979    # 25.864f

    const v16, 0x41a741be

    const v17, 0x41d0be77    # 26.093f

    const v18, 0x41a5a1ff

    const v19, 0x41d39db2    # 26.452f

    const v20, 0x41a5a1ff

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41d67cee    # 26.811f

    const v16, 0x41a5a1ff

    const v17, 0x41d851ec    # 27.04f

    const v18, 0x41a741be

    const v19, 0x41d851ec    # 27.04f

    const v20, 0x41a86282

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v9, v7, v8, v4, v5}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v15, 0x412a0831    # 10.627f

    const v17, 0x412db22d    # 10.856f

    const v19, 0x412db22d    # 10.856f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v10, 0x412db22d    # 10.856f

    invoke-virtual {v9, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x412db22d    # 10.856f

    const v16, 0x41d8edc6

    const v17, 0x412a0831    # 10.627f

    const v18, 0x41da919d

    const v19, 0x41244dd3    # 10.269f

    const v20, 0x41da919d

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x411e8b44    # 9.909f

    const v16, 0x41da919d

    const v17, 0x411ae148    # 9.68f

    const v18, 0x41d8edc6

    const v19, 0x411ae148    # 9.68f

    const v20, 0x41d7cd01

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9, v3, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x411ae148    # 9.68f

    const v16, 0x41a741be

    const v17, 0x411e8b44    # 9.909f

    const v18, 0x41a5a1ff

    const v19, 0x41244dd3    # 10.269f

    const v20, 0x41a5a1ff

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v9, v4, v5, v1, v2}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v15, 0x414a5e35    # 12.648f

    const v16, 0x41000069    # 8.0001f

    const/high16 v17, 0x41000000    # 8.0f

    const v18, 0x414a0481

    const/high16 v19, 0x41000000    # 8.0f

    const v20, 0x4192813b

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v9, v4, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v15, 0x41000000    # 8.0f

    const v16, 0x41e0ba93

    const v17, 0x411049ba    # 9.018f

    const v18, 0x41e80034    # 29.0001f

    const v19, 0x41244dd3    # 10.269f

    const v20, 0x41e80034    # 29.0001f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41384dd3    # 11.519f

    const v16, 0x41e80034    # 29.0001f

    const v17, 0x4148978d    # 12.537f

    const v18, 0x41e0ba93

    const v19, 0x4148978d    # 12.537f

    const v20, 0x41d7cd01

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v4, 0x4148978d    # 12.537f

    invoke-virtual {v9, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x4148978d    # 12.537f

    const v16, 0x419f74f1

    const v17, 0x41384dd3    # 11.519f

    const v18, 0x41982f4f

    const v19, 0x41244dd3    # 10.269f

    const v20, 0x41982f4f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41210a3d    # 10.065f

    const v16, 0x41982f4f

    const v17, 0x411de354    # 9.868f

    const v18, 0x41986076    # 19.0471f

    const v19, 0x411ae148    # 9.68f

    const v20, 0x4198bc9f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9, v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x411ae148    # 9.68f

    const v16, 0x4158d97f

    const v17, 0x41592f1b    # 13.574f

    const v18, 0x411ae1b1

    const v19, 0x4192e148    # 18.36f

    const v20, 0x411ae1b1

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41b92b02    # 23.146f

    const v16, 0x411ae1b1

    const v17, 0x41d851ec    # 27.04f

    const v18, 0x4158d97f

    const v19, 0x41d851ec    # 27.04f

    const v20, 0x4192813b

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x4198bc9f

    invoke-virtual {v9, v7, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x41d6d2f2    # 26.853f

    const v16, 0x41986076    # 19.0471f

    const v17, 0x41d53d71    # 26.655f

    const v18, 0x41982f4f

    const v19, 0x41d39db2    # 26.452f

    const v20, 0x41982f4f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41c99db2    # 25.202f

    const v16, 0x41982f4f

    const v17, 0x41c178d5    # 24.184f

    const v18, 0x419f74f1

    const v19, 0x41c178d5    # 24.184f

    const v20, 0x41a86282

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x41c178d5    # 24.184f

    invoke-virtual {v9, v3, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x41c178d5    # 24.184f

    const v16, 0x41e0ba93

    const v17, 0x41c99db2    # 25.202f

    const v18, 0x41e80034    # 29.0001f

    const v19, 0x41d39db2    # 26.452f

    const v20, 0x41e80034    # 29.0001f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v15, 0x41dd9fbe    # 27.703f

    const v16, 0x41e80034    # 29.0001f

    const v17, 0x41e5c28f    # 28.72f

    const v18, 0x41e0ba93

    const v19, 0x41e5c28f    # 28.72f

    const v20, 0x41d7cd01

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x41e5c28f    # 28.72f

    invoke-virtual {v9, v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v15, 0x41e5c28f    # 28.72f

    const v16, 0x414a0481

    const v17, 0x41c09581    # 24.073f

    const v18, 0x41000069    # 8.0001f

    const v19, 0x4192e148    # 18.36f

    const v20, 0x41000069    # 8.0001f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v9, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v10, v9, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v16, 0x0

    const/high16 v17, 0x40800000    # 4.0f

    const/4 v11, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object/from16 v9, v21

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
