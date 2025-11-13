.class public final Lcom/samsung/sesl/compose/component/SeslTopAppBarDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AppBarHeight:F

.field public static final INSTANCE:Lcom/samsung/sesl/compose/component/SeslTopAppBarDefaults;

.field public static final TopAppBarTitleSlotInsetStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 34

    new-instance v0, Lcom/samsung/sesl/compose/component/SeslTopAppBarDefaults;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/component/SeslTopAppBarDefaults;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/component/SeslTopAppBarDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslTopAppBarDefaults;

    const/16 v0, 0x40

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/samsung/sesl/compose/component/SeslTopAppBarDefaults;->AppBarHeight:F

    new-instance v2, Landroidx/compose/ui/text/TextStyle;

    const/16 v0, 0x15

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const v32, 0xfffffd

    const/16 v33, 0x0

    invoke-direct/range {v2 .. v33}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x8

    int-to-float v0, v0

    const/4 v1, 0x0

    int-to-float v1, v1

    invoke-static {v0, v1, v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/4 v0, 0x6

    int-to-float v0, v0

    const/16 v2, 0x14

    int-to-float v2, v2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4(FFFF)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v0, 0x22

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    const/16 v0, 0x1c

    int-to-float v0, v0

    sput v0, Lcom/samsung/sesl/compose/component/SeslTopAppBarDefaults;->TopAppBarTitleSlotInsetStart:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
