.class public final Lcom/samsung/android/gtscell/data/cell/GtsItemCell;
.super Ljava/lang/Object;
.source "GtsItemCell.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/cell/GtsItemCell$Creator;,
        Lcom/samsung/android/gtscell/data/cell/GtsItemCell$Companion;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final Companion:Lcom/samsung/android/gtscell/data/cell/GtsItemCell$Companion;

.field private static final VERSION:I = 0x1


# instance fields
.field private final category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final privateCategory:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "private_category"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gts_provider_info"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->Companion:Lcom/samsung/android/gtscell/data/cell/GtsItemCell$Companion;

    new-instance v0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell$Creator;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/data/GtsConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gtscell/data/GtsConfiguration;",
            "Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "providerInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    iput-object p3, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    iput-object p4, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/cell/GtsItemCell;Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;IILjava/lang/Object;)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->copy(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;I)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    return-object p0
.end method

.method public final component3()Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;I)Lcom/samsung/android/gtscell/data/cell/GtsItemCell;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/gtscell/data/GtsConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/gtscell/data/GtsConfiguration;",
            "Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/samsung/android/gtscell/data/cell/GtsItemCell;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "category"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "configuration"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "providerInfo"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "items"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;-><init>(Ljava/lang/String;Lcom/samsung/android/gtscell/data/GtsConfiguration;Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;Ljava/util/List;Ljava/lang/String;I)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    iget p1, p1, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getConfiguration()Lcom/samsung/android/gtscell/data/GtsConfiguration;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/gtscell/data/GtsItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    return-object p0
.end method

.method public final getPrivateCategory()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    return-object p0
.end method

.method public final getProviderInfo()Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GtsItemCell(category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", providerInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", privateCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->configuration:Lcom/samsung/android/gtscell/data/GtsConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->providerInfo:Lcom/samsung/android/gtscell/data/GtsCellProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gtscell/data/GtsItem;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->privateCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/gtscell/data/cell/GtsItemCell;->version:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
