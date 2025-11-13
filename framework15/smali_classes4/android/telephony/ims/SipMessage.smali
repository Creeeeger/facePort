.class public final Landroid/telephony/ims/SipMessage;
.super Ljava/lang/Object;
.source "SipMessage.java"

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
            "Landroid/telephony/ims/SipMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CRLF:Ljava/lang/String; = "\r\n"

.field private static final blacklist IS_DEBUGGING:Z


# instance fields
.field private final blacklist mCallIdParam:Ljava/lang/String;

.field private final blacklist mContent:[B

.field private final blacklist mHeaderSection:Ljava/lang/String;

.field private final blacklist mStartLine:Ljava/lang/String;

.field private final blacklist mViaBranchParam:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/telephony/ims/SipMessage;->IS_DEBUGGING:Z

    new-instance v0, Landroid/telephony/ims/SipMessage$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mCallIdParam:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipMessage-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Required parameter is null: startLine"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Required parameter is null: headerSection"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Required parameter is null: content"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getTransactionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mCallIdParam:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "header section MUST contain a branch parameter inside of the Via header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sanitizeStartLineRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <Request-URI> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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

    check-cast v2, Landroid/telephony/ims/SipMessage;

    iget-object v3, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    iget-object v4, v2, Landroid/telephony/ims/SipMessage;->mContent:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

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

.method public whitelist getCallIdParameter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mCallIdParam:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContent()[B
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    return-object v0
.end method

.method public whitelist getHeaderSection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStartLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getViaBranchParameter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist toEncodedMessage()[B
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    array-length v4, v0

    iget-object v5, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartLine: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/telephony/ims/SipMessage;->IS_DEBUGGING:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/ims/SipMessage;->sanitizeStartLineRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "], Header: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/telephony/ims/SipMessage;->IS_DEBUGGING:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "], Content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/SipMessage;->getContent()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_2

    const-string v1, "[NONE]"

    goto :goto_2

    :cond_2
    const-string v1, "[NOT SHOWN]"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mCallIdParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
