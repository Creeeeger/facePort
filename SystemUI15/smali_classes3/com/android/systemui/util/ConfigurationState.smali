.class public final Lcom/android/systemui/util/ConfigurationState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/util/ConfigurationState$Companion;

.field public static final DEFAULT_VALUE:I = -0x64


# instance fields
.field private final fieldMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/util/ConfigurationState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/ConfigurationState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/ConfigurationState;->Companion:Lcom/android/systemui/util/ConfigurationState$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/ConfigurationState;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/util/ConfigurationState$ConfigurationField;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/ConfigurationState;->fields:Ljava/util/List;

    invoke-static {}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p1

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/EnumMap;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/systemui/util/ConfigurationState;->fieldMap:Ljava/util/EnumMap;

    return-void
.end method

.method public static final synthetic access$getFieldMap$p(Lcom/android/systemui/util/ConfigurationState;)Ljava/util/EnumMap;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ConfigurationState;->fieldMap:Ljava/util/EnumMap;

    return-object p0
.end method


# virtual methods
.method public final getValue(Lcom/android/systemui/util/ConfigurationState$ConfigurationField;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ConfigurationState;->fields:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/util/ConfigurationState;->fieldMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_3

    :cond_2
    const/16 p0, -0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final needToUpdate(Landroid/content/res/Configuration;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/ConfigurationState;->fields:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    iget-object v3, p0, Lcom/android/systemui/util/ConfigurationState;->fieldMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->needToUpdate(Ljava/util/EnumMap;Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public final toCompareString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ConfigurationState;->fields:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v5, Lcom/android/systemui/util/ConfigurationState$toCompareString$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/util/ConfigurationState$toCompareString$1;-><init>(Lcom/android/systemui/util/ConfigurationState;Landroid/content/res/Configuration;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, ", "

    const/16 v6, 0x1e

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ConfigurationState;->fields:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    iget-object v2, p0, Lcom/android/systemui/util/ConfigurationState;->fieldMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->update(Ljava/util/EnumMap;Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method
