.class public final Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

.field private final type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;-><init>(Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;->UNKNOWN:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;->UNKNOWN:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;-><init>(Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;ILjava/lang/Object;)Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->copy(Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;)Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    return-object p0
.end method

.method public final component2()Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    return-object p0
.end method

.method public final copy(Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;)Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;
    .locals 0

    new-instance p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;-><init>(Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;)V

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
    instance-of v1, p1, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    iget-object p1, p1, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDetails()Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    return-object p0
.end method

.method public final getType()Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Relationship(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->type:Lcom/samsung/android/sdk/moneta/preference/entity/RelationType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/Relationship;->details:Lcom/samsung/android/sdk/moneta/preference/entity/RelationDetails;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
