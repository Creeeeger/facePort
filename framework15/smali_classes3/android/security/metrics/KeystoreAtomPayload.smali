.class public final Landroid/security/metrics/KeystoreAtomPayload;
.super Ljava/lang/Object;
.source "KeystoreAtomPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/metrics/KeystoreAtomPayload$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/metrics/KeystoreAtomPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist crashStats:I = 0x8

.field public static final blacklist keyCreationWithAuthInfo:I = 0x2

.field public static final blacklist keyCreationWithGeneralInfo:I = 0x1

.field public static final blacklist keyCreationWithPurposeAndModesInfo:I = 0x3

.field public static final blacklist keyOperationWithGeneralInfo:I = 0x6

.field public static final blacklist keyOperationWithPurposeAndModesInfo:I = 0x5

.field public static final blacklist keystore2AtomWithOverflow:I = 0x4

.field public static final blacklist rkpErrorStats:I = 0x7

.field public static final blacklist storageStats:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload$1;

    invoke-direct {v0}, Landroid/security/metrics/KeystoreAtomPayload$1;-><init>()V

    sput-object v0, Landroid/security/metrics/KeystoreAtomPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    iput-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    iput-object p2, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/metrics/KeystoreAtomPayload-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/security/metrics/KeystoreAtomPayload;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    iput-object p2, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "crashStats"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "rkpErrorStats"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "keyOperationWithGeneralInfo"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "keyOperationWithPurposeAndModesInfo"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "keystore2AtomWithOverflow"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "keyCreationWithPurposeAndModesInfo"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "keyCreationWithAuthInfo"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "keyCreationWithGeneralInfo"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "storageStats"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist crashStats(Landroid/security/metrics/CrashStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_1
    return v0
.end method

.method public static blacklist keyCreationWithAuthInfo(Landroid/security/metrics/KeyCreationWithAuthInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyCreationWithGeneralInfo(Landroid/security/metrics/KeyCreationWithGeneralInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyCreationWithPurposeAndModesInfo(Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyOperationWithGeneralInfo(Landroid/security/metrics/KeyOperationWithGeneralInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keyOperationWithPurposeAndModesInfo(Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist keystore2AtomWithOverflow(Landroid/security/metrics/Keystore2AtomWithOverflow;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist rkpErrorStats(Landroid/security/metrics/RkpErrorStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist storageStats(Landroid/security/metrics/StorageStats;)Landroid/security/metrics/KeystoreAtomPayload;
    .locals 2

    new-instance v0, Landroid/security/metrics/KeystoreAtomPayload;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/security/metrics/KeystoreAtomPayload;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getCrashStats()Landroid/security/metrics/CrashStats;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/CrashStats;

    return-object v0
.end method

.method public blacklist getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithAuthInfo;

    return-object v0
.end method

.method public blacklist getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithGeneralInfo;

    return-object v0
.end method

.method public blacklist getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    return-object v0
.end method

.method public blacklist getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyOperationWithGeneralInfo;

    return-object v0
.end method

.method public blacklist getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    return-object v0
.end method

.method public blacklist getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/Keystore2AtomWithOverflow;

    return-object v0
.end method

.method public blacklist getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/RkpErrorStats;

    return-object v0
.end method

.method public blacklist getStorageStats()Landroid/security/metrics/StorageStats;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/security/metrics/KeystoreAtomPayload;->_assertTag(I)V

    iget-object v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/security/metrics/StorageStats;

    return-object v0
.end method

.method public blacklist getTag()I
    .locals 1

    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v1, Landroid/security/metrics/CrashStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/CrashStats;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    sget-object v1, Landroid/security/metrics/RkpErrorStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/RkpErrorStats;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    sget-object v1, Landroid/security/metrics/KeyOperationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyOperationWithGeneralInfo;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    sget-object v1, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    sget-object v1, Landroid/security/metrics/Keystore2AtomWithOverflow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/Keystore2AtomWithOverflow;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5
    sget-object v1, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_6
    sget-object v1, Landroid/security/metrics/KeyCreationWithAuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithAuthInfo;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_7
    sget-object v1, Landroid/security/metrics/KeyCreationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/KeyCreationWithGeneralInfo;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_8
    sget-object v1, Landroid/security/metrics/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/metrics/StorageStats;

    invoke-direct {p0, v0, v1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setCrashStats(Landroid/security/metrics/CrashStats;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setKeyCreationWithAuthInfo(Landroid/security/metrics/KeyCreationWithAuthInfo;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setKeyCreationWithGeneralInfo(Landroid/security/metrics/KeyCreationWithGeneralInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setKeyCreationWithPurposeAndModesInfo(Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setKeyOperationWithGeneralInfo(Landroid/security/metrics/KeyOperationWithGeneralInfo;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setKeyOperationWithPurposeAndModesInfo(Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setKeystore2AtomWithOverflow(Landroid/security/metrics/Keystore2AtomWithOverflow;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setRkpErrorStats(Landroid/security/metrics/RkpErrorStats;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setStorageStats(Landroid/security/metrics/StorageStats;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/security/metrics/KeystoreAtomPayload;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/security/metrics/KeystoreAtomPayload;->_tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
