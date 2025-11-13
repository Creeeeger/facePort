.class public final Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformFontLoader;


# instance fields
.field public final cacheKey:Ljava/lang/Object;

.field public final loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->cacheKey:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final awaitLoad(Landroidx/compose/ui/text/font/Font;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    check-cast p0, Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCacheKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->cacheKey:Ljava/lang/Object;

    return-object p0
.end method

.method public final loadBlocking(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    check-cast p0, Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
