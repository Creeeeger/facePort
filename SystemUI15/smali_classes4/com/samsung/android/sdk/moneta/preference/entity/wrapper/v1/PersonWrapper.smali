.class public final Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:Ljava/lang/String;

.field private final preferences:Landroid/os/Bundle;

.field private final properties:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ILjava/lang/Object;)Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->copy(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    return-object p0
.end method

.method public final component3()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;
    .locals 0

    new-instance p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

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
    instance-of v1, p1, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPreferences()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getProperties()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PersonWrapper(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->preferences:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/wrapper/v1/PersonWrapper;->properties:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
