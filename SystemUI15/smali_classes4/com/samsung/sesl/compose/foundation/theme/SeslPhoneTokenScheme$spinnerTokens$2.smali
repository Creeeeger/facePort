.class final Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$spinnerTokens$2;
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

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$spinnerTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$spinnerTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->defaultTokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    invoke-interface {v0}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getSpinnerTokens()Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

    move-result-object v0

    new-instance v7, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

    iget-object v1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$spinnerTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v2, v1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean v1, v1, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f060801

    goto :goto_0

    :cond_0
    const v1, 0x7f060802

    :goto_0
    invoke-static {v1, v2}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v2

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$spinnerTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->isDarkMode:Z

    if-eqz p0, :cond_1

    const p0, 0x7f0607fb

    goto :goto_1

    :cond_1
    const p0, 0x7f0607fc

    :goto_1
    invoke-static {p0, v1}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    iget-wide v3, v7, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;->itemTextColorNormal:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    move-wide v9, v3

    goto :goto_3

    :cond_2
    iget-wide v3, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;->itemTextColorNormal:J

    goto :goto_2

    :goto_3
    iget-wide v3, v7, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;->iconColorDefault:J

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    move-wide v11, v3

    goto :goto_4

    :cond_3
    iget-wide v0, v0, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;->iconColorDefault:J

    move-wide v11, v0

    :goto_4
    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/sesl/compose/component/tokens/SeslSpinnerTokens;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method
