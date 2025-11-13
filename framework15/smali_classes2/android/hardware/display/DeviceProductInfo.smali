.class public final Landroid/hardware/display/DeviceProductInfo;
.super Ljava/lang/Object;
.source "DeviceProductInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DeviceProductInfo$ManufactureDate;,
        Landroid/hardware/display/DeviceProductInfo$ConnectionToSinkType;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_TO_SINK_BUILT_IN:I = 0x1

.field public static final whitelist CONNECTION_TO_SINK_DIRECT:I = 0x2

.field public static final whitelist CONNECTION_TO_SINK_TRANSITIVE:I = 0x3

.field public static final whitelist CONNECTION_TO_SINK_UNKNOWN:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/DeviceProductInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConnectionToSinkType:I

.field private final blacklist mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

.field private final blacklist mManufacturerPnpId:Ljava/lang/String;

.field private final blacklist mModelYear:Ljava/lang/Integer;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mProductId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/display/DeviceProductInfo$1;

    invoke-direct {v0}, Landroid/hardware/display/DeviceProductInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/display/DeviceProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/display/DeviceProductInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DeviceProductInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iput p5, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/hardware/display/DeviceProductInfo$ManufactureDate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    iput-object p4, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    iput-object p5, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iput p6, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/hardware/display/DeviceProductInfo;

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iget-object v4, v2, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    iget v4, v2, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getConnectionToSinkType()I
    .locals 1

    iget v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    return v0
.end method

.method public blacklist getManufactureDate()Landroid/hardware/display/DeviceProductInfo$ManufactureDate;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    return-object v0
.end method

.method public whitelist getManufactureWeek()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmWeek(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmWeek(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist getManufactureYear()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmYear(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-static {v0}, Landroid/hardware/display/DeviceProductInfo$ManufactureDate;->-$$Nest$fgetmYear(Landroid/hardware/display/DeviceProductInfo$ManufactureDate;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method public whitelist getManufacturerPnpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getModelYear()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    iget-object v4, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    iget v5, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceProductInfo{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufacturerPnpId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufactureDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionToSinkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufacturerPnpId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mModelYear:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/hardware/display/DeviceProductInfo;->mManufactureDate:Landroid/hardware/display/DeviceProductInfo$ManufactureDate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Landroid/hardware/display/DeviceProductInfo;->mConnectionToSinkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
