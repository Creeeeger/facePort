.class public abstract Landroidx/compose/ui/text/font/DeviceFontFamilyNameFontKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static Font-vxs03AY$default(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;)Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/font/FontVariation$Settings;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    invoke-direct {v0, v2}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    new-instance v2, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    invoke-direct {v2, p0, p1, v1, v0}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V

    return-object v2
.end method
