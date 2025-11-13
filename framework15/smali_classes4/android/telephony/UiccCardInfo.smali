.class public final Landroid/telephony/UiccCardInfo;
.super Ljava/lang/Object;
.source "UiccCardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCardId:I

.field private final blacklist mEid:Ljava/lang/String;

.field private final blacklist mIccId:Ljava/lang/String;

.field private blacklist mIccIdAccessRestricted:Z

.field private final blacklist mIsEuicc:Z

.field private final blacklist mIsMultipleEnabledProfilesSupported:Z

.field private final blacklist mIsRemovable:Z

.field private final blacklist mPhysicalSlotIndex:I

.field private final blacklist mPortList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/UiccCardInfo$1;

    invoke-direct {v0}, Landroid/telephony/UiccCardInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    sget-object v1, Landroid/telephony/UiccPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/UiccCardInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/UiccCardInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZILjava/lang/String;IZZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "IZZ",
            "Ljava/util/List<",
            "Landroid/telephony/UiccPortInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    iput-boolean p1, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    iput p2, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    iput-object p3, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    iput p4, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    iput-boolean p5, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    iput-boolean p6, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    iput-object p7, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

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

    check-cast v2, Landroid/telephony/UiccCardInfo;

    iget-boolean v3, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    iget-boolean v4, v2, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    iget v4, v2, Landroid/telephony/UiccCardInfo;->mCardId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    iget v4, v2, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    iget-boolean v4, v2, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    iget-boolean v4, v2, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

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

.method public whitelist getCardId()I
    .locals 1

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    return v0
.end method

.method public whitelist getEid()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIccId()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v0}, Landroid/telephony/UiccPortInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIccId() is not supported by UiccCardInfo. Please Use UiccPortInfo API instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPhysicalSlotIndex()I
    .locals 1

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    return v0
.end method

.method public whitelist getPorts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccPortInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSlotIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEuicc()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    return v0
.end method

.method public whitelist isMultipleEnabledProfilesSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    return v0
.end method

.method public whitelist isRemovable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    return v0
.end method

.method public blacklist setIccIdAccessRestricted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccCardInfo (mIsEuicc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCardId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhysicalSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsMultipleEnabledProfilesSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIccIdAccessRestricted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsEuicc:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mCardId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mEid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/UiccCardInfo;->mPhysicalSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsRemovable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIsMultipleEnabledProfilesSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/UiccCardInfo;->mPortList:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-boolean v0, p0, Landroid/telephony/UiccCardInfo;->mIccIdAccessRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
