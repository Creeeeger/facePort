.class final Lcom/android/systemui/media/mediaoutput/icons/action/RemoteKt$Remote$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/RemoteKt$Remote$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/action/RemoteKt$Remote$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/action/RemoteKt$Remote$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/action/RemoteKt$Remote$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/action/RemoteKt$Remote$2;

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
    .locals 24

    const v0, 0x411f82aa

    const/high16 v1, 0x41780000    # 15.5f

    new-instance v14, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    double-to-float v5, v2

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v12, 0xe0

    const/4 v13, 0x0

    const-string v3, "Remote"

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v7, 0x41c00000    # 24.0f

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v14

    move v4, v5

    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    const/4 v12, 0x0

    invoke-direct {v5, v2, v3, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v15, 0xff000000L

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    invoke-direct {v6, v2, v3, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    sget-object v2, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    const v2, 0x417cac71    # 15.7921f

    const/high16 v3, 0x41b00000    # 22.0f

    const v4, 0x410358e2    # 8.2092f

    invoke-static {v2, v3, v4, v3}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v3

    const/high16 v22, 0x40b00000    # 5.5f

    const v23, 0x4199c817

    const v18, 0x40d6d014

    const/high16 v19, 0x41b00000    # 22.0f

    const/high16 v20, 0x40b00000    # 5.5f

    const v21, 0x41a60c4a    # 20.756f

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v4, 0x40b00000    # 5.5f

    const v7, 0x4098dfa4

    invoke-virtual {v3, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v22, 0x410358e2    # 8.2092f

    const/high16 v23, 0x40000000    # 2.0f

    const/high16 v18, 0x40b00000    # 5.5f

    const v19, 0x404f9db2    # 3.244f

    const v20, 0x40d6d014

    const/high16 v21, 0x40000000    # 2.0f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const/high16 v22, 0x41940000    # 18.5f

    const v23, 0x4098dfa4

    const v18, 0x418a4ea5

    const/high16 v19, 0x40000000    # 2.0f

    const/high16 v20, 0x41940000    # 18.5f

    const v21, 0x404f9db2    # 3.244f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v2, 0x41940000    # 18.5f

    const v4, 0x4199c817

    invoke-virtual {v3, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v22, 0x417cac71    # 15.7921f

    const/high16 v23, 0x41b00000    # 22.0f

    const/high16 v18, 0x41940000    # 18.5f

    const v19, 0x41a60c4a    # 20.756f

    const v20, 0x418a4ea5

    const/high16 v21, 0x41b00000    # 22.0f

    invoke-virtual/range {v17 .. v23}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v3, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const v7, 0x3fe4924a

    const/high16 v10, 0x40800000    # 4.0f

    move-object v2, v14

    move v4, v13

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v5, v2, v3, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    invoke-direct {v6, v2, v3, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v3, 0x41142bd4

    const v4, 0x41024952

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v3, 0x40b248e9

    const v4, 0x403248e9    # 2.7857f

    const v7, 0x4036daba    # 2.8571f

    invoke-virtual {v2, v4, v7, v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    const v3, -0x3f4db717

    invoke-virtual {v2, v4, v7, v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v3, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    const v7, 0x3fb6db6e

    const/4 v8, 0x0

    move-object v2, v14

    move v4, v13

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v2

    invoke-direct {v5, v2, v3, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v2

    invoke-direct {v6, v2, v3, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v16, 0x4114bc6a    # 9.296f

    const/high16 v17, 0x41780000    # 15.5f

    const v18, 0x410c0553

    const v19, 0x416f0a3d    # 14.94f

    const v20, 0x410c0553

    const v21, 0x416402de    # 14.2507f

    move-object v15, v2

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x410c0553

    const v17, 0x4158f5c3    # 13.56f

    const v18, 0x4114bc6a    # 9.296f

    const/high16 v19, 0x41500000    # 13.0f

    const v20, 0x411f82aa

    const/high16 v21, 0x41500000    # 13.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x412a48e9

    const/high16 v17, 0x41500000    # 13.0f

    const/high16 v18, 0x41330000    # 11.1875f

    const v19, 0x4158f5c3    # 13.56f

    const/high16 v20, 0x41330000    # 11.1875f

    const v21, 0x416402de    # 14.2507f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v16, 0x41330000    # 11.1875f

    const v17, 0x416f0a3d    # 14.94f

    const v18, 0x412a48e9

    const/high16 v19, 0x41780000    # 15.5f

    const v20, 0x411f82aa

    const/high16 v21, 0x41780000    # 15.5f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v3, 0x416082aa

    invoke-virtual {v2, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v16, 0x4155bc6a

    const/high16 v17, 0x41780000    # 15.5f

    const v18, 0x414d0553

    const v19, 0x416f0a3d    # 14.94f

    const v20, 0x414d0553

    const v21, 0x416402de    # 14.2507f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x414d0553

    const v17, 0x4158f5c3    # 13.56f

    const v18, 0x4155bc6a

    const/high16 v19, 0x41500000    # 13.0f

    const v20, 0x416082aa

    const/high16 v21, 0x41500000    # 13.0f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x416b48e9

    const/high16 v17, 0x41500000    # 13.0f

    const/high16 v18, 0x41740000    # 15.25f

    const v19, 0x4158f5c3    # 13.56f

    const/high16 v20, 0x41740000    # 15.25f

    const v21, 0x416402de    # 14.2507f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v16, 0x41740000    # 15.25f

    const v17, 0x416f0a3d    # 14.94f

    const v18, 0x416b48e9

    const/high16 v19, 0x41780000    # 15.5f

    const v20, 0x416082aa

    const/high16 v21, 0x41780000    # 15.5f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v1, 0x41993d08

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v16, 0x4114bc6a    # 9.296f

    const v17, 0x41993d08

    const v18, 0x410c0553

    const v19, 0x4194c227

    const v20, 0x410c0553

    const v21, 0x418f3e42

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x410c0553

    const v17, 0x4189b7e9

    const v18, 0x4114bc6a    # 9.296f

    const v19, 0x41853d08

    const v20, 0x411f82aa

    const v21, 0x41853d08

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x412a48e9

    const v17, 0x41853d08

    const/high16 v18, 0x41330000    # 11.1875f

    const v19, 0x4189b7e9

    const/high16 v20, 0x41330000    # 11.1875f

    const v21, 0x418f3e42

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v16, 0x41330000    # 11.1875f

    const v17, 0x4194c227

    const v18, 0x412a48e9

    const v19, 0x41993d08

    const v20, 0x411f82aa

    const v21, 0x41993d08

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v0, 0x414d0553

    const v1, 0x418f3e42

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v16, 0x414d0553

    const v17, 0x4189b7e9

    const v18, 0x4155bc6a

    const v19, 0x41853d08

    const v20, 0x416082aa

    const v21, 0x41853d08

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x416b48e9

    const v17, 0x41853d08

    const/high16 v18, 0x41740000    # 15.25f

    const v19, 0x4189b7e9

    const/high16 v20, 0x41740000    # 15.25f

    const v21, 0x418f3e42

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const/high16 v16, 0x41740000    # 15.25f

    const v17, 0x4194c227

    const v18, 0x416b48e9

    const v19, 0x41993d08

    const v20, 0x416082aa

    const v21, 0x41993d08

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v16, 0x4155bc6a

    const v17, 0x41993d08

    const v18, 0x414d0553

    const v19, 0x4194c227

    const v20, 0x414d0553

    const v21, 0x418f3e42

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v3, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v2, v14

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
