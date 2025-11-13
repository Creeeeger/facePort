.class public final Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appearance:I

.field public final appearanceRegions:Ljava/util/List;

.field public final letterboxDetails:Ljava/util/List;

.field public final navbarColorManagedByIme:Z

.field public final requestedVisibleTypes:I


# direct methods
.method public constructor <init>(ILjava/util/List;ZILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/view/AppearanceRegion;",
            ">;ZI",
            "Ljava/util/List<",
            "+",
            "Lcom/android/internal/statusbar/LetterboxDetails;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearance:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearanceRegions:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->navbarColorManagedByIme:Z

    iput p4, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->requestedVisibleTypes:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->letterboxDetails:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;

    iget v1, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearance:I

    iget v3, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearance:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearanceRegions:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearanceRegions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->navbarColorManagedByIme:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->navbarColorManagedByIme:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->requestedVisibleTypes:I

    iget v3, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->requestedVisibleTypes:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->letterboxDetails:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->letterboxDetails:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearance:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearanceRegions:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->navbarColorManagedByIme:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->requestedVisibleTypes:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->letterboxDetails:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearance:I

    if-nez v0, :cond_0

    const-string v0, "NONE"

    goto :goto_0

    :cond_0
    const-class v1, Landroid/view/InsetsFlags;

    const-string v2, "appearance"

    invoke-static {v1, v2, v0}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->appearanceRegions:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->requestedVisibleTypes:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    const-string v4, ", "

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "["

    const-string v4, "]"

    invoke-static {v3, v2, v4}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->letterboxDetails:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\n                StatusBarAttributes(\n                    appearance="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                    appearanceRegions="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",\n                    navbarColorManagedByIme="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/data/repository/StatusBarModePerDisplayRepositoryImpl$StatusBarAttributes;->navbarColorManagedByIme:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",\n                    requestedVisibleTypes="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\n                    letterboxDetails="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n                    )\n                    "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
