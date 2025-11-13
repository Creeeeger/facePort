.class public Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;
.super Ljava/lang/Object;
.source "SpeakerIDInfo.java"


# instance fields
.field private blacklist ID:Ljava/lang/String;

.field private blacklist data:[F

.field private blacklist size:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    iget v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([FLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    iget v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;

    iget-object v1, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    iget-object v2, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;-><init>([FLjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->clone()Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getData()[F
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    return-object v0
.end method

.method public blacklist getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSpeakerIDInfo([FLjava/lang/String;)V
    .locals 1

    array-length v0, p1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    iget v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->size:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->data:[F

    iput-object p2, p0, Lcom/samsung/vekit/Common/Object/SpeakerIDInfo;->ID:Ljava/lang/String;

    return-void
.end method
