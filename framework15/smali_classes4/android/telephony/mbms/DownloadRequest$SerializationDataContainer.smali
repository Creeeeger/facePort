.class Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationDataContainer"
.end annotation


# instance fields
.field private greylist-max-o appIntent:Ljava/lang/String;

.field private greylist-max-o destination:Landroid/net/Uri;

.field private greylist-max-o fileServiceId:Ljava/lang/String;

.field private greylist-max-o source:Landroid/net/Uri;

.field private greylist-max-o subscriptionId:I

.field private greylist-max-o version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetappIntent(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdestination(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfileServiceId(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsource(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsubscriptionId(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I
    .locals 0

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetversion(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I
    .locals 0

    iget p0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    return p0
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetfileServiceId(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetsourceUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetdestinationUri(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetsubscriptionId(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetserializedResultIntentForApp(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    invoke-static {p1}, Landroid/telephony/mbms/DownloadRequest;->-$$Nest$fgetversion(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    return-void
.end method


# virtual methods
.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->version:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->fileServiceId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->source:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->destination:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->subscriptionId:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->appIntent:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
