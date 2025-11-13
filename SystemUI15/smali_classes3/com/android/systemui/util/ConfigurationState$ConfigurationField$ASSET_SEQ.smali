.class final Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ASSET_SEQ;
.super Lcom/android/systemui/util/ConfigurationState$ConfigurationField;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final convertToString(I)Ljava/lang/String;
    .locals 0

    const/16 p0, -0x64

    if-ne p1, p0, :cond_0

    const-string p0, "def"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public needToUpdate(Ljava/util/EnumMap;Landroid/content/res/Configuration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Configuration;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    iget p1, p2, Landroid/content/res/Configuration;->assetsSeq:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public toCompareString(Ljava/util/EnumMap;Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Configuration;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ASSET_SEQ;->convertToString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, p2, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-direct {p0, p2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField$ASSET_SEQ;->convertToString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "assetSeq"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->getSummaryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/util/EnumMap;Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    iget p2, p2, Landroid/content/res/Configuration;->assetsSeq:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
