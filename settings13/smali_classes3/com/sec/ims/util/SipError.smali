.class public Lcom/sec/ims/util/SipError;
.super Ljava/lang/Object;
.source "SipError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/util/SipError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCode:I

.field protected mReason:Ljava/lang/String;

.field protected mReasonHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 226
    new-instance v0, Lcom/sec/ims/util/SipError$1;

    invoke-direct {v0}, Lcom/sec/ims/util/SipError$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/SipError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/util/SipError-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/util/SipError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 164
    instance-of v0, p1, Lcom/sec/ims/util/SipError;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    check-cast p1, Lcom/sec/ims/util/SipError;

    .line 171
    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    iget v0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v3, p1, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v0, v3, :cond_2

    iget-object p0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 173
    :cond_3
    :goto_0
    iget p0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget p1, p1, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne p0, p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 153
    iget v1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 260
    iget p2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object p2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 263
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object p2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    :goto_0
    iget-object p2, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 270
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object p0, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
