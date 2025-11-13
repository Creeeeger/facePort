.class public final Landroid/telephony/mbms/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;,
        Landroid/telephony/mbms/DownloadRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CURRENT_VERSION:I = 0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MbmsDownloadRequest"

.field public static final greylist-max-o MAX_APP_INTENT_SIZE:I = 0xc350

.field public static final greylist-max-o MAX_DESTINATION_URI_SIZE:I = 0xc350


# instance fields
.field private final greylist-max-o destinationUri:Landroid/net/Uri;

.field private final greylist-max-o fileServiceId:Ljava/lang/String;

.field private final greylist-max-o serializedResultIntentForApp:Ljava/lang/String;

.field private final greylist-max-o sourceUri:Landroid/net/Uri;

.field private final greylist-max-o subscriptionId:I

.field private final greylist-max-o version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdestinationUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfileServiceId(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetserializedResultIntentForApp(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsourceUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsubscriptionId(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 0

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetversion(Landroid/telephony/mbms/DownloadRequest;)I
    .locals 0

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/mbms/DownloadRequest$1;

    invoke-direct {v0}, Landroid/telephony/mbms/DownloadRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/mbms/DownloadRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/mbms/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iput-object p2, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iput p4, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iput-object p3, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    iput-object p5, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iput p6, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;I)V

    return-void
.end method

.method public static whitelist getMaxAppIntentSize()I
    .locals 1

    const v0, 0xc350

    return v0
.end method

.method public static whitelist getMaxDestinationUriSize()I
    .locals 1

    const v0, 0xc350

    return v0
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

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/telephony/mbms/DownloadRequest;

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    iget v3, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    iget v4, v2, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    iget v4, v2, Landroid/telephony/mbms/DownloadRequest;->version:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    iget-object v4, v2, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public whitelist getDestinationUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getFileServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getHash()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v1, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get sha256 hash object"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o getIntentForApp()Landroid/content/Intent;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSourceUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getSubscriptionId()I
    .locals 1

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    return v0
.end method

.method public greylist-max-o getVersion()I
    .locals 1

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    iget v3, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist toByteArray()[B
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    invoke-direct {v2, p0}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;-><init>(Landroid/telephony/mbms/DownloadRequest;)V

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string v1, "MbmsDownloadRequest"

    const-string v2, "Got IOException trying to serialize opaque data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->fileServiceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->sourceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->destinationUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->subscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest;->serializedResultIntentForApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
