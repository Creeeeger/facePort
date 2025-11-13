.class public final Landroid/companion/AssociationInfo$Builder;
.super Ljava/lang/Object;
.source "AssociationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAssociatedDevice:Landroid/companion/AssociatedDevice;

.field private blacklist mDeviceMacAddress:Landroid/net/MacAddress;

.field private blacklist mDeviceProfile:Ljava/lang/String;

.field private blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mId:I

.field private blacklist mLastTimeConnectedMs:J

.field private blacklist mNotifyOnDeviceNearby:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPending:Z

.field private blacklist mRevoked:Z

.field private blacklist mSelfManaged:Z

.field private blacklist mSystemDataSyncFlags:I

.field private blacklist mTag:Ljava/lang/String;

.field private blacklist mTimeApprovedMs:J

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    iput p2, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    iput-object p3, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Landroid/companion/AssociationInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    iput p2, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    iput-object p3, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTag(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mTag:Ljava/lang/String;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    invoke-static {p4}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/companion/AssociationInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmId(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mId:I

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmUserId(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPackageName(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTag(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmAssociatedDevice(Landroid/companion/AssociationInfo;)Landroid/companion/AssociatedDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmRevoked(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPending(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSystemDataSyncFlags(Landroid/companion/AssociationInfo;)I

    move-result v0

    iput v0, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/AssociationInfo;
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Landroid/companion/AssociationInfo$Builder;->mId:I

    if-lez v1, :cond_2

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MAC address and the display name must NOT be null at the same time"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v1, Landroid/companion/AssociationInfo;

    move-object v3, v1

    iget v4, v0, Landroid/companion/AssociationInfo$Builder;->mId:I

    iget v5, v0, Landroid/companion/AssociationInfo$Builder;->mUserId:I

    iget-object v6, v0, Landroid/companion/AssociationInfo$Builder;->mPackageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/companion/AssociationInfo$Builder;->mTag:Ljava/lang/String;

    iget-object v8, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    iget-object v9, v0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    iget-object v11, v0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    iget-boolean v12, v0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    iget-boolean v13, v0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    iget-boolean v14, v0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    iget-boolean v15, v0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    move-object/from16 v21, v1

    iget-wide v1, v0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    move-wide/from16 v18, v1

    iget v1, v0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    move/from16 v20, v1

    invoke-direct/range {v3 .. v20}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZZZZJJI)V

    return-object v21

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Association ID should be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setAssociatedDevice(Landroid/companion/AssociatedDevice;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mAssociatedDevice:Landroid/companion/AssociatedDevice;

    return-object p0
.end method

.method public blacklist setDeviceMacAddress(Landroid/net/MacAddress;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method public blacklist setDeviceProfile(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDeviceProfile:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDisplayName(Ljava/lang/CharSequence;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lastTimeConnectedMs must not be negative! (Given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    return-object p0
.end method

.method public blacklist setPending(Z)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mPending:Z

    return-object p0
.end method

.method public blacklist setRevoked(Z)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mRevoked:Z

    return-object p0
.end method

.method public blacklist setSelfManaged(Z)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mSelfManaged:Z

    return-object p0
.end method

.method public blacklist setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/AssociationInfo$Builder;->mSystemDataSyncFlags:I

    return-object p0
.end method

.method public blacklist setTag(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTimeApproved(J)Landroid/companion/AssociationInfo$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mTimeApprovedMs:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeApprovedMs must be positive. Was given ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
