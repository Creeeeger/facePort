.class public final Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;
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

    invoke-direct {p0}, Landroidx/appcompat/util/theme/SeslThemeResourceHelper$Companion;-><init>()V

    return-void
.end method

.method public static getColorInt(Landroid/content/Context;Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;)I
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceColor$OpenThemeResourceColor;->getColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method
