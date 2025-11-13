.class final Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;
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

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v1, v1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->defaultTokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    invoke-interface {v1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getSwitchTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    move-result-object v1

    new-instance v12, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v3, 0x7f06082d

    invoke-static {v3, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v3

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->isSystemInDarkTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f06082a

    goto :goto_0

    :cond_0
    const v5, 0x7f060829

    :goto_0
    invoke-static {v5, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v5

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v7, 0x7f060823

    invoke-static {v7, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v7

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$switchTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    const v2, 0x7f06081c

    invoke-static {v2, v0}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v9

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    iget-wide v4, v12, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOnColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    move-wide v14, v4

    goto :goto_2

    :cond_1
    iget-wide v4, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOnColor:J

    goto :goto_1

    :goto_2
    iget-wide v4, v12, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOffColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_3
    move-wide/from16 v16, v4

    goto :goto_4

    :cond_2
    iget-wide v4, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->trackOffColor:J

    goto :goto_3

    :goto_4
    iget-wide v4, v12, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOnColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_5
    move-wide/from16 v18, v4

    goto :goto_6

    :cond_3
    iget-wide v4, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOnColor:J

    goto :goto_5

    :goto_6
    iget-wide v4, v12, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOffColor:J

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    move-wide/from16 v20, v4

    goto :goto_7

    :cond_4
    iget-wide v1, v1, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;->thumbOffColor:J

    move-wide/from16 v20, v1

    :goto_7
    const/16 v22, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v22}, Lcom/samsung/sesl/compose/component/tokens/SeslSwitchTokens;-><init>(JJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
