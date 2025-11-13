.class final Lcom/android/systemui/media/mediaoutput/icons/device/SoundBarKt$SoundBar$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/SoundBarKt$SoundBar$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/device/SoundBarKt$SoundBar$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/device/SoundBarKt$SoundBar$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/device/SoundBarKt$SoundBar$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/device/SoundBarKt$SoundBar$2;

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
    .locals 25

    const v2, 0x41df851f    # 27.94f

    const v3, 0x41c13717

    const v4, 0x41cbf9a7

    const v5, 0x41b3c674

    const v6, 0x41db0a3d    # 27.38f

    const v7, 0x41ac0034    # 21.5001f

    const v8, 0x41272752

    const v9, 0x419e8d84

    const v10, 0x41d127bb

    const v11, 0x411dafb8    # 9.8554f

    new-instance v24, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v12, 0x4042000000000000L    # 36.0

    double-to-float v15, v12

    sget-object v12, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v22, 0xe0

    const/16 v23, 0x0

    const-string v13, "SoundBar"

    const/high16 v16, 0x42100000    # 36.0f

    const/high16 v17, 0x42100000    # 36.0f

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v12, v24

    move v14, v15

    invoke-direct/range {v12 .. v23}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v12, 0xff000000L

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-direct {v15, v12, v13, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v12, 0x0

    invoke-static {v12}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v13, v0, v1, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v0, v11, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v1, 0x41d123a3

    invoke-virtual {v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v0, v11, v9, v11, v8}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v0, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v1, 0x41a547e3

    invoke-static {v0, v10, v1, v10, v9}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v0, v11, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x41d8923a

    const v19, 0x41ac0034    # 21.5001f

    const v20, 0x41de985f    # 27.8244f

    const v21, 0x41a5f803

    const v22, 0x41de985f    # 27.8244f

    const v23, 0x419e8d84

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41de985f    # 27.8244f

    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x41de985f    # 27.8244f

    const v19, 0x41185254

    const v20, 0x41d8923a

    const v21, 0x410c41f2    # 8.7661f

    const v22, 0x41d127bb

    const v23, 0x410c41f2    # 8.7661f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x410c41f2    # 8.7661f

    invoke-virtual {v0, v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x410edaba    # 8.9284f

    const v19, 0x410c41f2    # 8.7661f

    const v20, 0x4102ce70

    const v21, 0x41185254

    const v22, 0x4102ce70

    const v23, 0x41272752

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4102ce70

    invoke-virtual {v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x4102ce70

    const v19, 0x41a5f803

    const v20, 0x410edaba    # 8.9284f

    const v21, 0x41ac0034    # 21.5001f

    const v22, 0x411dafb8    # 9.8554f

    const v23, 0x41ac0034    # 21.5001f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-static {v0, v11, v7, v6, v4}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v18, 0x41c324dd    # 24.393f

    const v19, 0x41ca28c1

    const v20, 0x41aa8937    # 21.317f

    const v21, 0x41c9477a

    const/high16 v22, 0x41900000    # 18.0f

    const v23, 0x41c9477a

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v18, 0x416af5c3    # 14.685f

    const v19, 0x41c9477a

    const v20, 0x4139be77    # 11.609f

    const v21, 0x41ca28c1

    const v22, 0x4109eb85    # 8.62f

    const v23, 0x41cbf9a7

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4109eb85    # 8.62f

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-static {v0, v6, v3, v6, v4}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    invoke-virtual {v0, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v1, 0x4100f5c3    # 8.06f

    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x40ee2d0e    # 7.443f

    const v19, 0x41b3c674

    const v20, 0x40de147b    # 6.94f

    const v21, 0x41b7cc98

    const v22, 0x40de147b    # 6.94f

    const v23, 0x41bcbc36

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x40de147b    # 6.94f

    const v3, 0x41d207fd

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x40de147b    # 6.94f

    const v19, 0x41d6683e

    const v20, 0x40ec8b44    # 7.392f

    const v21, 0x41d9d4ca

    const v22, 0x40fef9db    # 7.968f

    const v23, 0x41d9d4ca

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x4102b021    # 8.168f

    const v3, 0x41d9be42

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x4134c49c    # 11.298f

    const v19, 0x41d7b611

    const v20, 0x41683d71    # 14.515f

    const v21, 0x41d6b81d

    const/high16 v22, 0x41900000    # 18.0f

    const v23, 0x41d6b81d

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v18, 0x41ac2b02    # 21.521f

    const v19, 0x41d6b81d

    const v20, 0x41c61eb8    # 24.765f

    const v21, 0x41d7bc36

    const v22, 0x41df6042    # 27.922f

    const v23, 0x41d9cc98

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41d9df07    # 27.2339f

    const v3, 0x41e0999a    # 28.075f

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v18, 0x41e30000    # 28.375f

    const v19, 0x41d9df07    # 27.2339f

    const v20, 0x41e53b64    # 28.654f

    const v21, 0x41d8c467

    const v22, 0x41e6ba5e    # 28.841f

    const v23, 0x41d6d6d6

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v18, 0x41e7db23    # 28.982f

    const v19, 0x41d56219

    const v20, 0x41e87ae1    # 29.06f

    const v21, 0x41d38903

    const v22, 0x41e87ae1    # 29.06f

    const v23, 0x41d1a5af

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41e87ae1    # 29.06f

    const v3, 0x41bcbc36

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v18, 0x41e87ae1    # 29.06f

    const v19, 0x41b7cc98

    const v20, 0x41e474bc    # 28.557f

    const v21, 0x41b3c674

    const v22, 0x41df851f    # 27.94f

    const v23, 0x41b3c674

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/16 v19, 0x0

    const/high16 v20, 0x40800000    # 4.0f

    const/4 v14, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move-object/from16 v12, v24

    move-object v1, v13

    move-object v13, v0

    move-object/from16 v16, v1

    invoke-static/range {v12 .. v20}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
