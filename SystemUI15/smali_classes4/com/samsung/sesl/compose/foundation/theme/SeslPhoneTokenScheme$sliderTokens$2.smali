.class final Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;
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


# instance fields
.field final synthetic this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;


# direct methods
.method public constructor <init>(Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 48

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v1, v1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->defaultTokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    invoke-interface {v1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getSliderTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    move-result-object v1

    new-instance v15, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v3, 0x7f060867

    invoke-static {v3, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v3

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v5, 0x7f060866

    invoke-static {v5, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v5

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v7, 0x7f0607db

    invoke-static {v7, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v9

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v7, 0x7f0607dc

    invoke-static {v7, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v11

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v7, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0607e2

    goto :goto_0

    :cond_0
    const v2, 0x7f0607e3

    :goto_0
    invoke-static {v2, v7}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v16

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v7, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0607e4

    goto :goto_1

    :cond_1
    const v2, 0x7f0607e5

    :goto_1
    invoke-static {v2, v7}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v22

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v7, 0x7f06086b

    invoke-static {v7, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v24

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$sliderTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v2, 0x7f06086a

    invoke-static {v2, v0}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v19

    const/16 v21, 0x0

    move-object v2, v15

    move-wide v7, v13

    move-wide/from16 v26, v13

    move-wide/from16 v13, v16

    move-object v0, v15

    move-wide/from16 v15, v22

    move-wide/from16 v17, v24

    invoke-direct/range {v2 .. v21}, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;-><init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;

    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->thumbFillColor:J

    move-wide/from16 v5, v26

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    move-wide/from16 v29, v3

    goto :goto_3

    :cond_2
    iget-wide v3, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->thumbFillColor:J

    goto :goto_2

    :goto_3
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateThumbStrokeColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_4
    move-wide/from16 v31, v3

    goto :goto_5

    :cond_3
    iget-wide v3, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateThumbStrokeColor:J

    goto :goto_4

    :goto_5
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveThumbStrokeColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_4

    :goto_6
    move-wide/from16 v33, v3

    goto :goto_7

    :cond_4
    iget-wide v3, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveThumbStrokeColor:J

    goto :goto_6

    :goto_7
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTrackColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_8
    move-wide/from16 v35, v3

    goto :goto_9

    :cond_5
    iget-wide v3, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTrackColor:J

    goto :goto_8

    :goto_9
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactivateTrackColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_6

    :goto_a
    move-wide/from16 v37, v3

    goto :goto_b

    :cond_6
    iget-wide v3, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactivateTrackColor:J

    goto :goto_a

    :goto_b
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapActivateColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_7

    :goto_c
    move-wide/from16 v39, v3

    goto :goto_d

    :cond_7
    iget-wide v3, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapActivateColor:J

    goto :goto_c

    :goto_d
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapInactiveColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_8

    :goto_e
    move-wide/from16 v41, v3

    goto :goto_f

    :cond_8
    iget-wide v3, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->overlapInactiveColor:J

    goto :goto_e

    :goto_f
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTickColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_9

    :goto_10
    move-wide/from16 v43, v3

    goto :goto_11

    :cond_9
    iget-wide v3, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->activateTickColor:J

    goto :goto_10

    :goto_11
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveTickColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_a

    move-wide/from16 v45, v3

    goto :goto_12

    :cond_a
    iget-wide v0, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;->inactiveTickColor:J

    move-wide/from16 v45, v0

    :goto_12
    const/16 v47, 0x0

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v47}, Lcom/samsung/sesl/compose/component/tokens/SeslSliderTokens;-><init>(JJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
