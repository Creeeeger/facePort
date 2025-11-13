.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mActive:Z

.field mAttributionLabel:Ljava/lang/CharSequence;

.field mAttributionTag:Ljava/lang/CharSequence;

.field mLastAccessTimeMillis:J

.field mPackageName:Ljava/lang/String;

.field mPermissionGroupName:Ljava/lang/String;

.field mPhoneCall:Z

.field mProxyLabel:Ljava/lang/CharSequence;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/permission/PermissionGroupUsage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mUid:I

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getLastAccessTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mLastAccessTimeMillis:J

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mActive:Z

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPhoneCall:Z

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/permission/PermissionGroupUsage;->getProxyLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mProxyLabel:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getAttributionLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getAttributionTag()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionTag:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getLastAccessTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mLastAccessTimeMillis:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermissionGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPermissionGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mProxyLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mUid:I

    return p0
.end method

.method public isActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mActive:Z

    return p0
.end method

.method public isPhoneCall()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPhoneCall:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionGroupUsage { packageName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastAccessTimeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mLastAccessTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", permissionGroupName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phoneCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mPhoneCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributionLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", proxyLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/PermissionManagerWrapper$PermissionGroupUsageItem;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
