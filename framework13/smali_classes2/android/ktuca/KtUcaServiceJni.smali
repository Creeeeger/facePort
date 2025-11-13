.class public Landroid/ktuca/KtUcaServiceJni;
.super Ljava/lang/Object;
.source "KtUcaServiceJni.java"


# static fields
.field private static final greylist D:Z = true

.field private static final greylist TAG:Ljava/lang/String; = "KtUcaServiceJni"

.field private static greylist m_Handler:Landroid/os/Handler;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 4

    .line 21
    const/4 v0, 0x0

    sput-object v0, Landroid/ktuca/KtUcaServiceJni;->m_Handler:Landroid/os/Handler;

    .line 200
    const-string v0, "KtUcaServiceJni"

    const-string v1, "System.loadLibrary"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "salesCode":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/lib/libktuca2.so"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 205
    .local v2, "isExists":Z
    const-string v3, "SKC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KTC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "LUC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    const-string v3, "KOO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    .line 207
    const-string v3, "ktuca2"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 210
    .end local v0    # "salesCode":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "isExists":Z
    :cond_1
    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "KtUcaServiceJni"

    const-string v1, "[STAT] KtUcaServiceJni Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public static native greylist KUCA_CHInit(B[B[I)J
.end method

.method public static native greylist KUCA_Close([BB)J
.end method

.method public static native greylist KUCA_CloseT([BB)J
.end method

.method public static native greylist KUCA_KUH_Establish(B)J
.end method

.method public static native greylist KUCA_KUH_Release(B)J
.end method

.method public static native greylist KUCA_KUH_Transmit(B[BI[B[I)J
.end method

.method public static native greylist KUCA_Open([B[B[I)J
.end method

.method public static native greylist KUCA_OpenT([B[B[I)J
.end method

.method public static native greylist KUCA_Transmit([B[BI[B[I)J
.end method

.method public static native greylist KUCA_UCAVersion([B[B[I)J
.end method

.method public static native greylist KUCA_getHandle([B[B[B[B[I)J
.end method

.method public static native greylist KUCA_getICCID([B[B[II[B)J
.end method

.method public static native greylist KUCA_getIMSI([B[B[II[B)J
.end method

.method public static native greylist KUCA_getMDN([B[B[II[B)J
.end method

.method public static native greylist KUCA_getMODEL([B[B[II[B)J
.end method

.method public static native greylist KUCA_getMSISDN([B[B[II[B)J
.end method

.method public static native greylist KUCA_getPUID([B[B[II[B)J
.end method

.method public static native greylist KUCA_getPinStatus([BI[B[I)J
.end method

.method public static native greylist KUCA_getSIMInfo([B[B[I)J
.end method

.method public static native greylist KUCA_getSimStatus([B[B)J
.end method

.method public static native greylist KUCA_printCHInfo(B)J
.end method

.method public static native greylist KUCA_usimAUTH([B[B[B[B[I)J
.end method

.method public static native greylist KUCA_verifyPin([BILjava/lang/String;[B[I)J
.end method


# virtual methods
.method public greylist uca_CHInit(B[B[I)J
    .locals 2
    .param p1, "ucatag"    # B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I

    .line 154
    const-string v0, "KtUcaServiceJni"

    const-string v1, "[STAT] uca_CHInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CHInit(B[B[I)J

    move-result-wide v0

    .line 156
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_Close([BB)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "channel"    # B

    .line 134
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Close([BB)J

    move-result-wide v0

    .line 136
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_CloseT([BB)J
    .locals 2
    .param p1, "appId"    # [B
    .param p2, "channel"    # B

    .line 194
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_CloseT([BB)J

    move-result-wide v0

    .line 196
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_KUH_Establish(B)J
    .locals 2
    .param p1, "ucatag"    # B

    .line 167
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Establish(B)J

    move-result-wide v0

    .line 168
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_KUH_Release(B)J
    .locals 2
    .param p1, "ucatag"    # B

    .line 173
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Release(B)J

    move-result-wide v0

    .line 175
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_KUH_Transmit(B[BI[B[I)J
    .locals 2
    .param p1, "ucatag"    # B
    .param p2, "pbSendBuffer"    # [B
    .param p3, "cbSendLength"    # I
    .param p4, "pbRecvBuffer"    # [B
    .param p5, "pcbRecvLength"    # [I

    .line 180
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v0

    .line 182
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_Open([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I

    .line 119
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Open([B[B[I)J

    move-result-wide v0

    .line 121
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_OpenT([B[B[I)J
    .locals 2
    .param p1, "appId"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I

    .line 187
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_OpenT([B[B[I)J

    move-result-wide v0

    .line 189
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_Transmit([B[BI[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "input"    # [B
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I

    .line 127
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v0

    .line 129
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_UCAVersion([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I

    .line 149
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v0

    .line 150
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getHandle([B[B[B[B[I)J
    .locals 2
    .param p1, "callerId"    # [B
    .param p2, "preKey"    # [B
    .param p3, "appId"    # [B
    .param p4, "authHandle"    # [B
    .param p5, "authHandleLen"    # [I

    .line 34
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v0

    .line 36
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getICCID([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .line 58
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v0

    .line 60
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getIMSI([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .line 50
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v0

    .line 52
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getMDN([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .line 75
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v0

    .line 77
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getMODEL([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .line 83
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v0

    .line 85
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getMSISDN([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .line 42
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v0

    .line 44
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getPUID([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B

    .line 66
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v0

    .line 68
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getPinStatus([BI[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "output"    # [B
    .param p4, "outputLen"    # [I

    .line 105
    invoke-static {p1, p2, p3, p4}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v0

    .line 107
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getSIMInfo([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I

    .line 90
    invoke-static {p1, p2, p3}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v0

    .line 92
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_getSimStatus([B[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B

    .line 142
    invoke-static {p1, p2}, Landroid/ktuca/KtUcaServiceJni;->KUCA_getSimStatus([B[B)J

    move-result-wide v0

    .line 144
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_printCHInfo(B)J
    .locals 2
    .param p1, "ucatag"    # B

    .line 161
    invoke-static {p1}, Landroid/ktuca/KtUcaServiceJni;->KUCA_printCHInfo(B)J

    move-result-wide v0

    .line 162
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_usimAUTH([B[B[B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I

    .line 98
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v0

    .line 100
    .local v0, "retVal":J
    return-wide v0
.end method

.method public greylist uca_verifyPin([BILjava/lang/String;[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "pinCode"    # Ljava/lang/String;
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I

    .line 112
    invoke-static {p1, p2, p3, p4, p5}, Landroid/ktuca/KtUcaServiceJni;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v0

    .line 114
    .local v0, "retVal":J
    return-wide v0
.end method
