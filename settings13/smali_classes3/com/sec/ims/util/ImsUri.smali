.class public Lcom/sec/ims/util/ImsUri;
.super Ljava/lang/Object;
.source "ImsUri.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field private static final PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;


# instance fields
.field private mSipUri:Lgov/nist/javax/sip/address/SipUri;

.field private mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

.field private mUrn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/util/ImsUri;->DBG:Z

    const-string v0, "\\s+"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/util/ImsUri;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    .line 454
    new-instance v0, Lcom/sec/ims/util/ImsUri$1;

    invoke-direct {v0}, Lcom/sec/ims/util/ImsUri$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 447
    iget-object v0, p1, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 448
    iget-object p1, p1, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/util/ImsUri-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/ims/util/ImsUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/SipUri;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 126
    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/TelURLImpl;)V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 136
    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    .line 54
    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    .line 116
    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 70
    :cond_0
    sget-object v1, Lcom/sec/ims/util/ImsUri;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "xxxxx"

    const-string v3, "ImsUri"

    if-gez v1, :cond_2

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse: illegal Uri - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/sec/ims/util/ImsUri;->DBG:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    :try_start_0
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v4, p0}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const-string v5, "sip"

    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    const-string v5, "sips"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "tel"

    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 84
    new-instance v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/ims/util/ImsUri;-><init>(Lgov/nist/javax/sip/address/TelURLImpl;)V

    return-object v1

    :cond_4
    const-string v4, "urn"

    .line 85
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    new-instance v1, Lcom/sec/ims/util/ImsUri;

    invoke-direct {v1, p0}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 82
    :cond_5
    :goto_1
    new-instance v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/ims/util/ImsUri;-><init>(Lgov/nist/javax/sip/address/SipUri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse: failured. uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/sec/ims/util/ImsUri;->DBG:Z

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move-object p0, v2

    :goto_2
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " e="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 375
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 377
    :cond_2
    check-cast p1, Lcom/sec/ims/util/ImsUri;

    .line 379
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/GenericURI;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 359
    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uri()Lgov/nist/javax/sip/address/GenericURI;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_0

    return-object v0

    .line 418
    :cond_0
    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 442
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
