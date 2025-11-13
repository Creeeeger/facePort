.class public final Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final categoryId:I

.field private final categoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;ILjava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->copy(ILjava/lang/String;)Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;)Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;
    .locals 0

    new-instance p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;

    iget v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    iget v3, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCategoryId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    return p0
.end method

.method public final getCategoryName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventCategory(categoryId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", categoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/OpaqueKey$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/event/entity/event/EventCategory;->categoryName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
