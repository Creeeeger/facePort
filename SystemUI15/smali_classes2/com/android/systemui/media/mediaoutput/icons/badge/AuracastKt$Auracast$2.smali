.class final Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt$Auracast$2;
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
.field public static final INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt$Auracast$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt$Auracast$2;

    invoke-direct {v0}, Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt$Auracast$2;-><init>()V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt$Auracast$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/badge/AuracastKt$Auracast$2;

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
    .locals 27

    const v1, 0x41551893

    const v2, 0x4143c56d

    const v3, 0x40597732

    const v4, 0x416419ce    # 14.2563f

    const v5, 0x40c2710d

    const v6, 0x405b3333    # 3.425f

    new-instance v19, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const-wide/high16 v7, 0x4032000000000000L    # 18.0

    double-to-float v10, v7

    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v17, 0xe0

    const/16 v18, 0x0

    const-string v8, "IcBadgeAuracast"

    const/high16 v11, 0x41900000    # 18.0f

    const/high16 v12, 0x41900000    # 18.0f

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v7, v19

    move v9, v10

    invoke-direct/range {v7 .. v18}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v7, 0xff303030L

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v7

    const/4 v15, 0x0

    invoke-direct {v10, v7, v8, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Landroidx/compose/ui/graphics/SolidColor;

    const-wide v16, 0xffffffffL

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v7

    invoke-direct {v11, v7, v8, v15}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v7, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    sget-object v7, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/ui/graphics/StrokeJoin;->Round:I

    sget-object v7, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/graphics/PathFillType;->EvenOdd:I

    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v8, 0x41100000    # 9.0f

    invoke-virtual {v7, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const/high16 v8, -0x3f000000    # -8.0f

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)V

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v12, 0x41000000    # 8.0f

    const/4 v15, 0x1

    invoke-virtual {v7, v12, v12, v8, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    const/high16 v8, -0x3e800000    # -16.0f

    invoke-virtual {v7, v12, v12, v8, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZ)V

    iget-object v8, v7, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v15, 0x40800000    # 4.0f

    move-object/from16 v7, v19

    const/4 v0, 0x0

    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    new-instance v10, Landroidx/compose/ui/graphics/SolidColor;

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v7

    invoke-direct {v10, v7, v8, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v7, 0x0

    invoke-static {v7}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    move-result-wide v7

    invoke-direct {v11, v7, v8, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x403982aa

    const v7, 0x410345a2

    invoke-static {v5, v6, v0, v7}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    move-result-object v0

    const v21, 0x4038a57a

    const v22, 0x41039931

    const v23, 0x4037367a    # 2.8627f

    const v24, 0x4103c77a

    const v25, 0x4035b3d0

    const v26, 0x4103c77a

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40353261

    const v22, 0x4103c77a

    const v23, 0x4034a8c1    # 2.8228f

    const v24, 0x4103c2f8

    const v25, 0x40342752    # 2.8149f

    const v26, 0x4103b50b    # 8.2317f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40322eb2    # 2.7841f

    const v22, 0x410386c2

    const v23, 0x4030f5c3    # 2.765f

    const v24, 0x4103075f

    const v25, 0x40312bd4    # 2.7683f

    const v26, 0x4102809d

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x403ef007

    const v22, 0x40c38034

    const v23, 0x4085e9e2

    const v24, 0x4089a787

    const v25, 0x40bf758e    # 5.9831f

    const v26, 0x405489a0    # 3.3209f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40c05fd9

    const v22, 0x4053851f    # 3.305f

    const v23, 0x40c185f0

    const v24, 0x4053ec57    # 3.3113f

    const v25, 0x40c23958    # 6.0695f

    const v26, 0x40557a78

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40c2ecc0

    const v22, 0x4057089a    # 3.3599f

    const v23, 0x40c303b0

    const v24, 0x40596388    # 3.3967f

    const v25, 0x40c2710d

    const v26, 0x405b212d

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v7, 0x4141b22d    # 12.106f

    invoke-static {v0, v5, v6, v7, v4}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v5, 0x40c2a7f0    # 6.083f

    invoke-virtual {v0, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x40c1cfab    # 6.0566f

    const v22, 0x416419ce    # 14.2563f

    const v23, 0x40c0fc50

    const v24, 0x41644d01

    const v25, 0x40c092a3    # 6.0179f

    const v26, 0x4164ac08    # 14.292f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40bfed29

    const v22, 0x41653dd9

    const v23, 0x40c056d6    # 6.0106f

    const v24, 0x4165ee63

    const v25, 0x40c165fe

    const v26, 0x41663f7d    # 14.3905f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40df46dc

    const v22, 0x416f0ebf

    const v23, 0x410081d8

    const v24, 0x4173b646    # 15.232f

    const v25, 0x41117c1c

    const v26, 0x4173b646    # 15.232f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x41227660

    const v22, 0x4173b646    # 15.232f

    const v23, 0x41334e3c

    const v24, 0x416f1134    # 14.9417f

    const v25, 0x414239c1    # 12.1391f

    const v26, 0x41664674

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x414295ea

    const v22, 0x41660ebf

    const v23, 0x4142d8ae

    const v24, 0x4165ad43

    const v25, 0x4142d639

    const v26, 0x4165404f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x4142d639

    const v22, 0x4164999a

    const v23, 0x41424ea5

    const v24, 0x416419ce    # 14.2563f

    const v25, 0x4141b22d    # 12.106f

    const v26, 0x416419ce    # 14.2563f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()V

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)V

    const v21, 0x4142e632    # 12.1812f

    const v22, 0x405753f8    # 3.3645f

    const v23, 0x4141e704

    const v24, 0x405b4f0e

    const v25, 0x41426595

    const v26, 0x405eee63    # 3.4833f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v4, 0x4171d5d0

    const v5, 0x410dc227

    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x4172566d    # 15.1461f

    const v22, 0x410eac71    # 8.9171f

    const v23, 0x4173b646    # 15.232f

    const v24, 0x410e4f76

    const v25, 0x4173b646    # 15.232f

    const v26, 0x410d4539    # 8.8294f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x4173b646    # 15.232f

    const v22, 0x40d0dd2f    # 6.527f

    const v23, 0x416081d8

    const v24, 0x40905fd9

    const v25, 0x4143c56d

    const v26, 0x40597f63    # 3.3984f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v4, 0x413c205c

    invoke-static {v0, v2, v3, v4, v1}, Landroidx/compose/material/icons/filled/KeyboardCommandKeyKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    const v21, 0x414b02de    # 12.6882f

    const v22, 0x41551893

    const v23, 0x415867a1    # 13.5253f

    const v24, 0x414d5f70

    const v25, 0x415ff34d

    const v26, 0x41407382

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x41677efa

    const v22, 0x4133851f    # 11.22f

    const v23, 0x4167b1c4

    const v24, 0x4123f8a1

    const v25, 0x416078d5    # 14.0295f

    const v26, 0x4116d97f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41308312    # 11.032f

    const v3, 0x407f0f28    # 3.9853f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x412a5bc0    # 10.6474f

    const v22, 0x40526666    # 3.2875f

    const v23, 0x411fa440    # 9.9776f

    const v24, 0x40361cac    # 2.8455f

    const v25, 0x411317c2

    const v26, 0x403170a4    # 2.7725f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x4111c155

    const v22, 0x403138ef    # 2.7691f

    const v23, 0x4110a1cb

    const v24, 0x403126e9    # 2.768f

    const v25, 0x410f923a

    const v26, 0x403126e9    # 2.768f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x410e8312    # 8.907f

    const v22, 0x403126e9    # 2.768f

    const v23, 0x410d5c92

    const v24, 0x40314120    # 2.7696f

    const v25, 0x410c119d

    const v26, 0x403170a4    # 2.7725f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x410c0d1b

    const v3, 0x403170a4    # 2.7725f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x410c0d1b

    const v22, 0x403170a4    # 2.7725f

    const v23, 0x410bd845

    const v24, 0x403178d5    # 2.773f

    const v25, 0x410bd845

    const v26, 0x403178d5    # 2.773f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x4100013b    # 8.0003f

    const v22, 0x403600d2    # 2.8438f

    const v23, 0x40eb41f2    # 7.3518f

    const v24, 0x40503127    # 3.253f

    const v25, 0x40deb852    # 6.96f

    const v26, 0x40796042

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40de32ca

    const v22, 0x407b0a3d

    const v23, 0x40a5b646

    const v24, 0x40d7ac71    # 6.7398f

    const v25, 0x4058a8c1    # 3.3853f

    const v26, 0x4119c8b4

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x405884b6    # 3.3831f

    const v3, 0x4119d917

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x404ebee0    # 3.2304f

    const v22, 0x411dc49c

    const v23, 0x404bd567    # 3.1849f

    const v24, 0x41228ce7    # 10.1594f

    const v25, 0x40508b44    # 3.2585f

    const v26, 0x4126fa44    # 10.4361f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x405f3d08    # 3.4881f

    const v22, 0x4134d4fe    # 11.302f

    const v23, 0x4071ff2e    # 3.7812f

    const v24, 0x413c2618

    const v25, 0x4080538f    # 4.0102f

    const v26, 0x4140f9db    # 12.061f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40809446

    const v22, 0x414125af    # 12.0717f

    const v23, 0x4080e219

    const v24, 0x41413a93

    const v25, 0x40813dd9

    const v26, 0x41413a93

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x4081a858

    const v22, 0x41413a93

    const v23, 0x4082161e

    const v24, 0x41411eb8    # 12.07f

    const v25, 0x408256d6    # 4.0731f

    const v26, 0x4140f55a

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40828db9

    const v22, 0x4140d289

    const v23, 0x40829ba6    # 4.0815f

    const v24, 0x4140a64c

    const v25, 0x40827bb3    # 4.0776f

    const v26, 0x41407382

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40798adb    # 3.8991f

    const v22, 0x41361062    # 11.379f

    const v23, 0x407edaba    # 3.9821f

    const v24, 0x412badac

    const v25, 0x408a0275    # 4.3128f

    const v26, 0x41233611

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40c31687    # 6.0965f

    const v22, 0x40eaff97    # 7.3437f

    const v23, 0x40fbe9e2

    const v24, 0x409051ec    # 4.51f

    const v25, 0x40fc6f69

    const v26, 0x408f7803

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x40fc9446

    const v3, 0x408f3b64    # 4.476f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x4101fd8b

    const v22, 0x408306f7

    const v23, 0x41086e2f

    const v24, 0x40777cee    # 3.867f

    const v25, 0x410f86c2

    const v26, 0x40777cee    # 3.867f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x410fa993    # 8.9789f

    const v22, 0x40777cee    # 3.867f

    const v23, 0x410fcbfb    # 8.9873f

    const v25, 0x410fee63

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x411732ca

    const v22, 0x40781bda    # 3.8767f

    const v23, 0x411da36e

    const v24, 0x4083e0df    # 4.1212f

    const v25, 0x412128f6

    const v26, 0x4090ae7d

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41511eb8    # 13.07f

    const v3, 0x411f6cf4

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x41554c30

    const v22, 0x4127013b

    const v23, 0x41553055

    const v24, 0x412fff2e    # 10.9998f

    const v25, 0x4150d2f2

    const v26, 0x41377a10

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x414c7525

    const v22, 0x413ef27c

    const v23, 0x4144b717

    const v24, 0x41436944

    const v25, 0x413c1bda

    const v26, 0x41436944

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x40f38adb

    const v3, 0x41436944

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x40e74e3c    # 7.2283f

    const v22, 0x41436944

    const v23, 0x40dc4f76

    const v24, 0x413ff62b

    const v25, 0x40d6d9e8

    const v26, 0x413a6944

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40d20419    # 6.563f

    const v22, 0x4135809d

    const v23, 0x40d2b780    # 6.5849f

    const v24, 0x412f71de

    const v25, 0x40d8a090    # 6.7696f

    const v26, 0x412a9724

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x410c58e2    # 8.7717f

    const v3, 0x40ec5bc0    # 7.3862f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x410cd773    # 8.8026f

    const v22, 0x40eab9f5

    const v23, 0x410db439

    const v24, 0x40e9c433    # 7.3052f

    const v25, 0x410ea57a

    const v26, 0x40e9c433    # 7.3052f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x410f9724

    const v22, 0x40e9c433    # 7.3052f

    const v23, 0x41108adb

    const v24, 0x40eadaba    # 7.3392f

    const v25, 0x41110481

    const v26, 0x40ec978d

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41202c3d

    const v3, 0x41120d1b

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x4120985f    # 10.0372f

    const v22, 0x4112d495    # 9.1769f

    const v23, 0x41209ce0

    const v24, 0x4113c56d

    const v25, 0x412037b5

    const v26, 0x411493de

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x411fd70a    # 9.99f

    const v22, 0x4115566d    # 9.3336f

    const v23, 0x411f2618

    const v24, 0x4115d845

    const v25, 0x411e54ca

    const v26, 0x4115f694

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x411e346e

    const v22, 0x4115fb16

    const v23, 0x411e1412    # 9.8799f

    const v24, 0x4115fd8b

    const v25, 0x411df1aa    # 9.8715f

    const v26, 0x4115fd8b

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x410d9168    # 8.848f

    const v3, 0x4115fd8b

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x4108bee0

    const v22, 0x4115fd8b

    const v23, 0x4104b3d0

    const v24, 0x4119d220    # 9.6138f

    const v25, 0x41048a72

    const v26, 0x411e8794

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x410475f7    # 8.2788f

    const v22, 0x4120f27c

    const v23, 0x410554ca

    const v24, 0x41233d08

    const v25, 0x41070069

    const v26, 0x4124f9db    # 10.311f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x4108ac71    # 8.5421f

    const v22, 0x4126b717

    const v23, 0x410ae910    # 8.6819f

    const v24, 0x4127acda    # 10.4797f

    const v25, 0x410d4f0e

    const v26, 0x4127acda    # 10.4797f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x41276042    # 10.461f

    const v3, 0x4127acda    # 10.4797f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x412a295f

    const v22, 0x4127acda    # 10.4797f

    const v23, 0x412cbac7    # 10.7956f

    const v24, 0x4129346e

    const v25, 0x412e1412    # 10.8799f

    const v26, 0x412bab36

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x413049ba    # 11.018f

    const v3, 0x412fb780

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x41309581    # 11.0365f

    const v22, 0x4130425b    # 11.0162f

    const v23, 0x41312f83

    const v24, 0x4131212d

    const v25, 0x4131bc02

    const v26, 0x4131ac08

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x41337319    # 11.2156f

    const v22, 0x413374bc    # 11.216f

    const v23, 0x4135cfab

    const v24, 0x41347cee

    const v25, 0x41383a93

    const v26, 0x41347cee

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x41399375

    const v22, 0x41347cee

    const v23, 0x413adc5d

    const v24, 0x41342e49    # 11.2613f

    const v25, 0x413c1062    # 11.754f

    const v26, 0x41339097

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x413e3611

    const v22, 0x41327803

    const v23, 0x413fc63f    # 11.9859f

    const v24, 0x413095ea

    const v25, 0x41407bb3    # 12.0302f

    const v26, 0x412e46dc

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x41412f1b    # 12.074f

    const v22, 0x412bf7cf    # 10.748f

    const v23, 0x4140f141

    const v24, 0x412985f0

    const v25, 0x413fc84b

    const v26, 0x41276738

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x411ba512

    const v3, 0x40ca25af    # 6.3171f

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x4119212d

    const v22, 0x40c0ed91    # 6.029f

    const v23, 0x41148312    # 9.282f

    const v24, 0x40bb42c4

    const v25, 0x410f4af5    # 8.9558f

    const v26, 0x40bb013b

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x410f2d0e

    const v22, 0x40bb013b

    const v23, 0x410f0d1b

    const v24, 0x40bb013b

    const v25, 0x410eecc0

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x4109dbf5

    const v23, 0x41053dd9

    const v24, 0x40c0346e

    const v25, 0x41029518

    const v26, 0x40c8ea4b

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x40ba76c9    # 5.827f

    const v3, 0x4121923a

    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)V

    const v21, 0x40ad8bac

    const v22, 0x412c2618

    const v23, 0x40acfd22    # 5.4059f

    const v24, 0x4138ef35

    const v25, 0x40b9020c

    const v26, 0x4143c63f    # 12.2359f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v21, 0x40c506f7

    const v22, 0x414e9ce0

    const v23, 0x40dae8a7    # 6.8409f

    const v24, 0x41551687    # 13.318f

    const v25, 0x40f38adb

    const v26, 0x41551687    # 13.318f

    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)V

    const v2, 0x413c1bda

    const v3, 0x41551687    # 13.318f

    const v4, 0x413c205c

    invoke-static {v0, v2, v3, v4, v1}, Landroidx/compose/material/icons/filled/CloseKt$$ExternalSyntheticOutline0;->m(Landroidx/compose/ui/graphics/vector/PathBuilder;FFFF)V

    iget-object v8, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->_nodes:Ljava/util/ArrayList;

    const/4 v14, 0x0

    const/high16 v15, 0x40800000    # 4.0f

    const/4 v9, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    move-object/from16 v7, v19

    invoke-static/range {v7 .. v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILandroidx/compose/ui/graphics/SolidColor;Landroidx/compose/ui/graphics/SolidColor;FIIF)V

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    return-object v0
.end method
