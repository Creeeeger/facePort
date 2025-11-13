.class public final Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;
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

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/compose/common/Feature$Companion;-><init>()V

    return-void
.end method

.method public static getSelectedScreen(Lcom/android/systemui/media/mediaoutput/compose/common/Feature;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->deviceIds:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    if-nez v1, :cond_3

    const-string v0, "-"

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/common/Feature;->defaultScreen:Lcom/android/systemui/media/mediaoutput/compose/Screen;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/mediaoutput/compose/Screen;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
