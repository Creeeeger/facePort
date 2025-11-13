.class public final Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private accentPrimaryFromScheme:I

.field private accentSecondaryFromScheme:I

.field private backgroundEndFromScheme:I

.field private backgroundStartFromScheme:I

.field private surfaceFromScheme:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    iput p2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    iput p3, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    iput p4, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    iput p5, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;IIIIIILjava/lang/Object;)Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->copy(IIIII)Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    return p0
.end method

.method public final copy(IIIII)Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;
    .locals 6

    new-instance p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;-><init>(IIIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    iget v3, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    iget v3, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    iget v3, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    iget v3, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    iget p1, p1, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAccentPrimaryFromScheme()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    return p0
.end method

.method public final getAccentSecondaryFromScheme()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    return p0
.end method

.method public final getBackgroundEndFromScheme()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    return p0
.end method

.method public final getBackgroundStartFromScheme()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    return p0
.end method

.method public final getSurfaceFromScheme()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setAccentPrimaryFromScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    return-void
.end method

.method public final setAccentSecondaryFromScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    return-void
.end method

.method public final setBackgroundEndFromScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    return-void
.end method

.method public final setBackgroundStartFromScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    return-void
.end method

.method public final setSurfaceFromScheme(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->surfaceFromScheme:I

    iget v1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentPrimaryFromScheme:I

    iget v2, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->accentSecondaryFromScheme:I

    iget v3, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundStartFromScheme:I

    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetColorScheme;->backgroundEndFromScheme:I

    const-string v4, "PluginFaceWidgetColorScheme(surfaceFromScheme="

    const-string v5, ", accentPrimaryFromScheme="

    const-string v6, ", accentSecondaryFromScheme="

    invoke-static {v0, v1, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundStartFromScheme="

    const-string v4, ", backgroundEndFromScheme="

    invoke-static {v0, v2, v1, v3, v4}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
