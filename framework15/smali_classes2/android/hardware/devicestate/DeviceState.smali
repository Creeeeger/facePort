.class public final Landroid/hardware/devicestate/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceState$Configuration;,
        Landroid/hardware/devicestate/DeviceState$SystemDeviceStateProperties;,
        Landroid/hardware/devicestate/DeviceState$PhysicalDeviceStateProperties;,
        Landroid/hardware/devicestate/DeviceState$DeviceStateProperties;
    }
.end annotation


# static fields
.field public static final blacklist PROPERTY_APP_INACCESSIBLE:I = 0x9

.field public static final whitelist PROPERTY_EMULATED_ONLY:I = 0xa

.field public static final whitelist PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY:I = 0xf

.field public static final whitelist PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT:I = 0x11

.field public static final whitelist PROPERTY_FEATURE_REAR_DISPLAY:I = 0x10

.field public static final whitelist PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY:I = 0xc

.field public static final whitelist PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY:I = 0xb

.field public static final whitelist PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED:I = 0x1

.field public static final whitelist PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN:I = 0x2

.field public static final whitelist PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN:I = 0x3

.field public static final blacklist PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST:I = 0x8

.field public static final blacklist PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS:I = 0x4

.field public static final blacklist PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP:I = 0x5

.field public static final blacklist PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE:I = 0x7

.field public static final blacklist PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL:I = 0x6

.field public static final whitelist PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP:I = 0xd

.field public static final whitelist PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE:I = 0xe


# instance fields
.field private final blacklist mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Device StateConfiguration is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/devicestate/DeviceState;

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    iget-object v2, v0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    return-object v0
.end method

.method public whitelist getIdentifier()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist hasProperties([I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist hasProperty(I)Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->-$$Nest$fgetmSystemProperties(Landroid/hardware/devicestate/DeviceState$Configuration;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-static {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->-$$Nest$fgetmPhysicalProperties(Landroid/hardware/devicestate/DeviceState$Configuration;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    filled-new-array {v0}, [Ljava/lang/Object;

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

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_accessible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancel_when_requester_not_on_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/devicestate/DeviceState;->mDeviceStateConfiguration:Landroid/hardware/devicestate/DeviceState$Configuration;

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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
