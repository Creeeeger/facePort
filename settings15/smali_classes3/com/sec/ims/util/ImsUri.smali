.class public Lcom/sec/ims/util/ImsUri;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/util/ImsUri$UriType;
    }
.end annotation


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

.field public static EMPTY:Lcom/sec/ims/util/ImsUri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "ImsUri"

.field private static final PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;


# instance fields
.field private mSipUri:Lgov/nist/javax/sip/address/SipUri;

.field private mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

.field private mUrn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/ims/util/ImsUri;->DBG:Z

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/util/ImsUri;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/sec/ims/util/ImsUri$1;

    invoke-direct {v0}, Lcom/sec/ims/util/ImsUri$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/ImsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/ims/util/ImsUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    iget-object v0, p1, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iget-object p1, p1, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/SipUri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    return-void
.end method

.method public constructor <init>(Lgov/nist/javax/sip/address/TelURLImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    iput-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    iput-object p1, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/ims/util/ImsUri;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string/jumbo v2, "xxxxx"

    const-string v3, "ImsUri"

    if-gez v1, :cond_2

    sget-boolean v1, Lcom/sec/ims/util/ImsUri;->DBG:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    const-string v1, "parse: illegal Uri - "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v4, Lgov/nist/javax/sip/parser/URLParser;

    invoke-direct {v4, p0}, Lgov/nist/javax/sip/parser/URLParser;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "sip"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    const-string/jumbo v5, "sips"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "tel"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;->telURL(Z)Lgov/nist/javax/sip/address/TelURLImpl;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/ims/util/ImsUri;-><init>(Lgov/nist/javax/sip/address/TelURLImpl;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "urn"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/sec/ims/util/ImsUri;

    invoke-direct {v1, p0}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_5
    :goto_1
    new-instance v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/parser/URLParser;->sipURL(Z)Lgov/nist/javax/sip/address/SipUri;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/sec/ims/util/ImsUri;-><init>(Lgov/nist/javax/sip/address/SipUri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parse: failured. uri="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/sec/ims/util/ImsUri;->DBG:Z

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, v2

    :goto_3
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " e="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-object v0
.end method

.method public static removeUriParametersAndHeaders(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->removeParams()V

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->removeHeaders()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/GenericURI;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelURLImpl;->isGlobal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelURLImpl;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelURLImpl;->getPhoneNumber()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v1

    :cond_3
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPhoneContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelURLImpl;->getPhoneContext()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getPort()I

    move-result p0

    return p0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->getScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUriType()Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->URN:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method public getUser()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->getUser()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/SipUri;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/TelURLImpl;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public removeHeaders()V
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->removeHeaders()V

    return-void
.end method

.method public removeParam(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public removeParams()V
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/address/SipUri;->removeParameters()V

    return-void
.end method

.method public removeTelParams()V
    .locals 3

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/address/TelURLImpl;->getParameterNames()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/address/TelURLImpl;->removeParameter(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeUserParam()V
    .locals 1

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/address/SipUri;->removeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/address/TelURLImpl;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/address/SipUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setUserParam(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/address/SipUri;->setUserParam(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mUrn:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringLimit()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public uri()Lgov/nist/javax/sip/address/GenericURI;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/util/ImsUri;->mTelUri:Lgov/nist/javax/sip/address/TelURLImpl;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/util/ImsUri;->mSipUri:Lgov/nist/javax/sip/address/SipUri;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object p0

    invoke-virtual {p0}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
