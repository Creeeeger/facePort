.class public final Lcom/android/compose/theme/typography/TypefaceNames$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/compose/theme/typography/TypefaceNames$Companion;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/compose/theme/typography/TypefaceNames;
    .locals 3

    new-instance v0, Lcom/android/compose/theme/typography/TypefaceNames;

    sget-object v1, Lcom/android/compose/theme/typography/TypefaceNames$Config;->Brand:Lcom/android/compose/theme/typography/TypefaceNames$Config;

    invoke-static {p0, v1}, Lcom/android/compose/theme/typography/TypefaceNames$Companion;->getTypefaceName(Landroid/content/Context;Lcom/android/compose/theme/typography/TypefaceNames$Config;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/compose/theme/typography/TypefaceNames$Config;->Plain:Lcom/android/compose/theme/typography/TypefaceNames$Config;

    invoke-static {p0, v2}, Lcom/android/compose/theme/typography/TypefaceNames$Companion;->getTypefaceName(Landroid/content/Context;Lcom/android/compose/theme/typography/TypefaceNames$Config;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/compose/theme/typography/TypefaceNames;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static getTypefaceName(Landroid/content/Context;Lcom/android/compose/theme/typography/TypefaceNames$Config;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/compose/theme/typography/TypefaceNames$Config;->getConfigName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/compose/theme/typography/TypefaceNames$Config;->getDefault()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
