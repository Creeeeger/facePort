.class public Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricFaceConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceManagerCompat"
.end annotation


# instance fields
.field private blacklist mFaceManagerHAL:Landroid/hardware/face/FaceManager;

.field private blacklist mHasFaceHAL:Z

.field private blacklist mServiceHAL:Landroid/hardware/face/IFaceService;

.field private blacklist mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasFaceHAL(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    return p0
.end method

.method constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 1606
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1609
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1610
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    .line 1611
    const-string v1, "face"

    .line 1612
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1611
    invoke-static {v1}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    .line 1613
    new-instance v1, Landroid/hardware/face/FaceManager;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    invoke-direct {v1, p2, v2}, Landroid/hardware/face/FaceManager;-><init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    .line 1614
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->initHAL()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    goto :goto_0

    .line 1616
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceManagerCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist initHAL()V
    .locals 1

    .line 1741
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

    .line 1825
    return-void
.end method

.method static synthetic blacklist lambda$sendAuthError$1(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V
    .locals 1
    .param p0, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p1, "errCode"    # I

    .line 1734
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 1735
    return-void
.end method

.method private blacklist sendAuthError(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p2, "errCode"    # I

    .line 1732
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1737
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 2
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    .line 1637
    const-string v0, "SemBioFaceManager"

    const-string v1, "authenticate: No impl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    return-void
.end method

.method public blacklist hAuthenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 18
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "b"    # Landroid/os/Bundle;

    .line 1674
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    iget-boolean v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    const-string v5, "SemBioFaceManager"

    if-eqz v0, :cond_7

    .line 1675
    if-eqz v4, :cond_6

    .line 1678
    if-eqz v3, :cond_1

    .line 1679
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    const-string v0, "authentication already canceled"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return-void

    .line 1683
    :cond_0
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1686
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_5

    .line 1687
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v6, p5

    invoke-static {v0, v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$museHandler(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Handler;)V

    .line 1688
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fputmAuthenticationCallback(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    .line 1689
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fputmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)V

    .line 1690
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmCryptoObject(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getOpId()J

    move-result-wide v7

    goto :goto_0

    :cond_2
    const-wide/16 v7, 0x0

    :goto_0
    move-wide v11, v7

    .line 1691
    .local v11, "sessionId":J
    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object/from16 v17, v0

    .line 1692
    .local v17, "fidoRequestData":[B
    if-nez p7, :cond_4

    .line 1693
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .end local p7    # "b":Landroid/os/Bundle;
    .local v0, "b":Landroid/os/Bundle;
    goto :goto_2

    .line 1692
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local p7    # "b":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v7, p7

    .line 1695
    .end local p7    # "b":Landroid/os/Bundle;
    .local v7, "b":Landroid/os/Bundle;
    :goto_2
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1697
    :try_start_0
    const-string v0, "SemBioFaceManager#hAuthenticate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1698
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v9, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmToken(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v10

    iget-object v14, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v8

    .line 1699
    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1698
    move/from16 v13, p6

    move-object/from16 v16, v7

    invoke-interface/range {v9 .. v17}, Landroid/hardware/face/IFaceService;->semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fputmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1705
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hAuthenticate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/4 v5, 0x5

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->sendAuthError(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1705
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1706
    nop

    .line 1707
    .end local v11    # "sessionId":J
    .end local v17    # "fidoRequestData":[B
    goto :goto_6

    .line 1705
    .restart local v11    # "sessionId":J
    .restart local v17    # "fidoRequestData":[B
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1706
    throw v0

    .line 1686
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v11    # "sessionId":J
    .end local v17    # "fidoRequestData":[B
    .restart local p7    # "b":Landroid/os/Bundle;
    :cond_5
    move-object/from16 v6, p5

    goto :goto_5

    .line 1676
    :cond_6
    move-object/from16 v6, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must supply an authentication callback"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1709
    :cond_7
    move-object/from16 v6, p5

    const-string v0, "hAuthenticate: Not support Face HAL"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->sendAuthError(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V

    .line 1712
    :goto_5
    move-object/from16 v7, p7

    .end local p7    # "b":Landroid/os/Bundle;
    .restart local v7    # "b":Landroid/os/Bundle;
    :goto_6
    return-void
.end method

.method public blacklist hGetEnrolledFaces(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .line 1641
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 1642
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    .line 1643
    .local v0, "faceList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1644
    .local v1, "retFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    if-eqz v0, :cond_0

    .line 1645
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/Face;

    .line 1646
    .local v3, "face":Landroid/hardware/face/Face;
    new-instance v4, Lcom/samsung/android/bio/face/SemBioFace;

    invoke-direct {v4, v3}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Landroid/hardware/face/Face;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1647
    .end local v3    # "face":Landroid/hardware/face/Face;
    goto :goto_0

    .line 1649
    :cond_0
    return-object v1

    .line 1651
    .end local v0    # "faceList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    .end local v1    # "retFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hGetSecurityLevel(Z)I
    .locals 3
    .param p1, "isKeyguard"    # Z

    .line 1717
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 1719
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1720
    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->semGetSecurityLevel(Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1724
    :cond_0
    goto :goto_0

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hGetSecurityLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist halCancelAuthentication()V
    .locals 5

    .line 1655
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 1658
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmToken(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-$$Nest$fgetmAuthRequestId(Lcom/samsung/android/bio/face/SemBioFaceManager;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    goto :goto_0

    .line 1659
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemBioFaceManager"

    const-string v2, "halCancelAuthentication: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1664
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist hasEnrolledTemplates()Z
    .locals 1

    .line 1626
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates()Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1630
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isHardwareDetected()Z
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$hAuthenticate$0$com-samsung-android-bio-face-SemBioFaceManager$FaceManagerCompat()V
    .locals 0

    .line 1683
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->halCancelAuthentication()V

    return-void
.end method
