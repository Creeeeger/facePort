.class public final Landroid/companion/virtual/VirtualDeviceParams$Builder;
.super Ljava/lang/Object;
.source "VirtualDeviceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;
    }
.end annotation


# instance fields
.field private blacklist mActivityPolicyExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAudioPlaybackSessionId:I

.field private blacklist mAudioRecordingSessionId:I

.field private blacklist mCrossTaskNavigationExemptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDefaultActivityPolicy:I

.field private blacklist mDefaultActivityPolicyConfigured:Z

.field private blacklist mDefaultNavigationPolicy:I

.field private blacklist mDefaultNavigationPolicyConfigured:Z

.field private final blacklist mDevicePolicies:Landroid/util/SparseIntArray;

.field private blacklist mHomeComponent:Landroid/content/ComponentName;

.field private blacklist mInputMethodComponent:Landroid/content/ComponentName;

.field private blacklist mLockState:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mUsersWithMatchingAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

.field private blacklist mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mVirtualSensorConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

.field private blacklist mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addVirtualSensorConfig(Landroid/companion/virtual/sensor/VirtualSensorConfig;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/companion/virtual/VirtualDeviceParams;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-virtual {v5}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getDirectChannelTypesSupported()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "VirtualSensorDirectChannelCallback is required for creating virtual sensors that support direct channel."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v2, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;

    iget-object v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    iget-object v7, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/companion/virtual/VirtualDeviceParams$Builder$VirtualSensorCallbackDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)V

    move-object v1, v2

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VirtualSensorCallback is required for creating virtual sensors."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DEVICE_POLICY_CUSTOM for POLICY_TYPE_SENSORS is required for creating virtual sensors."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_2
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->dynamicPolicy()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-boolean v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v2, :cond_8

    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v2, v4, :cond_8

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :pswitch_0
    iget-boolean v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v2, :cond_8

    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DEVICE_POLICY_CUSTOM is explicitly configured for POLICY_TYPE_ACTIVITY, which is exclusive with setBlockedActivities."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    iget-boolean v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v2, :cond_8

    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-eq v2, v4, :cond_7

    goto :goto_3

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DEVICE_POLICY_DEFAULT is explicitly configured for POLICY_TYPE_ACTIVITY, which is exclusive with setAllowedActivities."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_3
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->crossDeviceClipboard()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_9
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->virtualCamera()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_a
    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    if-nez v2, :cond_b

    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_f

    :cond_c
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    :goto_4
    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    iget-object v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/companion/virtual/sensor/VirtualSensorConfig;

    invoke-virtual {v4}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v5

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v4}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v4}, Landroid/companion/virtual/sensor/VirtualSensorConfig;->getType()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Sensor names must be unique for a particular sensor type."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_e
    new-instance v3, Landroid/companion/virtual/VirtualDeviceParams;

    iget v5, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    iget-object v6, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    iget v7, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iget-object v8, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    iget v9, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iget-object v10, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    iget-object v11, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mName:Ljava/lang/String;

    iget-object v12, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    iget-object v13, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mHomeComponent:Landroid/content/ComponentName;

    iget-object v14, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mInputMethodComponent:Landroid/content/ComponentName;

    iget-object v15, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorConfigs:Ljava/util/List;

    iget v4, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    move-object/from16 v20, v2

    iget v2, v0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    const/16 v19, 0x0

    move/from16 v17, v4

    move-object v4, v3

    move-object/from16 v16, v1

    move/from16 v18, v2

    invoke-direct/range {v4 .. v19}, Landroid/companion/virtual/VirtualDeviceParams;-><init>(ILjava/util/Set;ILjava/util/Set;ILjava/util/Set;Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/util/List;Landroid/companion/virtual/sensor/IVirtualSensorCallback;IILandroid/companion/virtual/VirtualDeviceParams-IA;)V

    return-object v3

    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DEVICE_POLICY_CUSTOM for POLICY_TYPE_AUDIO is required for configuration of device-specific audio session ids."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setAllowedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setAllowedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed cross task navigations and blocked cross task navigations cannot  both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    iput-boolean v1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setAudioPlaybackSessionId(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioPlaybackSessionId:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid playback audio session id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioRecordingSessionId(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2

    if-ltz p1, :cond_0

    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mAudioRecordingSessionId:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid recording audio session id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBlockedActivities(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed activities and Blocked activities cannot both be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultActivityPolicyConfigured:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mActivityPolicyExemptions:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setBlockedCrossTaskNavigations(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allowed cross task navigation and blocked task navigation cannot  be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDefaultNavigationPolicyConfigured:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mCrossTaskNavigationExemptions:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setDevicePolicy(II)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 1

    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-object p0
.end method

.method public whitelist setHomeComponent(Landroid/content/ComponentName;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mHomeComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setInputMethodComponent(Landroid/content/ComponentName;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mInputMethodComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setLockState(I)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    iput p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mLockState:I

    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setUsersWithMatchingAccounts(Ljava/util/Set;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Landroid/companion/virtual/VirtualDeviceParams$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mUsersWithMatchingAccounts:Ljava/util/Set;

    return-object p0
.end method

.method public whitelist setVirtualSensorCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorCallback;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/sensor/VirtualSensorCallback;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorCallback:Landroid/companion/virtual/sensor/VirtualSensorCallback;

    return-object p0
.end method

.method public whitelist setVirtualSensorDirectChannelCallback(Ljava/util/concurrent/Executor;Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;)Landroid/companion/virtual/VirtualDeviceParams$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallbackExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceParams$Builder;->mVirtualSensorDirectChannelCallback:Landroid/companion/virtual/sensor/VirtualSensorDirectChannelCallback;

    return-object p0
.end method
