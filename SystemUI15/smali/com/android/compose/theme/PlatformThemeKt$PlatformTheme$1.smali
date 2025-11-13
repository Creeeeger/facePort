.class final Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;
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
.field final synthetic $androidColorScheme:Lcom/android/compose/theme/AndroidColorScheme;

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $windowSizeClass:Landroidx/compose/material3/windowsizeclass/WindowSizeClass;


# direct methods
.method public constructor <init>(Lcom/android/compose/theme/AndroidColorScheme;Landroidx/compose/material3/windowsizeclass/WindowSizeClass;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/theme/AndroidColorScheme;",
            "Landroidx/compose/material3/windowsizeclass/WindowSizeClass;",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;->$androidColorScheme:Lcom/android/compose/theme/AndroidColorScheme;

    iput-object p2, p0, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;->$windowSizeClass:Landroidx/compose/material3/windowsizeclass/WindowSizeClass;

    iput-object p3, p0, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;->$content:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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

    sget-object p2, Lcom/android/compose/theme/AndroidColorSchemeKt;->LocalAndroidColorScheme:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v0, p0, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;->$androidColorScheme:Lcom/android/compose/theme/AndroidColorScheme;

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    sget-object v0, Lcom/android/compose/windowsizeclass/WindowSizeClassKt;->LocalWindowSizeClass:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    iget-object v1, p0, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;->$windowSizeClass:Landroidx/compose/material3/windowsizeclass/WindowSizeClass;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    filled-new-array {p2, v0}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    new-instance v0, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1$1;

    iget-object p0, p0, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1;->$content:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p0}, Lcom/android/compose/theme/PlatformThemeKt$PlatformTheme$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const p0, 0x1ad37419

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/internal/Lambda;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 v0, 0x38

    invoke-static {p2, p0, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
