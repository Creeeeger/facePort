.class public final Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final deviceName:Ljava/lang/String;

.field public final deviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2$Creator;

    invoke-direct {v0}, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;

    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceType:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->description:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->description:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceType:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->description:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceType:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->description:Ljava/lang/String;

    const-string v3, "MediaOutputDeviceV2(deviceId="

    const-string v4, ", deviceName="

    const-string v5, ", deviceType="

    invoke-static {v3, v0, v4, v1, v5}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->deviceType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/MediaOutputDeviceV2;->description:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
