.class public final Landroid/companion/virtual/VirtualDeviceParams;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceParams$Builder;,
        Landroid/companion/virtual/VirtualDeviceParams$DynamicPolicyType;,
        Landroid/companion/virtual/VirtualDeviceParams$PolicyType;,
        Landroid/companion/virtual/VirtualDeviceParams$DevicePolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$NavigationPolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$ActivityPolicy;,
        Landroid/companion/virtual/VirtualDeviceParams$LockState;
    }
.end annotation


# static fields
.field public static final whitelist ACTIVITY_POLICY_DEFAULT_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTIVITY_POLICY_DEFAULT_BLOCKED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEVICE_POLICY_CUSTOM:I = 0x1

.field public static final whitelist DEVICE_POLICY_DEFAULT:I = 0x0

.field public static final whitelist LOCK_STATE_ALWAYS_UNLOCKED:I = 0x1

.field public static final whitelist LOCK_STATE_DEFAULT:I = 0x0

.field public static final whitelist NAVIGATION_POLICY_DEFAULT_ALLOWED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist NAVIGATION_POLICY_DEFAULT_BLOCKED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist POLICY_TYPE_ACTIVITY:I = 0x3

.field public static final whitelist POLICY_TYPE_AUDIO:I = 0x1

.field public static final whitelist POLICY_TYPE_CAMERA:I = 0x5

.field public static final whitelist POLICY_TYPE_CLIPBOARD:I = 0x4

.field public static final whitelist POLICY_TYPE_RECENTS:I = 0x2

.field public static final whitelist POLICY_TYPE_SENSORS:I


# instance fields
.field private final blacklist mActivityPolicyExemptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAudioPlaybackSessionId:I

.field private final blacklist mAudioRecordingSessionId:I

.field private final blacklist mCrossTaskNavigationExemptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultActivityPolicy:I

.field private final blacklist mDefaultNavigationPolicy:I

.field private final blacklist mDevicePolicies:Landroid/util/SparseIntArray;

.field private final blacklist mHomeComponent:Landroid/content/ComponentName;

.field private final blacklist mInputMethodComponent:Landroid/content/ComponentName;

.field private final blacklist mLockState:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mUsersWithMatchingAccounts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

.field private final blacklist mVirtualSensorConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/companion/virtual/VirtualDeviceParams$1;

    invoke-direct {v0}, Landroid/companion/virtual/VirtualDeviceParams$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/VirtualDeviceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;",
            "Landroid/companion/virtual/sensor/IVirtualSensorCallback;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    new-instance v2, Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    move v2, p3

    iput v2, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    new-instance v3, Landroid/util/ArraySet;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    move v3, p5

    iput v3, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    new-instance v4, Landroid/util/ArraySet;

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    move-object/from16 v4, p7

    iput-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-static/range {p8 .. p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    iput-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    move-object/from16 v5, p9

    iput-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    move-object/from16 v6, p10

    iput-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iput-object v7, v0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    move-object/from16 v7, p12

    iput-object v7, v0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move/from16 v8, p13

    iput v8, v0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    move/from16 v9, p14

    iput v9, v0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IILandroid/companion/virtual/VirtualDeviceParams-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    sget-object v1, Landroid/companion/virtual/sensor/VirtualSensorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/virtual/VirtualDeviceParams-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mUsersWithMatchingAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultNavigationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCrossTaskNavigationExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultActivityPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mActivityPolicyExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDevicePolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mVirtualSensorConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mHomeComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mInputMethodComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAudioPlaybackSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAudioRecordingSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/companion/virtual/VirtualDeviceParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/companion/virtual/VirtualDeviceParams;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    iget-object v4, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    iget-object v5, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    if-eq v5, v6, :cond_3

    return v2

    :cond_3
    iget-object v5, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-eq v5, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    if-ne v4, v5, :cond_6

    iget v4, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    iget v5, v1, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    return v0
.end method

.method public whitelist getAllowedActivities()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getAllowedCrossTaskNavigations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getAudioPlaybackSessionId()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    return v0
.end method

.method public whitelist getAudioRecordingSessionId()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    return v0
.end method

.method public whitelist getBlockedActivities()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getBlockedCrossTaskNavigations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getDefaultActivityPolicy()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    return v0
.end method

.method public whitelist getDefaultNavigationPolicy()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    return v0
.end method

.method public blacklist getDevicePolicies()Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public whitelist getDevicePolicy(I)I
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public whitelist getHomeComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getInputMethodComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getLockState()I
    .locals 1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUsersWithMatchingAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVirtualSensorCallback()Landroid/companion/virtual/sensor/IVirtualSensorCallback;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    return-object v0
.end method

.method public whitelist getVirtualSensorConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 13

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    iget-object v8, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    iget-object v9, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v10, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v1 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDeviceParams( mLockState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUsersWithMatchingAccounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultNavigationPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCrossTaskNavigationExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultActivityPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mActivityPolicyExemptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDevicePolicies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInputMethodComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioPlaybackSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAudioRecordingSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mLockState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mUsersWithMatchingAccounts:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultNavigationPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mCrossTaskNavigationExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDefaultActivityPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    nop

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    invoke-interface {v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioPlaybackSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mAudioRecordingSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mHomeComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams;->mInputMethodComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
