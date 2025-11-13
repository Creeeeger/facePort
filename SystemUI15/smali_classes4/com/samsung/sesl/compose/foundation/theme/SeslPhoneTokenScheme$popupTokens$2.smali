.class final Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$popupTokens$2;
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

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$popupTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$popupTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object v0, v0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->defaultTokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    invoke-interface {v0}, Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;->getPopupTokens()Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

    move-result-object v0

    new-instance v1, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme$popupTokens$2;->this$0:Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/SeslPhoneTokenScheme;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->isSystemInDarkTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f060785

    goto :goto_0

    :cond_0
    const v2, 0x7f060784

    :goto_0
    invoke-static {v2, p0}, Lcom/samsung/sesl/compose/utils/ext/ContextExtKt;->seslColorResource(ILandroid/content/Context;)J

    move-result-wide v2

    const/4 p0, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    iget-wide v5, v1, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;->backgroundColor:J

    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v5, v0, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;->backgroundColor:J

    :goto_1
    invoke-direct {v2, v5, v6, p0}, Lcom/samsung/sesl/compose/component/tokens/SeslPopupTokens;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
