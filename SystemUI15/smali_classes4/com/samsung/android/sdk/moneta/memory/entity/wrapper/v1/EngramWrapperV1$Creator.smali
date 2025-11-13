.class public final Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/EngramWrapperV1$Creator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p0, :cond_0

    const-class v3, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/EngramWrapperV1;

    const/4 v4, 0x1

    invoke-static {v3, p1, v2, v0, v4}, Lcom/samsung/android/sdk/moneta/memory/entity/Engram$Creator$$ExternalSyntheticOutline0;->m(Ljava/lang/Class;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    new-instance p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/EngramWrapperV1;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/EngramWrapperV1;-><init>(Ljava/lang/String;Ljava/util/List;JJLjava/util/List;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/EngramWrapperV1;

    return-object p0
.end method
