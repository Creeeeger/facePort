.class public final Lcom/android/keyguard/KeyguardCarrierViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBroadcastReceiver:Lcom/android/keyguard/KeyguardCarrierViewController$3;

.field public final mContext:Landroid/content/Context;

.field public final mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardCarrierViewController$4;

.field public final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field public mIsShowingOwnerCallButton:Z

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mOwnerCallButton:Landroid/widget/Button;

.field public final mOwnerInfo:Landroid/widget/TextView;

.field public mOwnerMessage:Ljava/lang/String;

.field public mPhoneState:I

.field public final mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUnlockButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    const/4 v0, 0x0

    iput v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    iput-boolean v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$1;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$2;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierViewController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCarrierViewController$4;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardCarrierViewController$4;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mContext:Landroid/content/Context;

    move-object v0, p3

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v0, p6

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v0, p5

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v0, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierView;

    const v1, 0x7f0a0260

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v0, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierView;

    const v1, 0x7f0a025f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    iget-object v0, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierView;

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v8, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    return-void
.end method

.method public static decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "KeyguardCarrierView"

    :try_start_0
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardCarrierViewController;->getKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string v4, "i_love_office_tg"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_4

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sec_encrypt.decrypt() Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v2, 0x0

    :goto_6
    return-object v2
.end method

.method public static getKey()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "SKT : Find lost phone plus !!!"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final getInitialMessageResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardCarrierView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardCarrierView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonCallback:Lcom/android/keyguard/KeyguardCarrierViewController$4;

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.CarrierLock.DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/keyguard/KeyguardCarrierViewController$3;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardCarrierViewController$3;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardCarrierViewController$3;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardCarrierViewController$3;

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierViewController;->setCarrierLockPlusInfo()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mUnlockButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneStateListener:Lcom/android/keyguard/KeyguardCarrierViewController$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardCarrierViewController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public final setCarrierLockPlusInfo()V
    .locals 11

    const-string v0, "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

    const-string v1, ":"

    const-string v2, "KeyguardCarrierView"

    iget-object v3, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v4, 0x0

    const/16 v5, 0x100

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/io/File;

    const-string v8, "/efs/sec_efs/sktdm_mem/encwlawp.txt"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardCarrierViewController;->decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_3

    :cond_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/efs/sec_efs/sktdm_mem/wlawp.txt"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    new-array v8, v8, [B

    move v9, v4

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const-string v7, "getCarrierLockPlusPassword(), password is null"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v8, v6

    goto :goto_4

    :goto_3
    const-string v8, "getCarrierLockPlusPassword(), IOException!!"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    :goto_4
    iget-object v7, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v7, v4}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v7

    const/4 v9, 0x1

    invoke-virtual {v3, v9, v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(I[BI)V

    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierViewController;->decryptCarrierLockPlusMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_6

    :cond_4
    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v9

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardCarrierViewController;->setVisibleOwnerCallButton(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v3, 0x3

    if-eqz v1, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerMessage:Ljava/lang/String;

    goto :goto_7

    :cond_6
    const-string/jumbo p0, "updateCarrierLockPlusMessage(), message is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_6
    const-string/jumbo v0, "updateCarrierLockPlusMessage(), IOException"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public final setVisibleOwnerCallButton(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    const-string v0, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSimStateReadyOrLoaded() : simSlotCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", simStates = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardCarrierView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v4, v2

    :goto_0
    if-ge v4, p1, :cond_4

    array-length v5, v0

    if-gt v5, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, v0, v4

    const-string v6, "READY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "LOADED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    move v7, v2

    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "setVisibleOwnerCallButton state = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", CallButton ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    const-string v5, ", isSimStateReadyOrLoaded ="

    invoke-static {v0, v4, v5, v7, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-nez p1, :cond_7

    if-eqz v7, :cond_7

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mIsShowingOwnerCallButton:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mPhoneState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController;->mOwnerCallButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method
