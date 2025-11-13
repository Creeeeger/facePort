.class Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;
.super Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsSvcbRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvcParamNoDefaultAlpn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/net/module/util/DnsSvcbRecord$SvcParam<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;-><init>(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string/jumbo v2, "no-default-alpn value must be empty"

    invoke-direct {v1, v2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method bridge synthetic blacklist getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;->getValue()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method blacklist getValue()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;->getKey()I

    move-result v0

    invoke-static {v0}, Lcom/android/net/module/util/DnsSvcbRecord;->-$$Nest$smtoKeyName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
