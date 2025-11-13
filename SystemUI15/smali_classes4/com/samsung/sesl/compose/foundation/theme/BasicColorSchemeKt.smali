.class public abstract Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final LocalSeslBasicColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

.field public static final seslDarkBasicColorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

.field public static final seslLightBasicColorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    new-instance v18, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v20, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue:J

    sget-wide v3, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Text_Light:J

    sget-wide v5, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_L5:J

    sget-wide v7, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Point_Light:J

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->WINDOW_BACKGROUND:J

    sget-wide v11, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->ROUNDED_CORNER_COLOR:J

    sget-wide v13, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Light;->RIPPLE_COLOR:J

    sget-wide v1, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAY_TEXT_D6:J

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v15

    const/16 v17, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v37, v1

    move-wide/from16 v1, v20

    invoke-direct/range {v0 .. v17}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v18, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->seslLightBasicColorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    new-instance v0, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    sget-wide v22, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Text_Dark:J

    sget-wide v24, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->GRAYSCALE_D7:J

    sget-wide v26, Lcom/samsung/sesl/compose/component/tokens/SeslPaletteTokens;->Primary_Blue_Point_Dark:J

    sget-object v1, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->INSTANCE:Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v28, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->WINDOW_BACKGROUND:J

    sget-wide v30, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->ROUNDED_CORNER_COLOR:J

    sget-wide v32, Lcom/samsung/sesl/compose/component/tokens/SeslCommonTokens$Dark;->RIPPLE_COLOR:J

    move-wide/from16 v1, v37

    const v3, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v34

    const/16 v36, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v36}, Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->seslDarkBasicColorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslBasicColorScheme;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt$LocalSeslBasicColorScheme$1;->INSTANCE:Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt$LocalSeslBasicColorScheme$1;

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/samsung/sesl/compose/foundation/theme/BasicColorSchemeKt;->LocalSeslBasicColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final toColor(Lcom/samsung/sesl/compose/component/tokens/SeslColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;)J
    .locals 3

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/TokenSchemeKt;->LocalSeslTokenScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    instance-of v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;

    iget-wide p0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslColorPrimitiveTokens;->color:J

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getSwitchTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    move-result-object p1

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchColorSchemeKeyTokens;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOffColor:J

    goto/16 :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOnColor:J

    goto/16 :goto_0

    :cond_3
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOffColor:J

    goto/16 :goto_0

    :cond_4
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOnColor:J

    goto/16 :goto_0

    :cond_5
    instance-of v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslPopupColorSchemeKeyTokens;

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getPopupTokens()Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

    move-result-object p1

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslPopupColorSchemeKeyTokens;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-ne p0, v2, :cond_6

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;->backgroundColor:J

    goto/16 :goto_0

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    instance-of v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getSliderTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    move-result-object p1

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderColorSchemeKeyTokens;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveTickColor:J

    goto/16 :goto_0

    :pswitch_1
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTickColor:J

    goto/16 :goto_0

    :pswitch_2
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapInactiveColor:J

    goto/16 :goto_0

    :pswitch_3
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapActivateColor:J

    goto/16 :goto_0

    :pswitch_4
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactivateTrackColor:J

    goto/16 :goto_0

    :pswitch_5
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTrackColor:J

    goto/16 :goto_0

    :pswitch_6
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveThumbStrokeColor:J

    goto/16 :goto_0

    :pswitch_7
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateThumbStrokeColor:J

    goto/16 :goto_0

    :pswitch_8
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->thumbFillColor:J

    goto/16 :goto_0

    :cond_8
    instance-of v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerColorSchemeKeyTokens;

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getSpinnerTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

    move-result-object p1

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerColorSchemeKeyTokens;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_a

    if-ne p0, v1, :cond_9

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;->iconColorDefault:J

    goto :goto_0

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_a
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;->itemTextColorNormal:J

    goto :goto_0

    :cond_b
    instance-of v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabColorSchemeKeyTokens;

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getTabTokens()Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    move-result-object p1

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslTabColorSchemeKeyTokens;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_9
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubSelectedTextColor:J

    goto :goto_0

    :pswitch_a
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubTextColor:J

    goto :goto_0

    :pswitch_b
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSelectedTextColor:J

    goto :goto_0

    :pswitch_c
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineTextColor:J

    goto :goto_0

    :pswitch_d
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabSelectedTextColor:J

    goto :goto_0

    :pswitch_e
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTextColor:J

    goto :goto_0

    :pswitch_f
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->selectedTextColor:J

    goto :goto_0

    :pswitch_10
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->textColor:J

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/samsung/sesl/compose/component/tokens/SeslListColorSchemeKeyTokens;

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getListTokens()Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    move-result-object p1

    check-cast p0, Lcom/samsung/sesl/compose/component/tokens/SeslListColorSchemeKeyTokens;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_e

    if-ne p0, v1, :cond_d

    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbInactiveColor:J

    goto :goto_0

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_e
    iget-wide p0, p1, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbActivateColor:J

    :goto_0
    return-wide p0

    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
