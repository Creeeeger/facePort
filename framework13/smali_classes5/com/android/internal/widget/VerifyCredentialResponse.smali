.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;
.source "VerifyCredentialResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$Builder;,
        Lcom/android/internal/widget/VerifyCredentialResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final greylist-max-o OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final greylist-max-o RESPONSE_ERROR:I = -0x1

.field public static final greylist-max-o RESPONSE_OK:I = 0x0

.field public static final greylist-max-o RESPONSE_RETRY:I = 0x1

.field public static final blacklist RESPONSE_SKIP:I = 0x1

.field public static final blacklist SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private final blacklist mGatekeeperHAT:[B

.field private final blacklist mGatekeeperPasswordHandle:J

.field private final greylist-max-o mResponseCode:I

.field private blacklist mSecret:[B

.field private final greylist-max-o mTimeout:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 52
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 53
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 65
    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II[BJ)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "gatekeeperHAT"    # [B
    .param p4, "gatekeeperPasswordHandle"    # J

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 152
    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 153
    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    .line 154
    iput-wide p4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    .line 155
    return-void
.end method

.method synthetic constructor blacklist <init>(II[BJLcom/android/internal/widget/VerifyCredentialResponse-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-void
.end method

.method private constructor blacklist <init>(II[BJ[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "timeout"    # I
    .param p3, "gatekeeperHAT"    # [B
    .param p4, "gatekeeperPasswordHandle"    # J
    .param p6, "secret"    # [B

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    .line 162
    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    .line 163
    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    .line 164
    iput-wide p4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    .line 165
    iput-object p6, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    .line 166
    return-void
.end method

.method synthetic constructor blacklist <init>(II[BJ[BLcom/android/internal/widget/VerifyCredentialResponse-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ[B)V

    return-void
.end method

.method public static blacklist fromError()Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7

    .line 143
    new-instance v6, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v6
.end method

.method public static greylist-max-o fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 4
    .param p0, "gateKeeperResponse"    # Landroid/service/gatekeeper/GateKeeperResponse;

    .line 231
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    .line 232
    .local v0, "responseCode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    return-object v1

    .line 234
    :cond_0
    if-nez v0, :cond_2

    .line 235
    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 236
    .local v1, "token":[B
    if-nez v1, :cond_1

    .line 238
    const-string v2, "VerifyCredentialResponse"

    const-string/jumbo v3, "verifyChallenge response had no associated payload"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    return-object v2

    .line 241
    :cond_1
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    return-object v2

    .line 244
    .end local v1    # "token":[B
    :cond_2
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p0, "timeout"    # I

    .line 132
    new-instance v6, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v6
.end method


# virtual methods
.method public blacklist containsGatekeeperPasswordHandle()Z
    .locals 4

    .line 207
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist destroy()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    if-eqz v0, :cond_0

    .line 259
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 261
    :cond_0
    return-void
.end method

.method public blacklist getGatekeeperHAT()[B
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    return-object v0
.end method

.method public blacklist getGatekeeperPasswordHandle()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-wide v0
.end method

.method public greylist-max-o getResponseCode()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return v0
.end method

.method public blacklist getSecret()[B
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    return-object v0
.end method

.method public greylist-max-o getTimeout()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public blacklist isMatched()Z
    .locals 1

    .line 219
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isOK()Z
    .locals 1

    .line 265
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setSecret([B)V
    .locals 0
    .param p1, "secret"    # [B

    .line 254
    iput-object p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    .line 255
    return-void
.end method

.method public greylist-max-o stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7

    .line 170
    new-instance v6, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iget v2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v6
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GK HAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GK PW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 179
    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    if-eqz v0, :cond_0

    .line 183
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mSecret:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 186
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    :cond_1
    :goto_0
    return-void
.end method
