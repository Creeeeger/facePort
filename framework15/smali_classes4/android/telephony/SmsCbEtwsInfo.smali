.class public final Landroid/telephony/SmsCbEtwsInfo;
.super Ljava/lang/Object;
.source "SmsCbEtwsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbEtwsInfo$WarningType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbEtwsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ETWS_WARNING_TYPE_EARTHQUAKE:I = 0x0

.field public static final whitelist ETWS_WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI:I = 0x2

.field public static final whitelist ETWS_WARNING_TYPE_OTHER_EMERGENCY:I = 0x4

.field public static final whitelist ETWS_WARNING_TYPE_TEST_MESSAGE:I = 0x3

.field public static final whitelist ETWS_WARNING_TYPE_TSUNAMI:I = 0x1

.field public static final whitelist ETWS_WARNING_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mIsEmergencyUserAlert:Z

.field private final blacklist mIsPopupAlert:Z

.field private final blacklist mIsPrimary:Z

.field private final greylist-max-o mWarningSecurityInformation:[B

.field private final greylist-max-o mWarningType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SmsCbEtwsInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbEtwsInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbEtwsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IZZZ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    iput-boolean p2, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    iput-boolean p3, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    iput-boolean p4, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPrimary:Z

    iput-object p5, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPrimary:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPrimaryNotificationSignature()[B
    .locals 3

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v0, v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPrimaryNotificationTimestamp()J
    .locals 18

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    array-length v0, v0

    const/4 v4, 0x7

    if-ge v0, v4, :cond_0

    const-wide/16 v5, 0x0

    goto/16 :goto_1

    :cond_0
    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v4, 0x0

    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v5, 0x1

    aget-byte v0, v0, v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v11

    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v5, 0x2

    aget-byte v0, v0, v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v12

    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v5, 0x3

    aget-byte v0, v0, v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v13

    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v5, 0x4

    aget-byte v0, v0, v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v14

    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v5, 0x5

    aget-byte v0, v0, v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v15

    iget-object v0, v1, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    const/4 v5, 0x6

    aget-byte v16, v0, v5

    and-int/lit8 v0, v16, -0x9

    int-to-byte v0, v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    and-int/lit8 v5, v16, 0x8

    if-nez v5, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    neg-int v5, v0

    :goto_0
    move/from16 v17, v5

    mul-int/lit8 v0, v17, 0xf

    mul-int/lit8 v10, v0, 0x3c

    add-int/lit16 v5, v4, 0x7d0

    move v6, v11

    move v7, v12

    move v8, v13

    move v9, v14

    move v2, v10

    move v10, v15

    :try_start_0
    invoke-static/range {v5 .. v10}, Ljava/time/LocalDateTime;->of(IIIIII)Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v3, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-virtual {v0, v3}, Ljava/time/LocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v7, v2

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v5

    return-wide v7

    :catch_0
    move-exception v0

    const-wide/16 v5, 0x0

    return-wide v5

    :cond_2
    const-wide/16 v5, 0x0

    :goto_1
    return-wide v5
.end method

.method public whitelist getWarningType()I
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    return v0
.end method

.method public whitelist isEmergencyUserAlert()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    return v0
.end method

.method public whitelist isPopupAlert()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    return v0
.end method

.method public whitelist isPrimary()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPrimary:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbEtwsInfo{warningType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyUserAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activatePopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsEmergencyUserAlert:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPopupAlert:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mIsPrimary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SmsCbEtwsInfo;->mWarningSecurityInformation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
