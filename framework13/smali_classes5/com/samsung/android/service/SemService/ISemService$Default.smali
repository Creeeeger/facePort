.class public Lcom/samsung/android/service/SemService/ISemService$Default;
.super Ljava/lang/Object;
.source "ISemService.java"

# interfaces
.implements Lcom/samsung/android/service/SemService/ISemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/SemService/ISemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist ICD()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist check_SeState([B[B)I
    .locals 1
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist closeSpiDriver()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist close_Spi(I)I
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist continue_attestation(Ljava/lang/String;I[B)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "dataLen"    # I
    .param p3, "rspData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist deactivate_Cards(I[Ljava/lang/String;[II)I
    .locals 1
    .param p1, "RequestType"    # I
    .param p2, "package_name"    # [Ljava/lang/String;
    .param p3, "package_len"    # [I
    .param p4, "arrayLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist deactivate_CardsAID(II[Ljava/lang/String;[II)I
    .locals 1
    .param p1, "RequestType"    # I
    .param p2, "bean"    # I
    .param p3, "package_name"    # [Ljava/lang/String;
    .param p4, "package_len"    # [I
    .param p5, "arrayLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist eSE_FactoryReset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist eSE_FullFactoryReset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist eSE_LowFactoryReset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist esek_certificate_check()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAtr_Spi()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCPLC14mode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist get_ESEA()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist get_HQMMemory([B)I
    .locals 1
    .param p1, "hw_memory_data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist grdm_Check_Status()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist grdm_check_restricted_mode()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist grdm_get_attes_cert(I[B)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "rspData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist grdm_get_session()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist grdm_release_session()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist grdm_request_key(I[B)I
    .locals 1
    .param p1, "domainIndex"    # I
    .param p2, "key_blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist handle_CCM([BI)[Ljava/lang/String;
    .locals 1
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist handle_CCMCB([BI[BI)[Ljava/lang/String;
    .locals 1
    .param p1, "ccmData"    # [B
    .param p2, "ccmDataLen"    # I
    .param p3, "respData"    # [B
    .param p4, "respLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist inject_esesm_keyset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLccmSwp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist openSpiDriver()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist open_Spi(I)I
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetForCOSU()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scp11_certificate_check()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist secureLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public blacklist sem_factory()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist send_Data([BI[BI)I
    .locals 1
    .param p1, "baCmd"    # [B
    .param p2, "cLen"    # I
    .param p3, "baRsp"    # [B
    .param p4, "flag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist start_SLOG()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public blacklist start_attestation([BI[BI)I
    .locals 1
    .param p1, "drRsp"    # [B
    .param p2, "drLen"    # I
    .param p3, "svRsp"    # [B
    .param p4, "svLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist start_request_credentials([B[BLjava/lang/String;[B)I
    .locals 1
    .param p1, "appletAid"    # [B
    .param p2, "associatedAid"    # [B
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "key_blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stop_SLOG()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist stop_request_credentials()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist verify_esesm_keyset()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    return v0
.end method
