.class final Lcom/android/systemui/media/mediaoutput/icons/action/CloseKt$Close$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/CloseKt$Close$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/action/CloseKt$Close$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/action/CloseKt$Close$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/CloseKt$Close$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/CloseKt$Close$2;

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
    .locals 19

    const v0, 0x419ffd8b    # 19.9988f

    const v1, 0x41e6edfa

    const v2, 0x41da240b

    const v3, 0x419ffae1    # 19.9975f

    const v4, 0x414badac

    const v5, 0x413219ce    # 11.1313f

    new-instance v18, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    double-to-float v9, v6

    sget-object v6, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v16, 0xe0

    const/16 v17, 0x0

    const-string v7, "Close"

    const/high16 v10, 0x42200000    # 40.0f

    const/high16 v11, 0x42200000    # 40.0f

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, v18

    move v8, v9

    invoke-direct/range {v6 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v9, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v6, 0xffffffffL

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v10

    const/4 v8, 0x0

    invoke-direct {v9, v10, v11, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v6

    invoke-direct {v10, v6, v7, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v7, 0x41e08be1

    const v8, 0x412ccccd    # 10.8f

    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v12, 0x41e2dd2f    # 28.358f

    const v13, 0x412ccccd    # 10.8f

    const v14, 0x41e52eb2

    const v15, 0x412e9168

    const v16, 0x41e6f319    # 28.8687f

    const v17, 0x413219ce    # 11.1313f

    move-object v11, v6

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x41e8b780

    const v13, 0x4135a305

    const v14, 0x41e9999a    # 29.2f

    const v15, 0x413a4396

    const v16, 0x41e9999a    # 29.2f

    const v17, 0x413ee3bd

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x41e9999a    # 29.2f

    const v13, 0x4143844d    # 12.2198f

    const v14, 0x41e8b780

    const v15, 0x414824dd    # 12.509f

    const v16, 0x41e6f2e5

    const v17, 0x414badac

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41e6f2e5

    invoke-virtual {v6, v7, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x41acc9ef

    invoke-virtual {v6, v7, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x41e6f319    # 28.8687f

    invoke-virtual {v6, v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v12, 0x41e8b780

    const v13, 0x41dbe873

    const v14, 0x41e9999a    # 29.2f

    const v15, 0x41de38bb

    const v16, 0x41e9999a    # 29.2f

    const v17, 0x41e08903

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x41e9999a    # 29.2f

    const v13, 0x41e2d94b    # 28.3561f

    const v14, 0x41e8b780

    const v15, 0x41e5295f

    const v16, 0x41e6f319    # 28.8687f

    const v17, 0x41e6edfa

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x41e52d0e    # 28.647f

    const v13, 0x41e8b3d0

    const v14, 0x41e2dc92

    const v15, 0x41e992a3    # 29.1966f

    const v16, 0x41e08b78    # 28.0681f

    const v17, 0x41e992a3    # 29.1966f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x41de39f5

    const v13, 0x41e992a3    # 29.1966f

    const v14, 0x41dbe8dc

    const v15, 0x41e8b333

    const v16, 0x41da26b5    # 27.2689f

    const v17, 0x41e6edfa

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x41da26b5    # 27.2689f

    invoke-virtual {v6, v7, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x41acc9ba

    invoke-virtual {v6, v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v7, 0x414bb2ff

    invoke-virtual {v6, v7, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v12, 0x414826e9

    const v13, 0x41e8b3d0

    const v14, 0x41438c15

    const v15, 0x41e992a3    # 29.1966f

    const v16, 0x413ee3bd

    const v17, 0x41e992a3    # 29.1966f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x413a4189    # 11.641f

    const v13, 0x41e992a3    # 29.1966f

    const v14, 0x4135a5e3    # 11.353f

    const v15, 0x41e8b405

    const v16, 0x413219ce    # 11.1313f

    const v17, 0x41e6edfa

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x412e9100

    const v13, 0x41e5295f

    const v14, 0x412ccccd    # 10.8f

    const v15, 0x41e2d94b    # 28.3561f

    const v16, 0x412ccccd    # 10.8f

    const v17, 0x41e08903

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x412ccccd    # 10.8f

    const v13, 0x41de38bb

    const v14, 0x412e9100

    const v15, 0x41dbe873

    const v16, 0x413219ce    # 11.1313f

    const v17, 0x41da240b

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v6, v5, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x4193339c

    invoke-virtual {v6, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v6, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v12, 0x412e9100

    const v13, 0x414824dd    # 12.509f

    const v14, 0x412ccccd    # 10.8f

    const v15, 0x4143844d    # 12.2198f

    const v16, 0x412ccccd    # 10.8f

    const v17, 0x413ee3bd

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x412ccccd    # 10.8f

    const v13, 0x413a4396

    const v14, 0x412e9100

    const v15, 0x4135a305

    const v16, 0x413219ce    # 11.1313f

    const v17, 0x413219ce    # 11.1313f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x4135a29c

    const v13, 0x412e9100

    const v14, 0x413a4467

    const v15, 0x412ccccd    # 10.8f

    const v16, 0x413ee632    # 11.9312f

    const v17, 0x412ccccd    # 10.8f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v12, 0x41438866

    const v13, 0x412ccccd    # 10.8f

    const v14, 0x41482a30

    const v15, 0x412e9100

    const v16, 0x414bb296    # 12.7311f

    const v17, 0x413219ce    # 11.1313f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x414bb296    # 12.7311f

    invoke-virtual {v6, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x41932eb2

    invoke-virtual {v6, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v0, 0x41da2618

    const v1, 0x41321b09

    invoke-virtual {v6, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v12, 0x41dbe910    # 27.4888f

    const v13, 0x412e91d1

    const v14, 0x41de3a2a

    const v15, 0x412ccccd    # 10.8f

    const v16, 0x41e08be1

    const v17, 0x412ccccd    # 10.8f

    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v7, v6, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v13, 0x0

    const/high16 v14, 0x40800000    # 4.0f

    const/4 v8, 0x0

    const v11, 0x3ecccccd    # 0.4f

    const/4 v12, 0x0

    move-object/from16 v6, v18

    invoke-static/range {v6 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
