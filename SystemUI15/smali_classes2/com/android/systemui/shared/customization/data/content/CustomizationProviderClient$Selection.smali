.class public final Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final affordanceId:Ljava/lang/String;

.field public final affordanceName:Ljava/lang/String;

.field public final slotId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->slotId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;

    iget-object v1, p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->slotId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->slotId:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->slotId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Selection(slotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->slotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", affordanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", affordanceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClient$Selection;->affordanceName:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
