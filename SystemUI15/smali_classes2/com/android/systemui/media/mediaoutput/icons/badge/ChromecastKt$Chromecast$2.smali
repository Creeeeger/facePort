.class final Lcom/android/systemui/media/mediaoutput/icons/badge/ChromecastKt$Chromecast$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/badge/ChromecastKt$Chromecast$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/badge/ChromecastKt$Chromecast$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/badge/ChromecastKt$Chromecast$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/badge/ChromecastKt$Chromecast$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/badge/ChromecastKt$Chromecast$2;

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

    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    double-to-float v3, v0

    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v10, 0xe0

    const/4 v11, 0x0

    const-string v1, "IcBadgeChromecast"

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41900000    # 18.0f

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v12

    move v2, v3

    invoke-direct/range {v0 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v0, 0xff303030L

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    const/4 v9, 0x0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v10, 0xffffffffL

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v1, -0x3f000000    # -8.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)V

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v2, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    const/high16 v1, -0x3e800000    # -16.0f

    invoke-virtual {v0, v2, v2, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v8, 0x40800000    # 4.0f

    move-object v0, v12

    move v2, v13

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v14, 0x0

    invoke-static {v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x415b6b51

    const v1, 0x40f5ed29

    const v2, 0x414ccfab

    const v5, 0x40f5eab3

    invoke-static {v0, v1, v2, v5}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v2

    const v5, 0x414cd2f2

    const v6, 0x40cb1759    # 6.3466f

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x40ab2a30

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v6, 0x4137758e

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x411131f9

    const v6, 0x41377454

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x41113405    # 9.0752f

    const v6, 0x4146fd8b

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v5, 0x40a05c92    # 5.0113f

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x408df972

    const v21, 0x413dcb92

    const v16, 0x4096346e

    const v17, 0x4146fd8b

    const v18, 0x408df972

    const v19, 0x4142dfa4

    move-object v15, v2

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x408df972

    const v6, 0x40be6a7f    # 5.9505f

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x40a05c92    # 5.0113f

    const v21, 0x40ac075f

    const v16, 0x408df972

    const v17, 0x40b4432d

    const v18, 0x4096346e

    const v19, 0x40ac075f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x415239c1    # 13.1391f

    const v6, 0x40ac075f

    invoke-virtual {v2, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x415b6b51

    const v21, 0x40be6a7f    # 5.9505f

    const v16, 0x41574d6a    # 13.4564f

    const v17, 0x40ac075f

    const v18, 0x415b6b51

    const v19, 0x40b4432d

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v13

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x415a76c9    # 13.654f

    const v2, 0x4107e83e

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x412d7e28

    const v21, 0x411a0c4a    # 9.628f

    const v16, 0x4148e076    # 12.5548f

    const v17, 0x4107d2f2    # 8.489f

    const v18, 0x4138f0d8

    const v19, 0x410e5879

    move-object v15, v0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x411c923a

    const v21, 0x4146999a

    const v16, 0x41222fec

    const v17, 0x41259db2    # 10.351f

    const v18, 0x411c2ca5

    const v19, 0x41356e2f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x4129205c

    const v6, 0x414650b1    # 12.3947f

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4136793e

    const v21, 0x4122d773    # 10.1776f

    const v16, 0x4128cfab

    const v17, 0x41388e8a

    const v18, 0x412d8db9

    const v19, 0x412bf4f1

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x415a6cf4

    const v21, 0x41147803

    const v16, 0x413f8937    # 11.971f

    const v17, 0x411991d1

    const v18, 0x414c4d01

    const v19, 0x41147803

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v13

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x415a3886

    const v2, 0x41208241

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v20, 0x414004ea

    const v21, 0x412adf3b

    const v16, 0x414fd97f

    const v17, 0x41208241

    const v18, 0x4146cd36

    const v19, 0x412418fc

    move-object v15, v0

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x41352f1b    # 11.324f

    const v21, 0x41467732

    const v16, 0x413906f7

    const v17, 0x4131dd2f    # 11.1165f

    const v18, 0x41352d0e

    const v19, 0x413ba71e    # 11.7283f

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v5, 0x4141bee0

    const v6, 0x41467525

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v20, 0x4148e704

    const v21, 0x4133c155

    const v16, 0x4141bee0

    const v17, 0x413f0275

    const v18, 0x41444817    # 12.2676f

    const v19, 0x41385e9e

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x415a30be    # 13.6369f

    const v21, 0x412d1206

    const v16, 0x414d46dc

    const v17, 0x412f6388

    const v18, 0x4153404f

    const v19, 0x412d1206

    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v13

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    invoke-direct {v3, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static {v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v0

    invoke-direct {v4, v0, v1, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x414ff213

    const v2, 0x413b460b

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v19, 0x414ff213

    const v20, 0x4144c56d

    const v15, 0x414d5461

    const v16, 0x413de632    # 11.8687f

    const v17, 0x414d5604    # 12.8335f

    const v18, 0x41422546    # 12.1341f

    move-object v14, v0

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x41596d5d    # 13.5892f

    const v15, 0x4152902e

    const v16, 0x41475d64

    const v17, 0x4156cd9f

    const v18, 0x41475f70

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v20, 0x413b460b

    const v15, 0x415c0b78    # 13.7528f

    const v16, 0x4142233a

    const v17, 0x415c0b78    # 13.7528f

    const v18, 0x413de632    # 11.8687f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v19, 0x414ff213

    const v15, 0x4156cfab

    const v16, 0x4138a7f0    # 11.541f

    const v17, 0x4152902e

    const v18, 0x4138a7f0    # 11.541f

    invoke-virtual/range {v14 .. v20}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    iget-object v1, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move v2, v13

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
