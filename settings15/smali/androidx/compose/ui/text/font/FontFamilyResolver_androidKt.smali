.class public abstract Landroidx/compose/ui/text/font/FontFamilyResolver_androidKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final createFontFamilyResolver(Landroid/content/Context;)Landroidx/compose/ui/text/font/FontFamilyResolverImpl;
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    new-instance v1, Landroidx/compose/ui/text/font/AndroidFontLoader;

    invoke-direct {v1, p0}, Landroidx/compose/ui/text/font/AndroidFontLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    new-instance v2, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;

    invoke-direct {v2, p0}, Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/AndroidFontLoader;Landroidx/compose/ui/text/font/AndroidFontResolveInterceptor;)V

    return-object v0
.end method
