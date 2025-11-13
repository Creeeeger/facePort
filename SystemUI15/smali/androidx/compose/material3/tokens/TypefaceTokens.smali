.class public final Landroidx/compose/material3/tokens/TypefaceTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Brand:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/TypefaceTokens;

.field public static final Plain:Landroidx/compose/ui/text/font/GenericFontFamily;

.field public static final WeightMedium:Landroidx/compose/ui/text/font/FontWeight;

.field public static final WeightRegular:Landroidx/compose/ui/text/font/FontWeight;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/TypefaceTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/TypefaceTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/TypefaceTokens;->INSTANCE:Landroidx/compose/material3/tokens/TypefaceTokens;

    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/font/FontFamily;->SansSerif:Landroidx/compose/ui/text/font/GenericFontFamily;

    sput-object v1, Landroidx/compose/material3/tokens/TypefaceTokens;->Brand:Landroidx/compose/ui/text/font/GenericFontFamily;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v1, Landroidx/compose/material3/tokens/TypefaceTokens;->Plain:Landroidx/compose/ui/text/font/GenericFontFamily;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v1, Landroidx/compose/material3/tokens/TypefaceTokens;->WeightMedium:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Landroidx/compose/material3/tokens/TypefaceTokens;->WeightRegular:Landroidx/compose/ui/text/font/FontWeight;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
