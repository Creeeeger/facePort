.class public Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;
.super Ljava/lang/Object;
.source "DevicePolicyManagerWrapper.java"


# instance fields
.field private final blacklist mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 12
    return-void
.end method


# virtual methods
.method blacklist isEncryptionStatusActive()Z
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 16
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method blacklist isLogoutEnabled()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/globalactions/util/DevicePolicyManagerWrapper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v0

    return v0
.end method
