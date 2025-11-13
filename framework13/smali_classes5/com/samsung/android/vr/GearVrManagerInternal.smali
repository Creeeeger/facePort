.class public abstract Lcom/samsung/android/vr/GearVrManagerInternal;
.super Ljava/lang/Object;
.source "GearVrManagerInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getHmtDevice()Lcom/samsung/android/vr/HmtDevice;
.end method

.method public abstract blacklist getMetaScreenDisplayId()I
.end method

.method public abstract blacklist getPreferredXrDisplayId()I
.end method

.method public abstract blacklist is3rdPartyDevice(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isConnect()Z
.end method

.method public abstract blacklist isDock()Z
.end method

.method public abstract blacklist isGearVrInputDevice(Landroid/view/InputDevice;)Z
.end method

.method public abstract blacklist isHmtDevice(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isMount()Z
.end method

.method public abstract blacklist isMounted()Z
.end method

.method public abstract blacklist isPersistentVrMode()Z
.end method

.method public abstract blacklist isPowerLimitingDevice(Ljava/lang/String;)Z
.end method

.method public abstract blacklist isVrMode(I)Z
.end method

.method public abstract blacklist notifyActivityResumeChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;II)Z
.end method

.method public abstract blacklist notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V
.end method

.method public abstract blacklist onScreenStateChanged(Z)V
.end method

.method public abstract blacklist registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
.end method

.method public abstract blacklist setConnect(Z)V
.end method

.method public abstract blacklist setMount(Z)V
.end method

.method public abstract blacklist setPersistentVrMode(Z)V
.end method

.method public abstract blacklist unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
.end method
