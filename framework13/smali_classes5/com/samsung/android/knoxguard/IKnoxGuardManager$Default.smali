.class public Lcom/samsung/android/knoxguard/IKnoxGuardManager$Default;
.super Ljava/lang/Object;
.source "IKnoxGuardManager.java"

# interfaces
.implements Lcom/samsung/android/knoxguard/IKnoxGuardManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knoxguard/IKnoxGuardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPackagesToClearCacheBlockList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addPackagesToForceStopBlockList(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    .local p1, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist allowFirmwareRecovery(Z)Z
    .locals 1
    .param p1, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist allowOTAUpgrade(Z)Z
    .locals 1
    .param p1, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist allowSafeMode(Z)Z
    .locals 1
    .param p1, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist bindToLockScreen()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist callKGsv()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist generateHotpDHRequest()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getClientData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHDMVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHdmStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHotpChallenge()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKGID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKGPolicy()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getKGServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLockAction()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNonce(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "serverMsg"    # Ljava/lang/String;
    .param p2, "serverToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPBAUniqueNumber()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTAError()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTAInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "infoFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTAState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTAStateSetError(Z)I
    .locals 1
    .param p1, "setError"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSkipSupportContainerSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVpnExceptionRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist lockScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)I
    .locals 1
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Ljava/lang/String;
    .param p4, "emailAddress"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "skipPin"    # Z
    .param p7, "skipSupport"    # Z
    .param p8, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "enrollCert"    # Ljava/lang/String;
    .param p2, "hotpCert"    # Ljava/lang/String;
    .param p3, "policyCert"    # Ljava/lang/String;
    .param p4, "blCert"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerIntent(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "preFix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    .local p2, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist resetRPMB()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetRPMB2(Ljava/lang/String;)I
    .locals 1
    .param p1, "optional"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userhandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist setActiveAdmin(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist setAdminRemovable(Z)Z
    .locals 1
    .param p1, "removable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAirplaneMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist setApplicationUninstallationDisabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCheckingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setClientData(Ljava/lang/String;)I
    .locals 1
    .param p1, "clientData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setKnoxGuardExemptRule(Z)V
    .locals 0
    .param p1, "add"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist setRemoteLockToLockscreen(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "emergencycallbutton"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "failcount"    # I
    .param p9, "timeout"    # J
    .param p11, "blockcount"    # I
    .param p12, "skippin"    # Z
    .param p13, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist setRemoteLockToLockscreenWithSkipSupport(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IJIZLandroid/os/Bundle;Z)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "state"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;
    .param p6, "emergencycallbutton"    # Z
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "failcount"    # I
    .param p9, "timeout"    # J
    .param p11, "blockcount"    # I
    .param p12, "skippin"    # Z
    .param p13, "bundle"    # Landroid/os/Bundle;
    .param p14, "skipSupportContainer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist setRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userhandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist shouldBlockCustomRom()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showInstallmentStatus()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unRegisterIntent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist unlockScreen()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist verifyCompleteToken(Ljava/lang/String;)I
    .locals 1
    .param p1, "serverResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist verifyHOTPDHChallenge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "hub"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "challenge"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist verifyHOTPPin(Ljava/lang/String;)I
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist verifyHOTPsecret(Ljava/lang/String;)I
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist verifyKgRot()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist verifyPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist verifyRegistrationInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "regInfo"    # Ljava/lang/String;
    .param p2, "regInfoSig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method
