.class public abstract Landroidx/compose/ui/text/font/FontFamily;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

.field public static final SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/font/DefaultFontFamily;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->Default:Landroidx/compose/ui/text/font/DefaultFontFamily;

    new-instance v0, Landroidx/compose/ui/text/font/GenericFontFamily;

    const-string v1, "sans-serif"

    const-string v2, "FontFamily.SansSerif"

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/GenericFontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    return-void
.end method
