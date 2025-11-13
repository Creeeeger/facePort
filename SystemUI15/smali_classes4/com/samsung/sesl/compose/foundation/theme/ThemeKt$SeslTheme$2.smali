.class final Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $darkTheme:Z

.field final synthetic $tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;ZLkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;",
            "Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;",
            "Z",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    iput-object p3, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    iput-boolean p4, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$darkTheme:Z

    iput-object p5, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$content:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p2, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt;->LocalOneUiOpenTheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v0, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    sget-object v0, Lcom/samsung/sesl/compose/foundation/theme/ColorSchemeKt;->LocalSeslColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v1, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    filled-new-array {p2, v0}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    new-instance v0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;

    iget-object v1, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$tokenScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;

    iget-boolean v2, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$darkTheme:Z

    iget-object v3, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$colorScheme:Lcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;

    iget-object p0, p0, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2;->$content:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/sesl/compose/foundation/theme/ThemeKt$SeslTheme$2$1;-><init>(Lcom/samsung/sesl/compose/foundation/theme/SeslTokenScheme;ZLcom/samsung/sesl/compose/foundation/theme/SeslColorScheme;Lkotlin/jvm/functions/Function2;)V

    const p0, -0x5929f465

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
