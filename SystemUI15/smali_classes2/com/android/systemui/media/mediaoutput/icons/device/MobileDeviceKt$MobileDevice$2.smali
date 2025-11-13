.class final Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt$MobileDevice$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt$MobileDevice$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt$MobileDevice$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt$MobileDevice$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt$MobileDevice$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt$MobileDevice$2;

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
    .locals 21

    const v0, 0x419e5048

    const v1, 0x41b986c2

    const v2, 0x4110c8b4    # 9.049f

    const v3, 0x411e1062    # 9.879f

    const v4, 0x4153d70a    # 13.24f

    const v5, 0x41d0f3b6    # 26.119f

    const v6, 0x40eb3333    # 7.35f

    const v7, 0x41b6147b    # 22.76f

    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v8, 0x4042000000000000L    # 36.0

    double-to-float v11, v8

    sget-object v8, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v18, 0xe0

    const/16 v19, 0x0

    const-string v9, "MobileDevice"

    const/high16 v12, 0x42100000    # 36.0f

    const/high16 v13, 0x42100000    # 36.0f

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v8, v20

    move v10, v11

    invoke-direct/range {v8 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v8, 0xff000000L

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct {v11, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v12, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v8, 0x0

    invoke-static {v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v8

    invoke-direct {v12, v8, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v8, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v8, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v14, 0x41c13d71    # 24.155f

    const v15, 0x40eb3333    # 7.35f

    const v16, 0x41ca51ec    # 25.29f

    const v17, 0x4107c28f    # 8.485f

    const v18, 0x41ca51ec    # 25.29f

    const v19, 0x411e1062    # 9.879f

    move-object v13, v8

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x41ca51ec    # 25.29f

    invoke-virtual {v8, v9, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41ca51ec    # 25.29f

    const v15, 0x41dc1eb8    # 27.515f

    const v16, 0x41c13d71    # 24.155f

    const v17, 0x41e53333    # 28.65f

    const v18, 0x41b6147b    # 22.76f

    const v19, 0x41e53333    # 28.65f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x41e53333    # 28.65f

    invoke-virtual {v8, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x413d851f    # 11.845f

    const v15, 0x41e53333    # 28.65f

    const v16, 0x412b5c29    # 10.71f

    const v17, 0x41dc1eb8    # 27.515f

    const v18, 0x412b5c29    # 10.71f

    const v19, 0x41d0f3b6    # 26.119f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v9, 0x412b5c29    # 10.71f

    invoke-virtual {v8, v9, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x412b5c29    # 10.71f

    const v15, 0x4107c28f    # 8.485f

    const v16, 0x413d851f    # 11.845f

    const v17, 0x40eb3333    # 7.35f

    const v18, 0x4153d70a    # 13.24f

    const v19, 0x40eb3333    # 7.35f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v8, v7, v6, v7, v2}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v8, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x414c8312    # 12.782f

    const v15, 0x4110c8b4    # 9.049f

    const v16, 0x41468f5c    # 12.41f

    const v17, 0x4116c083    # 9.422f

    const v18, 0x41468f5c    # 12.41f

    const v19, 0x411e1062    # 9.879f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41468f5c    # 12.41f

    invoke-virtual {v8, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41468f5c    # 12.41f

    const v15, 0x41d49db2    # 26.577f

    const v16, 0x414c8312    # 12.782f

    const v17, 0x41d7999a    # 26.95f

    const v18, 0x4153d70a    # 13.24f

    const v19, 0x41d7999a    # 26.95f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41d7999a    # 26.95f

    invoke-virtual {v8, v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41b9be77    # 23.218f

    const v15, 0x41d7999a    # 26.95f

    const v16, 0x41bcb852    # 23.59f

    const v17, 0x41d49db2    # 26.577f

    const v18, 0x41bcb852    # 23.59f

    const v19, 0x41d0f3b6    # 26.119f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41bcb852    # 23.59f

    invoke-virtual {v8, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x41bcb852    # 23.59f

    const v15, 0x4116c083    # 9.422f

    const v16, 0x41b9be77    # 23.218f

    const v17, 0x4110c8b4    # 9.049f

    const v18, 0x41b6147b    # 22.76f

    const v19, 0x4110c8b4    # 9.049f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v14, 0x41a210cb

    const v15, 0x41b986c2

    const v16, 0x41a51d15

    const v17, 0x41bc9100

    const v18, 0x41a51d15

    const v19, 0x41c05183

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x41a51d15

    const v15, 0x41c41412    # 24.5098f

    const v16, 0x41a210cb

    const v17, 0x41c71e4f

    const v18, 0x419e5048

    const v19, 0x41c71e4f

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x4181b08a

    const v3, 0x41c71e4f

    invoke-virtual {v8, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v14, 0x417be00d

    const v15, 0x41c71e4f

    const v16, 0x4175c77a

    const v17, 0x41c41412    # 24.5098f

    const v18, 0x4175c77a

    const v19, 0x41c05183

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v14, 0x4175c77a

    const v15, 0x41bc9100

    const v16, 0x417be00d

    const v17, 0x41b986c2

    const v18, 0x4181b08a

    const v19, 0x41b986c2

    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v9, v8, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v15, 0x0

    const/high16 v16, 0x40800000    # 4.0f

    const/4 v10, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object/from16 v8, v20

    invoke-static/range {v8 .. v16}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
