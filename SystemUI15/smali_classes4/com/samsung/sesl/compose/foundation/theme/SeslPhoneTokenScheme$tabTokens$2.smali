.class final Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;
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

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 44

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v1, v1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->defaultTokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    invoke-interface {v1}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getTabTokens()Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    move-result-object v1

    new-instance v15, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v3, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v2, :cond_0

    const v2, 0x7f060850

    goto :goto_0

    :cond_0
    const v2, 0x7f06084f

    :goto_0
    invoke-static {v2, v3}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v3

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v5, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f06083b

    goto :goto_1

    :cond_1
    const v2, 0x7f06083a

    :goto_1
    invoke-static {v2, v5}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v5

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v7, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    const v8, 0x7f060846

    const v9, 0x7f060847

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_2

    :cond_2
    move v2, v8

    :goto_2
    invoke-static {v2, v7}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v10

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v7, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v2, :cond_3

    const v2, 0x7f060854

    goto :goto_3

    :cond_3
    const v2, 0x7f060853

    :goto_3
    invoke-static {v2, v7}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v12

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v7, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v2, :cond_4

    move v2, v9

    goto :goto_4

    :cond_4
    move v2, v8

    :goto_4
    invoke-static {v2, v7}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v20

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v7, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v2, :cond_5

    const v2, 0x7f06084c

    goto :goto_5

    :cond_5
    const v2, 0x7f06084b

    :goto_5
    invoke-static {v2, v7}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v22

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v7, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v2, v2, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v2, :cond_6

    move v8, v9

    :cond_6
    invoke-static {v8, v7}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v24

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$tabTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v0, :cond_7

    const v0, 0x7f060844

    goto :goto_6

    :cond_7
    const v0, 0x7f060843

    :goto_6
    invoke-static {v0, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v17

    const/16 v19, 0x0

    move-object v2, v15

    move-wide v7, v10

    move-wide v9, v12

    move-wide/from16 v11, v20

    move-wide/from16 v13, v22

    move-object v0, v15

    move-wide/from16 v15, v24

    invoke-direct/range {v2 .. v19}, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->textColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_8

    :goto_7
    move-wide/from16 v27, v5

    goto :goto_8

    :cond_8
    iget-wide v5, v1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->textColor:J

    goto :goto_7

    :goto_8
    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->selectedTextColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_9

    :goto_9
    move-wide/from16 v29, v5

    goto :goto_a

    :cond_9
    iget-wide v5, v1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->selectedTextColor:J

    goto :goto_9

    :goto_a
    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTextColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_a

    :goto_b
    move-wide/from16 v31, v5

    goto :goto_c

    :cond_a
    iget-wide v5, v1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTextColor:J

    goto :goto_b

    :goto_c
    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabSelectedTextColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    :goto_d
    move-wide/from16 v33, v5

    goto :goto_e

    :cond_b
    iget-wide v5, v1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabSelectedTextColor:J

    goto :goto_d

    :goto_e
    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineTextColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_c

    :goto_f
    move-wide/from16 v35, v5

    goto :goto_10

    :cond_c
    iget-wide v5, v1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineTextColor:J

    goto :goto_f

    :goto_10
    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSelectedTextColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_d

    :goto_11
    move-wide/from16 v37, v5

    goto :goto_12

    :cond_d
    iget-wide v5, v1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSelectedTextColor:J

    goto :goto_11

    :goto_12
    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubTextColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_e

    :goto_13
    move-wide/from16 v39, v5

    goto :goto_14

    :cond_e
    iget-wide v5, v1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubTextColor:J

    goto :goto_13

    :goto_14
    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubSelectedTextColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_f

    move-wide/from16 v41, v5

    goto :goto_15

    :cond_f
    iget-wide v0, v1, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;->subtabTwoLineSubSelectedTextColor:J

    move-wide/from16 v41, v0

    :goto_15
    const/16 v43, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v43}, Lcom/samsung/sesl/compose/component/tokens/SeslTabTokens;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
