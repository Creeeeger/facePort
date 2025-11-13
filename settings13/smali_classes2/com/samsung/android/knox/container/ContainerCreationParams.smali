.class public Lcom/samsung/android/knox/container/ContainerCreationParams;
.super Ljava/lang/Object;
.source "ContainerCreationParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isMigrationFlow:Z

.field private mAdminParam:Ljava/lang/String;

.field private mAdminRemovable:Z

.field private mAdminUid:I

.field private mBackupPin:Ljava/lang/String;

.field private mBiometricsInfo:I

.field private mConfigurationName:Ljava/lang/String;

.field private mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

.field private mContainerId:I

.field private mCreatorUid:I

.field private mFeatureType:Ljava/lang/String;

.field private mFingerprintPlus:Z

.field private mFlags:I

.field private mIrisPlus:Z

.field private mLockType:I

.field private mName:Ljava/lang/String;

.field private mPackagePoliciesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mRequestId:I

.field private mRequestState:I

.field private mResetPwdKey:Ljava/lang/String;

.field private mRestoreSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 243
    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/container/ContainerCreationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    .line 33
    iput v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    .line 34
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    .line 35
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    .line 36
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    .line 38
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    .line 39
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    .line 46
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    .line 48
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    .line 55
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestState:I

    const/4 v2, -0x1

    .line 33
    iput v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    .line 34
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    .line 35
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    .line 36
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    .line 38
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    .line 39
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    .line 46
    iput v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    .line 48
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    .line 55
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPackagePoliciesMap:Ljava/util/HashMap;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 262
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    .line 265
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 266
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 267
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    .line 269
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 270
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 271
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    .line 273
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 274
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    .line 277
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 278
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    .line 281
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_6

    move v3, v2

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_7

    move v3, v2

    goto :goto_1

    :cond_7
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    .line 292
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/container/KnoxConfigurationType;

    iput-object v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_9

    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_a

    move v1, v2

    :cond_a
    iput-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 301
    iput-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    :cond_b
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/knox/container/ContainerCreationParams;
    .locals 2

    .line 381
    new-instance v0, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-direct {v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    .line 382
    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRequestId(I)V

    .line 383
    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    .line 384
    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setLockType(I)V

    .line 385
    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setFingerprintPlus(Z)V

    .line 386
    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setIrisPlus(Z)V

    .line 387
    iget v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setBiometricsInfo(I)V

    .line 388
    iget-object v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setBackupPin(Ljava/lang/String;)V

    .line 389
    iget-boolean v1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setRestoreSelection(Z)V

    .line 390
    iget-boolean p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setIsMigrationFlow(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->clone()Lcom/samsung/android/knox/container/ContainerCreationParams;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 3

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRequestId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContainerCreationParams"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdminUid :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getAdminUid()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestId()I
    .locals 0

    .line 74
    iget p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    return p0
.end method

.method public setBackupPin(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    return-void
.end method

.method public setBiometricsInfo(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    return-void
.end method

.method public setFingerprintPlus(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    return-void
.end method

.method public setIrisPlus(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    return-void
.end method

.method public setIsMigrationFlow(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    return-void
.end method

.method public setLockType(I)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    return-void
.end method

.method public setRestoreSelection(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mName:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBackupPin:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 337
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminParam:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 340
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 342
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mResetPwdKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 347
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 350
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 352
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    :goto_5
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mLockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mCreatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFingerprintPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mRestoreSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-boolean v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mIrisPlus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mBiometricsInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mConfigurationType:Lcom/samsung/android/knox/container/KnoxConfigurationType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 368
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->isMigrationFlow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-boolean p2, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mAdminRemovable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object p0, p0, Lcom/samsung/android/knox/container/ContainerCreationParams;->mFeatureType:Ljava/lang/String;

    if-eqz p0, :cond_6

    .line 373
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 375
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_6
    return-void
.end method
