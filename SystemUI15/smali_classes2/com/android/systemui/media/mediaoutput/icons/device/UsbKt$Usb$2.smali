.class final Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt$Usb$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt$Usb$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt$Usb$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt$Usb$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt$Usb$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt$Usb$2;

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

    const-string v1, "Usb"

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

    const v0, 0x4152985f    # 13.1622f

    const v1, 0x41dc1b09

    const v2, 0x41b6b39c

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v5

    const v6, 0x4161126f    # 14.067f

    invoke-virtual {v5, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v5, v0, v6, v0, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v0, 0x41b8ff63

    const v1, 0x41e81b09

    invoke-virtual {v5, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v2, 0x414e00d2

    invoke-virtual {v5, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x413a985f    # 11.6622f

    const v21, 0x41de6704

    const v16, 0x41434dd3    # 12.2065f

    const v17, 0x41e81b09

    const v18, 0x413a985f    # 11.6622f

    const v19, 0x41e3c083    # 28.469f

    move-object v15, v5

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x413a985f    # 11.6622f

    const v6, 0x415c7ae1    # 13.78f

    invoke-virtual {v5, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x414e00d2

    const v21, 0x4149126f    # 12.567f

    const v16, 0x413a985f    # 11.6622f

    const v17, 0x4151c77a

    const v18, 0x41434dd3    # 12.2065f

    const v19, 0x4149126f    # 12.567f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x4149126f    # 12.567f

    invoke-virtual {v5, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41c2b39c

    const v21, 0x415c7ae1    # 13.78f

    const v16, 0x41be5917

    const v17, 0x4149126f    # 12.567f

    const v18, 0x41c2b39c

    const v19, 0x4151c77a

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41c2b39c

    const v6, 0x41de6704

    invoke-virtual {v5, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41b8ff63

    const v21, 0x41e81b09

    const v16, 0x41c2b39c

    const v17, 0x41e3c083    # 28.469f

    const v18, 0x41be5917

    const v19, 0x41e81b09

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v5, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

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

    const v0, 0x41b3f2e5

    const v1, 0x4160f909

    const v2, 0x41a7f2e5

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v5

    const v6, 0x4107c9ef

    invoke-virtual {v5, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x417019ce    # 15.0063f

    invoke-virtual {v5, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v2, 0x415819ce    # 13.5063f

    invoke-virtual {v5, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x40feb924

    invoke-virtual {v5, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4167ab36

    const v21, 0x40df93de

    const v16, 0x415819ce    # 13.5063f

    const v17, 0x40ed8bac

    const v18, 0x415f161e

    const v19, 0x40df93de

    move-object v15, v5

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41ac2a30

    const v6, 0x40df93de

    invoke-virtual {v5, v2, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41b3f2e5

    const v21, 0x40feb924

    const v16, 0x41b074f1

    const v17, 0x40df93de

    const v18, 0x41b3f2e5

    const v19, 0x40ed8bac

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v5, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v5, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

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

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x4182c63f

    const v15, 0x413e8b44    # 11.909f

    invoke-virtual {v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v0, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v6, -0x3feb4396    # -2.324f

    invoke-virtual {v0, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v0, v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v16, 0x0

    const/high16 v17, 0x40800000    # 4.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move-object v0, v12

    move v2, v14

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v16

    move/from16 v8, v17

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x419586c2

    invoke-virtual {v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v1, -0x3feb4396    # -2.324f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

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
