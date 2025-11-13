.class public abstract Landroidx/compose/ui/text/font/DeviceFontFamilyNameFontKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static Font-vxs03AY$default(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;
    .locals 6

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    :cond_0
    move-object v2, p1

    sget-object p1, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/compose/ui/text/font/FontVariation$Settings;

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    invoke-direct {v4, p1}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    new-instance p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method
