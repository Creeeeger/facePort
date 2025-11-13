.class public final Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final deviceId:Ljava/lang/String;

.field public final deviceName:Ljava/lang/String;

.field public final iconUrl:Ljava/lang/String;

.field public final locationId:Ljava/lang/String;

.field public final locationName:Ljava/lang/String;

.field public final roomId:Ljava/lang/String;

.field public final roomName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device$Creator;

    invoke-direct {v0}, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->iconUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomId:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomName:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;

    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomId:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomName:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->iconUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->iconUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomId:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomName:Ljava/lang/String;

    const-string v6, "Device(deviceId="

    const-string v7, ", deviceName="

    const-string v8, ", iconUrl="

    invoke-static {v6, v0, v7, v1, v8}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationId="

    const-string v6, ", locationName="

    invoke-static {v0, v2, v1, v3, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", roomId="

    const-string v2, ", roomName="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->iconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->locationName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/oneconnect/mediaoutput/entity/Device;->roomName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
