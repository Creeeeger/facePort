.class public final Landroid/hardware/devicestate/DeviceStateInfo;
.super Ljava/lang/Object;
.source "DeviceStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateInfo$ChangeFlags;
    }
.end annotation


# static fields
.field public static final blacklist CHANGED_BASE_STATE:I = 0x2

.field public static final blacklist CHANGED_CURRENT_STATE:I = 0x4

.field public static final blacklist CHANGED_SUPPORTED_STATES:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/devicestate/DeviceStateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist baseState:Landroid/hardware/devicestate/DeviceState;

.field public final blacklist currentState:Landroid/hardware/devicestate/DeviceState;

.field public final blacklist supportedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/devicestate/DeviceStateInfo$1;

    invoke-direct {v0}, Landroid/hardware/devicestate/DeviceStateInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/devicestate/DeviceStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>(Ljava/util/ArrayList;Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;Landroid/hardware/devicestate/DeviceState;Landroid/hardware/devicestate/DeviceState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;",
            "Landroid/hardware/devicestate/DeviceState;",
            "Landroid/hardware/devicestate/DeviceState;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iput-object p3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist diff(Landroid/hardware/devicestate/DeviceStateInfo;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v2}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
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

    check-cast v2, Landroid/hardware/devicestate/DeviceStateInfo;

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3, v4}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3, v4}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

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

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
