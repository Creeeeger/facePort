.class public final Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J)\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0006H\u00d6\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0010H\u00d6\u0001R\"\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;",
        "Landroid/os/Parcelable;",
        "expressionType",
        "Lcom/samsung/android/gtscell/data/GtsExpressionType;",
        "expression",
        "",
        "",
        "(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)V",
        "getExpression",
        "()Ljava/util/Map;",
        "getExpressionType",
        "()Lcom/samsung/android/gtscell/data/GtsExpressionType;",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final Companion:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;

.field private static final EMPTY:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;


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
.end field

.field private final expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_expression_type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->Companion:Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData$Companion;

    new-instance v0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;

    sget-object v1, Lcom/samsung/android/gtscell/data/GtsExpressionType;->TYPE_NONE:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    invoke-static {}, Lkotlin/collections/MapsKt__MapsKt;->emptyMap()Ljava/util/Map;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expressionType:Lcom/samsung/android/gtscell/data/GtsExpressionType;

    iput-object p2, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .locals 1

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

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Lcom/samsung/android/gtscell/data/GtsExpressionType;Ljava/util/Map;)Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;
    .locals 0
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

    iget-object p0, p0, Lcom/samsung/android/gtscell/data/GtsExpressionRaw$GtsExpressionData;->expression:Ljava/util/Map;

    return-object p0
.end method

.method public final getExpressionType()Lcom/samsung/android/gtscell/data/GtsExpressionType;
    .locals 0

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

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GtsExpressionData(expressionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
