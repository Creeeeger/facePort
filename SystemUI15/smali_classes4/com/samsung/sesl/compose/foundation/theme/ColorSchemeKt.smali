.class public abstract Lcom/samsung/sesl/compose/foundation/theme/ColorSchemeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LocalSeslColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/ColorSchemeKt$LocalSeslColorScheme$1;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/ColorSchemeKt$LocalSeslColorScheme$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/samsung/sesl/compose/foundation/theme/ColorSchemeKt;->LocalSeslColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static seslLightColorScheme-FD3wquc$default()Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;
    .locals 21

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Text_Light:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v6, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L5:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Point_Light:J

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->WINDOW_BACKGROUND:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v12, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->ROUNDED_CORNER_COLOR:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v14, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->RIPPLE_COLOR:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D6:J

    move-wide/from16 v16, v14

    const v14, 0x3f4ccccd    # 0.8f

    invoke-static {v14, v0, v1}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v19

    new-instance v0, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    move-object v1, v0

    const/16 v18, 0x0

    move-wide/from16 v14, v16

    move-wide/from16 v16, v19

    invoke-direct/range {v1 .. v18}, Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
