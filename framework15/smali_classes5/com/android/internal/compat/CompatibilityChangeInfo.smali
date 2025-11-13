.class public Lcom/android/internal/compat/CompatibilityChangeInfo;
.super Ljava/lang/Object;
.source "CompatibilityChangeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/CompatibilityChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChangeId:J

.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mDisabled:Z

.field private final blacklist mEnableSinceTargetSdk:I

.field private final blacklist mLoggingOnly:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOverridable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/compat/CompatibilityChangeInfo$1;

    invoke-direct {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/CompatibilityChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/compat/CompatibilityChangeInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    iput-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Long;Ljava/lang/String;IIZZLjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    iput-object p2, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    if-lez p3, :cond_0

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    goto :goto_0

    :cond_0
    if-lez p4, :cond_1

    iput p4, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    :goto_0
    iput-boolean p5, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    iput-boolean p6, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    iput-object p7, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

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

    instance-of v2, p1, Lcom/android/internal/compat/CompatibilityChangeInfo;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeInfo;

    iget-wide v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    iget-wide v5, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    iget v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    iget-boolean v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    iget-boolean v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    iget-boolean v4, v2, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    return v0
.end method

.method public blacklist getEnableSinceTargetSdk()I
    .locals 1

    iget v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    return v0
.end method

.method public blacklist getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    return-wide v0
.end method

.method public blacklist getLoggingOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOverridable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompatibilityChangeInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, "; enableSinceTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "; disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "; loggingOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "; overridable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mChangeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mEnableSinceTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDisabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mLoggingOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/compat/CompatibilityChangeInfo;->mOverridable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
