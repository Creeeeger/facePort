.class public final Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
.super Ljava/lang/Object;
.source "GtsExpressionRaw.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gtscell/data/GtsExpressionRaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GtsExpressionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Creator;,
        Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final Companion:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;

.field private static final EMPTY:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final expression:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_expression"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_expression_type"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->Companion:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;

    .line 48
    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_NONE:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;-><init>(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->EMPTY:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Creator;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/samsung/android/gtscell/data/GtsExpressionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/gtscell/data/GtsExpressionType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "expressionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expression"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->EMPTY:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;ILjava/lang/Object;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->copy(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .locals 0
    .param p1    # Lcom/samsung/android/gtscell/data/GtsExpressionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/gtscell/data/GtsExpressionType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "expressionType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "expression"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;-><init>(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)V

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

    instance-of v0, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    iget-object v1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    iget-object p1, p1, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getExpression()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    return-object p0
.end method

.method public final getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GtsExpressionData(expressionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
