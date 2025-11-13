.class public final Landroid/telephony/ims/SipDetails;
.super Ljava/lang/Object;
.source "SipDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDetails$Builder;,
        Landroid/telephony/ims/SipDetails$Method;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist METHOD_PUBLISH:I = 0x2

.field public static final whitelist METHOD_REGISTER:I = 0x1

.field public static final whitelist METHOD_SUBSCRIBE:I = 0x3

.field public static final whitelist METHOD_UNKNOWN:I


# instance fields
.field private final blacklist mCallId:Ljava/lang/String;

.field private final blacklist mCseq:I

.field private final blacklist mMethod:I

.field private final blacklist mReasonHeaderCause:I

.field private final blacklist mReasonHeaderText:Ljava/lang/String;

.field private final blacklist mResponseCode:I

.field private final blacklist mResponsePhrase:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/SipDetails$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipDetails$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDetails-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/SipDetails$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmMethod(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmCseq(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmResponseCode(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmResponsePhrase(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmReasonHeaderCause(Landroid/telephony/ims/SipDetails$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmReasonHeaderText(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/ims/SipDetails$Builder;->-$$Nest$fgetmCallId(Landroid/telephony/ims/SipDetails$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/SipDetails$Builder;Landroid/telephony/ims/SipDetails-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipDetails;-><init>(Landroid/telephony/ims/SipDetails$Builder;)V

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

    check-cast v2, Landroid/telephony/ims/SipDetails;

    iget v3, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    iget v4, v2, Landroid/telephony/ims/SipDetails;->mMethod:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    iget v4, v2, Landroid/telephony/ims/SipDetails;->mCseq:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    iget v4, v2, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    iget v4, v2, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public whitelist getCSeq()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    return v0
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMethod()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    return v0
.end method

.method public whitelist getReasonHeaderCause()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    return v0
.end method

.method public whitelist getReasonHeaderText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResponseCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    return v0
.end method

.method public whitelist getResponsePhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipDetails { methodType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ResponseCPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ReasonHeaderCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ReasonHeaderText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mCseq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mResponsePhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mReasonHeaderText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDetails;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
