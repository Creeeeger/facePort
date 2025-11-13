.class final Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt$Hdmi$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt$Hdmi$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt$Hdmi$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt$Hdmi$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt$Hdmi$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt$Hdmi$2;

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

    const-string v1, "Hdmi"

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

    const v0, 0x4101bd3c

    const v1, 0x41714c98

    const v2, 0x418fc49c    # 17.971f

    invoke-static {v0, v1, v0, v2}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v5

    const v20, 0x4130e83e

    const v21, 0x41a75a1d    # 20.919f

    const v16, 0x4101bd3c

    const v17, 0x419cc5a2

    const v18, 0x4116e632    # 9.4312f

    const v19, 0x41a75a1d    # 20.919f

    move-object v15, v5

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v6, 0x41a75a1d    # 20.919f

    const v7, 0x41c78c15

    invoke-virtual {v5, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41df212d

    const v21, 0x418fc49c    # 17.971f

    const v16, 0x41d48d50    # 26.569f

    const v17, 0x41a75a1d    # 20.919f

    const v18, 0x41df212d

    const v19, 0x419cc5a2

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v6, 0x41df212d

    invoke-static {v5, v6, v1, v0, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v0, 0x41b35a1d    # 22.419f

    invoke-virtual {v5, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v1, 0x4130e83e

    invoke-virtual {v5, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x40d37a78

    const v16, 0x4109a993    # 8.6039f

    const v17, 0x41b35a1d    # 22.419f

    const v18, 0x40d37a78

    const v19, 0x41a36354    # 20.4235f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40d37a78

    const v6, 0x416e9fbe    # 14.914f

    invoke-virtual {v5, v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x40fe2268    # 7.9417f

    const v21, 0x41594c98

    const v16, 0x40d37a78

    const v17, 0x4162de01

    const v18, 0x40e69d49

    const v19, 0x41594c98

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41e077cf

    const v6, 0x41594c98

    invoke-virtual {v5, v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41eb212d

    const v21, 0x416e9fbe    # 14.914f

    const v16, 0x41e658e2

    const v17, 0x41594c98

    const v18, 0x41eb212d

    const v19, 0x4162de01

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41eb212d

    invoke-virtual {v5, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x41c78c15

    const v21, 0x41b35a1d    # 22.419f

    const v16, 0x41eb212d

    const v17, 0x41a36354    # 20.4235f

    const v18, 0x41db2b02    # 27.396f

    const v19, 0x41b35a1d    # 22.419f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v5, v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

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

    const v1, 0x411df694

    const v2, 0x4194a05c

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v1, 0x418275c3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const/high16 v1, -0x40600000    # -1.25f

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)V

    const v1, -0x3e7d8a3d

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
