.class final Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$listTokens$2;
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

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$listTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$listTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v1, v1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->defaultTokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    invoke-interface {v1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getListTokens()Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    move-result-object v1

    new-instance v8, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$listTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0607bf

    goto :goto_0

    :cond_0
    const v0, 0x7f0607c0

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v3

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    const/4 v7, 0x0

    move-object v2, v8

    move-wide v5, v9

    invoke-direct/range {v2 .. v7}, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;

    iget-wide v2, v8, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbActivateColor:J

    invoke-static {v2, v3, v9, v10}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    move-wide v12, v2

    goto :goto_2

    :cond_1
    iget-wide v2, v1, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbActivateColor:J

    goto :goto_1

    :goto_2
    iget-wide v2, v8, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbInactiveColor:J

    invoke-static {v2, v3, v9, v10}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    move-wide v14, v2

    goto :goto_3

    :cond_2
    iget-wide v1, v1, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;->scrollbarThumbInactiveColor:J

    move-wide v14, v1

    :goto_3
    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/samsung/sesl/compose/component/tokens/SeslListTokens;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
