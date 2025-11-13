.class public final Lcom/android/compose/theme/typography/TypefaceTokens;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/compose/theme/typography/TypefaceTokens$Companion;

.field public static final WeightMedium:Landroidx/compose/ui/text/font/FontWeight;

.field public static final WeightRegular:Landroidx/compose/ui/text/font/FontWeight;


# instance fields
.field public final brand:Landroidx/compose/ui/text/font/FontListFontFamily;

.field public final plain:Landroidx/compose/ui/text/font/FontListFontFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/compose/theme/typography/TypefaceTokens$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/theme/typography/TypefaceTokens$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/theme/typography/TypefaceTokens;->Companion:Lcom/android/compose/theme/typography/TypefaceTokens$Companion;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v1, Lcom/android/compose/theme/typography/TypefaceTokens;->WeightMedium:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Normal:Landroidx/compose/ui/text/font/FontWeight;

    sput-object v0, Lcom/android/compose/theme/typography/TypefaceTokens;->WeightRegular:Landroidx/compose/ui/text/font/FontWeight;

    return-void
.end method

.method public constructor <init>(Lcom/android/compose/theme/typography/TypefaceNames;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/compose/theme/typography/TypefaceNames;->brand:Ljava/lang/String;

    invoke-static {v0}, Landroidx/compose/ui/text/font/DeviceFontFamilyName;->constructor-impl(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/compose/theme/typography/TypefaceNames;->plain:Ljava/lang/String;

    invoke-static {p1}, Landroidx/compose/ui/text/font/DeviceFontFamilyName;->constructor-impl(Ljava/lang/String;)V

    sget-object v1, Lcom/android/compose/theme/typography/TypefaceTokens;->WeightMedium:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFontKt;->Font-vxs03AY$default(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    move-result-object v3

    sget-object v4, Lcom/android/compose/theme/typography/TypefaceTokens;->WeightRegular:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v0, v4, v2}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFontKt;->Font-vxs03AY$default(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    move-result-object v0

    filled-new-array {v3, v0}, [Landroidx/compose/ui/text/font/Font;

    move-result-object v0

    new-instance v3, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/compose/theme/typography/TypefaceTokens;->brand:Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {p1, v1, v2}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFontKt;->Font-vxs03AY$default(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    move-result-object v0

    invoke-static {p1, v4, v2}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFontKt;->Font-vxs03AY$default(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    move-result-object p1

    filled-new-array {v0, p1}, [Landroidx/compose/ui/text/font/Font;

    move-result-object p1

    new-instance v0, Landroidx/compose/ui/text/font/FontListFontFamily;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/font/FontListFontFamily;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/compose/theme/typography/TypefaceTokens;->plain:Landroidx/compose/ui/text/font/FontListFontFamily;

    return-void
.end method
