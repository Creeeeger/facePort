.class public Landroid/ktuca/KtUcaService;
.super Landroid/ktuca/IKtUcaIF$Stub;
.source "KtUcaService.java"


# instance fields
.field private greylist KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

.field private final greylist TAG:Ljava/lang/String;

.field private greylist mChannel:[B

.field private greylist mChannelLen:[I

.field private greylist mContext:Landroid/content/Context;

.field private greylist referenceCount:I


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetKtUcaServiceJni(Landroid/ktuca/KtUcaService;)Landroid/ktuca/KtUcaServiceJni;
    .locals 0

    iget-object p0, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmChannel(Landroid/ktuca/KtUcaService;)[B
    .locals 0

    iget-object p0, p0, Landroid/ktuca/KtUcaService;->mChannel:[B

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetmChannelLen(Landroid/ktuca/KtUcaService;)[I
    .locals 0

    iget-object p0, p0, Landroid/ktuca/KtUcaService;->mChannelLen:[I

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fputKtUcaServiceJni(Landroid/ktuca/KtUcaService;Landroid/ktuca/KtUcaServiceJni;)V
    .locals 0

    iput-object p1, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Landroid/ktuca/IKtUcaIF$Stub;-><init>()V

    .line 9
    const-string v0, "KT_UCA_SERVICE"

    iput-object v0, p0, Landroid/ktuca/KtUcaService;->TAG:Ljava/lang/String;

    .line 10
    const/4 v1, 0x0

    iput v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 12
    const/16 v1, 0xa

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/ktuca/KtUcaService;->mChannel:[B

    .line 13
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/ktuca/KtUcaService;->mChannelLen:[I

    .line 14
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    .line 18
    const-wide/16 v1, -0x1

    .line 19
    .local v1, "ret":J
    iput-object p1, p0, Landroid/ktuca/KtUcaService;->mContext:Landroid/content/Context;

    .line 20
    const-string v3, "+[KtUcaService]"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/ktuca/KtUcaService$1;

    invoke-direct {v4, p0}, Landroid/ktuca/KtUcaService$1;-><init>(Landroid/ktuca/KtUcaService;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 31
    const-string v3, "-[KtUcaService]"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method


# virtual methods
.method public greylist KUCA_CHInit(B[B[I)J
    .locals 5
    .param p1, "ucatag"    # B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    const-wide/16 v0, -0x1

    .line 174
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_CHInit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_CHInit] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-wide v0
.end method

.method public greylist KUCA_Close([BB)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    const-wide/16 v0, -0x1

    .line 150
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Close]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Close([BB)J

    move-result-wide v0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Close] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-wide v0
.end method

.method public greylist KUCA_CloseT([BB)J
    .locals 4
    .param p1, "appId"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    const-wide/16 v0, -0x1

    .line 222
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_CloseT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CloseT([BB)J

    move-result-wide v0

    .line 224
    const-string v3, "-[KUCA_CloseT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-wide v0
.end method

.method public greylist KUCA_KUH_Establish(B)J
    .locals 5
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    const-wide/16 v0, -0x1

    .line 190
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Establish]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Establish(B)J

    move-result-wide v0

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_KUH_Establish] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-wide v0
.end method

.method public greylist KUCA_KUH_Release(B)J
    .locals 4
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    const-wide/16 v0, -0x1

    .line 198
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Release]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Release(B)J

    move-result-wide v0

    .line 200
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-wide v0
.end method

.method public greylist KUCA_KUH_Transmit(B[BI[B[I)J
    .locals 4
    .param p1, "ucatag"    # B
    .param p2, "pbSendBuffer"    # [B
    .param p3, "cbSendLength"    # I
    .param p4, "pbRecvBuffer"    # [B
    .param p5, "pcbRecvLength"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    const-wide/16 v0, -0x1

    .line 206
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_KUH_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    .line 208
    const-string v3, "-[KUCA_KUH_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-wide v0
.end method

.method public greylist KUCA_Open([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    const-wide/16 v0, -0x1

    .line 133
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Open]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Open([B[B[I)J

    move-result-wide v0

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Open] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-wide v0
.end method

.method public greylist KUCA_OpenT([B[B[I)J
    .locals 4
    .param p1, "appId"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    const-wide/16 v0, -0x1

    .line 214
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_OpenT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_OpenT([B[B[I)J

    move-result-wide v0

    .line 216
    const-string v3, "-[KUCA_OpenT]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-wide v0
.end method

.method public greylist KUCA_Transmit([B[BI[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "input"    # [B
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-wide/16 v0, -0x1

    .line 142
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_Transmit]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_Transmit] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-wide v0
.end method

.method public greylist KUCA_UCAVersion([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const-wide/16 v0, -0x1

    .line 166
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_UCAVersion]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v0

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_UCAVersion] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-wide v0
.end method

.method public greylist KUCA_getHandle([B[B[B[B[I)J
    .locals 10
    .param p1, "callerId"    # [B
    .param p2, "preKey"    # [B
    .param p3, "appId"    # [B
    .param p4, "handle"    # [B
    .param p5, "handleLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const-wide/16 v0, -0x1

    .line 38
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getHandle]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v4, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/ktuca/KtUcaServiceJni;->uca_getHandle([B[B[B[B[I)J

    move-result-wide v0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getHandle] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-wide v0
.end method

.method public greylist KUCA_getICCID([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-wide/16 v0, -0x1

    .line 66
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getICCID]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getICCID] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-wide v0
.end method

.method public greylist KUCA_getIMSI([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-wide/16 v0, -0x1

    .line 57
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getIMSI]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getIMSI] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-wide v0
.end method

.method public greylist KUCA_getMDN([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const-wide/16 v0, -0x1

    .line 84
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMDN]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMDN] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-wide v0
.end method

.method public greylist KUCA_getMODEL([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const-wide/16 v0, -0x1

    .line 93
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMODEL]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMODEL] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-wide v0
.end method

.method public greylist KUCA_getMSISDN([B[B[II[B)J
    .locals 10
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const-wide/16 v0, -0x1

    .line 48
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getMSISDN]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v4, p0, Landroid/ktuca/KtUcaService;->KtUcaServiceJni:Landroid/ktuca/KtUcaServiceJni;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/ktuca/KtUcaServiceJni;->uca_getMSISDN([B[B[II[B)J

    move-result-wide v0

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getMSISDN] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-wide v0
.end method

.method public greylist KUCA_getPUID([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const-wide/16 v0, -0x1

    .line 75
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getPUID]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getPUID] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-wide v0
.end method

.method public greylist KUCA_getPinStatus([BI[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "output"    # [B
    .param p4, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    const-wide/16 v0, -0x1

    .line 117
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getPinStatus]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p1, p2, p3, p4}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getPinStatus] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-wide v0
.end method

.method public greylist KUCA_getSIMInfo([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const-wide/16 v0, -0x1

    .line 101
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getSIMInfo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v0

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getSIMInfo] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-wide v0
.end method

.method public greylist KUCA_getSimStatus([B[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    const-wide/16 v0, -0x1

    .line 158
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_getSimStatus]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSimStatus([B[B)J

    move-result-wide v0

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_getSimStatus] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-wide v0
.end method

.method public greylist KUCA_printCHInfo(B)J
    .locals 5
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    const-wide/16 v0, -0x1

    .line 182
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_printCHInfo]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_printCHInfo(B)J

    move-result-wide v0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_printCHInfo] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-wide v0
.end method

.method public greylist KUCA_usimAUTH([B[B[B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    const-wide/16 v0, -0x1

    .line 109
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_usimAUTH]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_usimAUTH] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-wide v0
.end method

.method public greylist KUCA_verifyPin([BILjava/lang/String;[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "pinCode"    # Ljava/lang/String;
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    const-wide/16 v0, -0x1

    .line 125
    .local v0, "ret":J
    const-string v2, "KT_UCA_SERVICE"

    const-string v3, "+[KUCA_verifyPin]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-[KUCA_verifyPin] ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-wide v0
.end method

.method public greylist getResource()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    const-string v0, "2.0.0_R06_110317"

    .line 232
    .local v0, "KTUCA_VER":Ljava/lang/String;
    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+[KtUcaService Ver]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KT_UCA_SERVICE"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ref. Cnt. : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    return v1
.end method

.method public greylist releaseResource()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ref. Cnt. : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT_UCA_SERVICE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget v0, p0, Landroid/ktuca/KtUcaService;->referenceCount:I

    return v0
.end method
