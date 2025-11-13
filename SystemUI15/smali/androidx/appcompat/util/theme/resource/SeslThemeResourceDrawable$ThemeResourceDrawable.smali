.class public final Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;
.super Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ResourceDrawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final darkThemeResId:I

.field public final lightThemeResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ResourceDrawable;-><init>()V

    iput p1, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->lightThemeResId:I

    iput p2, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->darkThemeResId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;

    iget v1, p1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->lightThemeResId:I

    iget v3, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->lightThemeResId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->darkThemeResId:I

    iget p1, p1, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->darkThemeResId:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDrawable(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->lightThemeResId:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->darkThemeResId:I

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->lightThemeResId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->darkThemeResId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThemeResourceDrawable(lightThemeResId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->lightThemeResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", darkThemeResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/appcompat/util/theme/resource/SeslThemeResourceDrawable$ThemeResourceDrawable;->darkThemeResId:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
