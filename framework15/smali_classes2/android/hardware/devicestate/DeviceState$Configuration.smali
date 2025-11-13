.class public final Landroid/hardware/devicestate/DeviceState$Configuration;
.super Ljava/lang/Object;
.source "DeviceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceState$Configuration$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/devicestate/DeviceState$Configuration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIdentifier:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPhysicalProperties:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSystemProperties:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalProperties(Landroid/hardware/devicestate/DeviceState$Configuration;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mPhysicalProperties:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemProperties(Landroid/hardware/devicestate/DeviceState$Configuration;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/devicestate/DeviceState$Configuration$1;

    invoke-direct {v0}, Landroid/hardware/devicestate/DeviceState$Configuration$1;-><init>()V

    sput-object v0, Landroid/hardware/devicestate/DeviceState$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mIdentifier:I

    iput-object p2, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    iput-object p4, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mPhysicalProperties:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/hardware/devicestate/DeviceState$Configuration-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/devicestate/DeviceState$Configuration;-><init>(ILjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

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

    check-cast v2, Landroid/hardware/devicestate/DeviceState$Configuration;

    iget v3, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mIdentifier:I

    iget v4, v2, Landroid/hardware/devicestate/DeviceState$Configuration;->mIdentifier:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceState$Configuration;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mPhysicalProperties:Landroid/util/ArraySet;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceState$Configuration;->mPhysicalProperties:Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getIdentifier()I
    .locals 1

    iget v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mIdentifier:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPhysicalProperties()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mPhysicalProperties:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getSystemProperties()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mIdentifier:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mPhysicalProperties:Landroid/util/ArraySet;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceState{identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_accessible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancel_when_requester_not_on_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mIdentifier:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mSystemProperties:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState$Configuration;->mPhysicalProperties:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    return-void
.end method
