.class public final Landroid/app/time/TimeCapabilities;
.super Ljava/lang/Object;
.source "TimeCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfigureAutoDetectionEnabledCapability:I

.field private final blacklist mSetManualTimeCapability:I

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSetManualTimeCapability(Landroid/app/time/TimeCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeCapabilities;->mSetManualTimeCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeCapabilities;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/time/TimeCapabilities$1;

    invoke-direct {v0}, Landroid/app/time/TimeCapabilities$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/time/TimeCapabilities$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {p1}, Landroid/app/time/TimeCapabilities$Builder;->-$$Nest$fgetmSetManualTimeCapability(Landroid/app/time/TimeCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities;->mSetManualTimeCapability:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/time/TimeCapabilities$Builder;Landroid/app/time/TimeCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/time/TimeCapabilities;-><init>(Landroid/app/time/TimeCapabilities$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilities;
    .locals 3

    invoke-static {p0}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    new-instance v1, Landroid/app/time/TimeCapabilities$Builder;

    invoke-direct {v1, v0}, Landroid/app/time/TimeCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/time/TimeCapabilities$Builder;->setSetManualTimeCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/TimeCapabilities$Builder;->build()Landroid/app/time/TimeCapabilities;

    move-result-object v1

    return-object v1
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

    check-cast v2, Landroid/app/time/TimeCapabilities;

    iget v3, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    iget v4, v2, Landroid/app/time/TimeCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/time/TimeCapabilities;->mSetManualTimeCapability:I

    iget v4, v2, Landroid/app/time/TimeCapabilities;->mSetManualTimeCapability:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

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

.method public whitelist getConfigureAutoDetectionEnabledCapability()I
    .locals 1

    iget v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    return v0
.end method

.method public whitelist getSetManualTimeCapability()I
    .locals 1

    iget v0, p0, Landroid/app/time/TimeCapabilities;->mSetManualTimeCapability:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/time/TimeCapabilities;->mSetManualTimeCapability:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeCapabilities{mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigureAutoDetectionEnabledCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSetManualTimeCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/time/TimeCapabilities;->mSetManualTimeCapability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist tryApplyConfigChanges(Landroid/app/time/TimeConfiguration;Landroid/app/time/TimeConfiguration;)Landroid/app/time/TimeConfiguration;
    .locals 3

    new-instance v0, Landroid/app/time/TimeConfiguration$Builder;

    invoke-direct {v0, p1}, Landroid/app/time/TimeConfiguration$Builder;-><init>(Landroid/app/time/TimeConfiguration;)V

    invoke-virtual {p2}, Landroid/app/time/TimeConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/time/TimeCapabilities;->getConfigureAutoDetectionEnabledCapability()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/app/time/TimeConfiguration;->isAutoDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeConfiguration$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/time/TimeConfiguration$Builder;->build()Landroid/app/time/TimeConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/time/TimeCapabilities;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, p1}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V

    iget v0, p0, Landroid/app/time/TimeCapabilities;->mConfigureAutoDetectionEnabledCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/time/TimeCapabilities;->mSetManualTimeCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
