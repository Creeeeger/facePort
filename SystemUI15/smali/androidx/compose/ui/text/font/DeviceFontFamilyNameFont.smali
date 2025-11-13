.class public final Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;
.super Landroidx/compose/ui/text/font/AndroidFont;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final familyName:Ljava/lang/String;

.field public final style:I

.field public final weight:Landroidx/compose/ui/text/font/FontWeight;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V
    .locals 3

    sget-object v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->OptionalLocal:I

    sget-object v1, Landroidx/compose/ui/text/font/NamedFontLoader;->INSTANCE:Landroidx/compose/ui/text/font/NamedFontLoader;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p4, v2}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iput p3, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;ILandroidx/compose/ui/text/font/FontVariation$Settings;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;

    iget-object v1, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    iget-object v3, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v3, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p1, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    iget v3, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    invoke-static {v3, v1}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p1, p1, Landroidx/compose/ui/text/font/AndroidFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getStyle-_-LCdwA()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    return p0
.end method

.method public final getWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    iget v2, v2, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    iget v2, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontVariation$Settings;->settings:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Font(familyName=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeviceFontFamilyName(name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->familyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/ui/text/font/DeviceFontFamilyNameFont;->style:I

    invoke-static {p0}, Landroidx/compose/ui/text/font/FontStyle;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
