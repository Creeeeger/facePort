.class public final Landroid/permission/PermissionGroupUsage;
.super Ljava/lang/Object;
.source "PermissionGroupUsage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActive:Z

.field private final blacklist mAttributionLabel:Ljava/lang/CharSequence;

.field private final blacklist mAttributionTag:Ljava/lang/CharSequence;

.field private final blacklist mLastAccessTimeMillis:J

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPermissionGroupName:Ljava/lang/String;

.field private final blacklist mPersistentDeviceId:Ljava/lang/String;

.field private final blacklist mPhoneCall:Z

.field private final blacklist mProxyLabel:Ljava/lang/CharSequence;

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/permission/PermissionGroupUsage$1;

    invoke-direct {v0}, Landroid/permission/PermissionGroupUsage$1;-><init>()V

    sput-object v0, Landroid/permission/PermissionGroupUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v2, v1, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    and-int/lit8 v9, v1, 0x40

    const/4 v10, 0x0

    if-nez v9, :cond_2

    move-object v9, v10

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v9

    :goto_2
    and-int/lit16 v11, v1, 0x80

    if-nez v11, :cond_3

    move-object v11, v10

    goto :goto_3

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v11

    :goto_3
    and-int/lit16 v12, v1, 0x100

    if-nez v12, :cond_4

    move-object v12, v10

    goto :goto_4

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v12

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    iput-object v4, v0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-static {v14, v10, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v5, v0, Landroid/permission/PermissionGroupUsage;->mUid:I

    iput-wide v6, v0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    iput-object v8, v0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v14, v10, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-boolean v2, v0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    iput-boolean v3, v0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    iput-object v9, v0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    iput-object v11, v0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    iput-object v12, v0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    iput-object v13, v0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {v14, v10, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    iput-wide p3, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    iput-object p5, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-boolean p6, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    iput-boolean p7, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    iput-object p8, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    iput-object p9, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    iput-object p10, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    iput-object p11, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

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

    check-cast v2, Landroid/permission/PermissionGroupUsage;

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    iget v4, v2, Landroid/permission/PermissionGroupUsage;->mUid:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    iget-wide v5, v2, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    iget-boolean v4, v2, Landroid/permission/PermissionGroupUsage;->mActive:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    iget-boolean v4, v2, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

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

.method public whitelist getAttributionLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLastAccessTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermissionGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPersistentDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProxyLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getUid()I
    .locals 1

    iget v0, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    return v0
.end method

.method public whitelist isPhoneCall()Z
    .locals 1

    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroupUsage { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastAccessTimeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permissionGroupName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxyLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persistentDeviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x10

    :cond_0
    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x20

    :cond_1
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    :cond_2
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    or-int/lit16 v0, v0, 0x80

    :cond_3
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x100

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
