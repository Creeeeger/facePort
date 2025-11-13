.class public Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;


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

.field private blacklist mServiceCompat:Lcom/samsung/android/bio/face/IFaceService;

.field private blacklist mServiceHAL:Landroid/hardware/face/IFaceService;

.field private blacklist mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

.field final synthetic blacklist this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/bio/face/SemBioFaceManager;
    .param p2, "ctx"    # Landroid/content/Context;

    .line 2635
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2637
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2638
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2639
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    .line 2640
    const-string v1, "face"

    .line 2641
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2640
    invoke-static {v1}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    .line 2642
    new-instance v1, Landroid/hardware/face/FaceManager;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    invoke-direct {v1, p2, v2}, Landroid/hardware/face/FaceManager;-><init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    .line 2643
    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->initHAL()V

    goto :goto_0

    .line 2645
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceCompat:Lcom/samsung/android/bio/face/IFaceService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2649
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    goto :goto_1

    .line 2647
    :catch_0
    move-exception v0

    .line 2648
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceManagerCompat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method static synthetic blacklist access$2702(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;Lcom/samsung/android/bio/face/IFaceService;)Lcom/samsung/android/bio/face/IFaceService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;
    .param p1, "x1"    # Lcom/samsung/android/bio/face/IFaceService;

    .line 2618
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceCompat:Lcom/samsung/android/bio/face/IFaceService;

    return-object p1
.end method

.method static synthetic blacklist access$500(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;

    .line 2618
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    return v0
.end method

.method private blacklist getSensorId()I
    .locals 1

    .line 2656
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist initHAL()V
    .locals 1

    .line 3114
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

    .line 3206
    return-void
.end method

.method static synthetic blacklist lambda$sendAuthError$2(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V
    .locals 1
    .param p0, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p1, "errCode"    # I

    .line 3107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 3108
    return-void
.end method

.method private blacklist sendAuthError(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p2, "errCode"    # I

    .line 3105
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3110
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

    .line 2694
    const-string v0, "SemBioFaceManager"

    const-string v1, "authenticate: No impl"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    return-void
.end method

.method public blacklist getLockoutModeForUser(II)I
    .locals 3
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 2718
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2720
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 2721
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2725
    :cond_0
    goto :goto_0

    .line 2723
    :catch_0
    move-exception v0

    .line 2724
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hResetTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getServiceCompat()Lcom/samsung/android/bio/face/IFaceService;
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$3000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceCompat:Lcom/samsung/android/bio/face/IFaceService;

    .line 2700
    return-object v0

    .line 2702
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hAuthenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 19
    .param p1, "crypto"    # Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "b"    # Landroid/os/Bundle;

    .line 2894
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    iget-boolean v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    const-string v5, "SemBioFaceManager"

    if-eqz v0, :cond_7

    .line 2895
    if-eqz v4, :cond_6

    .line 2898
    if-eqz v3, :cond_1

    .line 2899
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2900
    const-string v0, "authentication already canceled"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    return-void

    .line 2903
    :cond_0
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2906
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_5

    .line 2907
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-object/from16 v6, p5

    invoke-static {v0, v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$3300(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Handler;)V

    .line 2908
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2002(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 2909
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$202(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    .line 2910
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2402(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    .line 2911
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getOpId()J

    move-result-wide v8

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0x0

    :goto_0
    move-wide v12, v8

    .line 2912
    .local v12, "sessionId":J
    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v7

    :cond_3
    move-object/from16 v18, v7

    .line 2913
    .local v18, "fidoRequestData":[B
    if-nez p7, :cond_4

    .line 2914
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .end local p7    # "b":Landroid/os/Bundle;
    .local v0, "b":Landroid/os/Bundle;
    goto :goto_1

    .line 2913
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local p7    # "b":Landroid/os/Bundle;
    :cond_4
    move-object/from16 v7, p7

    .line 2916
    .end local p7    # "b":Landroid/os/Bundle;
    .local v7, "b":Landroid/os/Bundle;
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 2918
    :try_start_0
    const-string v0, "SemBioFaceManager#hAuthenticate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2919
    iget-object v10, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v11

    iget-object v15, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2920
    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    .line 2919
    move/from16 v14, p6

    move-object/from16 v17, v7

    invoke-interface/range {v10 .. v18}, Landroid/hardware/face/IFaceService;->semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2926
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2927
    goto :goto_3

    .line 2926
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 2922
    :catch_0
    move-exception v0

    .line 2923
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hAuthenticate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    const/4 v5, 0x5

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->sendAuthError(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 2928
    .end local v12    # "sessionId":J
    .end local v18    # "fidoRequestData":[B
    :goto_3
    goto :goto_6

    .line 2926
    .restart local v12    # "sessionId":J
    .restart local v18    # "fidoRequestData":[B
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2927
    throw v0

    .line 2906
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v12    # "sessionId":J
    .end local v18    # "fidoRequestData":[B
    .restart local p7    # "b":Landroid/os/Bundle;
    :cond_5
    move-object/from16 v6, p5

    goto :goto_5

    .line 2896
    :cond_6
    move-object/from16 v6, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must supply an authentication callback"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2930
    :cond_7
    move-object/from16 v6, p5

    const-string v0, "hAuthenticate: Not support Face HAL"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->sendAuthError(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;I)V

    .line 2933
    :goto_5
    move-object/from16 v7, p7

    .end local p7    # "b":Landroid/os/Bundle;
    .restart local v7    # "b":Landroid/os/Bundle;
    :goto_6
    return-void
.end method

.method public blacklist hEnroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 19
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flag"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .param p6, "b"    # Landroid/os/Bundle;
    .param p7, "faceView"    # Landroid/view/View;

    .line 2824
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    if-eqz v3, :cond_7

    .line 2828
    const-string v5, "SemBioFaceManager"

    if-eqz v2, :cond_1

    .line 2829
    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2830
    const-string v0, "enrollment already canceled"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    return-void

    .line 2833
    :cond_0
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V

    invoke-virtual {v2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 2836
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_6

    .line 2838
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2002(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    .line 2839
    if-nez p6, :cond_2

    .line 2840
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v15, v0

    .end local p6    # "b":Landroid/os/Bundle;
    .local v0, "b":Landroid/os/Bundle;
    goto :goto_0

    .line 2839
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local p6    # "b":Landroid/os/Bundle;
    :cond_2
    move-object/from16 v15, p6

    .line 2842
    .end local p6    # "b":Landroid/os/Bundle;
    .local v15, "b":Landroid/os/Bundle;
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setExtraInfo(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 2854
    const-string v0, "SemBioFaceManager#hEnroll"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2858
    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v10

    iget-object v12, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 2859
    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    new-array v14, v7, [I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2860
    if-eqz v4, :cond_4

    :try_start_2
    instance-of v0, v4, Landroid/view/SurfaceView;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v4

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2869
    :catchall_0
    move-exception v0

    move-object/from16 v18, v15

    goto :goto_5

    .line 2863
    :catch_0
    move-exception v0

    move-object/from16 v18, v15

    goto :goto_3

    .line 2860
    :cond_4
    :goto_1
    move-object v0, v6

    :goto_2
    const/16 v16, 0x0

    .line 2858
    move/from16 v9, p4

    move-object/from16 v11, p1

    move-object/from16 v18, v15

    .end local v15    # "b":Landroid/os/Bundle;
    .local v18, "b":Landroid/os/Bundle;
    move-object v15, v0

    move-object/from16 v17, v18

    :try_start_3
    invoke-interface/range {v8 .. v17}, Landroid/hardware/face/IFaceService;->semEnroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    .line 2863
    :catch_1
    move-exception v0

    goto :goto_3

    .line 2869
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local v15    # "b":Landroid/os/Bundle;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v15

    .end local v15    # "b":Landroid/os/Bundle;
    .restart local v18    # "b":Landroid/os/Bundle;
    goto :goto_5

    .line 2863
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local v15    # "b":Landroid/os/Bundle;
    :catch_2
    move-exception v0

    move-object/from16 v18, v15

    .end local v15    # "b":Landroid/os/Bundle;
    .restart local v18    # "b":Landroid/os/Bundle;
    goto :goto_3

    .line 2869
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local p6    # "b":Landroid/os/Bundle;
    :catchall_2
    move-exception v0

    move-object/from16 v18, p6

    goto :goto_5

    .line 2863
    :catch_3
    move-exception v0

    move-object/from16 v18, p6

    .line 2864
    .end local p6    # "b":Landroid/os/Bundle;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "b":Landroid/os/Bundle;
    :goto_3
    :try_start_4
    const-string v8, "Remote exception in enroll: "

    invoke-static {v5, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2865
    iget-object v5, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2866
    iget-object v5, v1, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v8, 0x68

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2869
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2870
    goto :goto_6

    .line 2869
    :catchall_3
    move-exception v0

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 2870
    throw v0

    .line 2836
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local p6    # "b":Landroid/os/Bundle;
    :cond_6
    move-object/from16 v18, p6

    .line 2872
    .end local p6    # "b":Landroid/os/Bundle;
    .restart local v18    # "b":Landroid/os/Bundle;
    :goto_6
    return-void

    .line 2825
    .end local v18    # "b":Landroid/os/Bundle;
    .restart local p6    # "b":Landroid/os/Bundle;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must supply an enrollment callback"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hGetAuthenticatorId()J
    .locals 5

    .line 2731
    const-wide/16 v0, 0x0

    .line 2732
    .local v0, "id":J
    iget-boolean v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v2, :cond_0

    .line 2734
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->getSensorId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$3100(Lcom/samsung/android/bio/face/SemBioFaceManager;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/hardware/face/IFaceService;->getAuthenticatorId(II)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 2737
    goto :goto_0

    .line 2735
    :catch_0
    move-exception v2

    .line 2736
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hGetAuthenticatorIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemBioFaceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-wide v0
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

    .line 2775
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2776
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    .line 2777
    .local v0, "faceList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2778
    .local v1, "retFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    if-eqz v0, :cond_0

    .line 2779
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/Face;

    .line 2780
    .local v3, "face":Landroid/hardware/face/Face;
    new-instance v4, Lcom/samsung/android/bio/face/SemBioFace;

    invoke-direct {v4, v3}, Lcom/samsung/android/bio/face/SemBioFace;-><init>(Landroid/hardware/face/Face;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2781
    .end local v3    # "face":Landroid/hardware/face/Face;
    goto :goto_0

    .line 2783
    :cond_0
    return-object v1

    .line 2785
    .end local v0    # "faceList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    .end local v1    # "retFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hGetRemainingLockoutTime(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 3091
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 3093
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 3094
    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->semGetRemainingLockoutTime(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3098
    :cond_0
    goto :goto_0

    .line 3096
    :catch_0
    move-exception v0

    .line 3097
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hGetRemainingLockoutTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hGetSecurityLevel(Z)I
    .locals 3
    .param p1, "isKeyguard"    # Z

    .line 3078
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 3080
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 3081
    invoke-interface {v0, p1}, Landroid/hardware/face/IFaceService;->semGetSecurityLevel(Z)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3085
    :cond_0
    goto :goto_0

    .line 3083
    :catch_0
    move-exception v0

    .line 3084
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hGetSecurityLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hGetTrustAppVersion()Ljava/lang/String;
    .locals 3

    .line 3047
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 3049
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 3050
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semGetTrustAppVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3054
    :cond_0
    goto :goto_0

    .line 3052
    :catch_0
    move-exception v0

    .line 3053
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hGetTrustAppVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hIsEnrollSession()Z
    .locals 3

    .line 2936
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2938
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 2939
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semIsEnrollSession()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2943
    :cond_0
    goto :goto_0

    .line 2941
    :catch_0
    move-exception v0

    .line 2942
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hIsEnrollSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hIsSessionClosed()Z
    .locals 3

    .line 3034
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 3036
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 3037
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semIsSessionClose()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3041
    :cond_0
    goto :goto_0

    .line 3039
    :catch_0
    move-exception v0

    .line 3040
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hIsSessionClosed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hPostEnroll()I
    .locals 1

    .line 2802
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->revokeChallenge()V

    .line 2805
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hPreEnroll()V
    .locals 3

    .line 2789
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->getSensorId()I

    move-result v1

    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 2799
    :cond_0
    return-void
.end method

.method public blacklist hRemove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 7
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 2757
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2759
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, p3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1702(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    .line 2760
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$1802(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFace;)Lcom/samsung/android/bio/face/SemBioFace;

    .line 2761
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$3202(Lcom/samsung/android/bio/face/SemBioFaceManager;I)I

    .line 2762
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFace;->getFaceId()I

    move-result v0

    if-nez v0, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Landroid/hardware/face/IFaceService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    goto :goto_0

    .line 2765
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFace;->getFaceId()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2770
    :goto_0
    goto :goto_1

    .line 2767
    :catch_0
    move-exception v0

    .line 2768
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2772
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist hRename(IILjava/lang/String;)V
    .locals 0
    .param p1, "faceId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .line 2754
    return-void
.end method

.method public blacklist hRequestAuthPause()V
    .locals 3

    .line 3010
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 3012
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 3013
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semPauseAuth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3017
    :cond_0
    goto :goto_0

    .line 3015
    :catch_0
    move-exception v0

    .line 3016
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hRequestAuthPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist hRequestAuthResume()V
    .locals 3

    .line 3022
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 3024
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 3025
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semResumeAuth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3029
    :cond_0
    goto :goto_0

    .line 3027
    :catch_0
    move-exception v0

    .line 3028
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hRequestAuthResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist hRequestEnrollPause()V
    .locals 3

    .line 2986
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2988
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 2989
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semPauseEnroll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2993
    :cond_0
    goto :goto_0

    .line 2991
    :catch_0
    move-exception v0

    .line 2992
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hRequestEnrollPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist hRequestEnrollResume()V
    .locals 3

    .line 2998
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 3000
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 3001
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semResumeEnroll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3005
    :cond_0
    goto :goto_0

    .line 3003
    :catch_0
    move-exception v0

    .line 3004
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hRequestEnrollResume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist hRequestSessionClose()V
    .locals 3

    .line 2961
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2963
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 2964
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semSessionClose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2968
    :cond_0
    goto :goto_0

    .line 2966
    :catch_0
    move-exception v0

    .line 2967
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hRequestSessionClose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist hRequestSessionOpen()V
    .locals 3

    .line 2949
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2951
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 2952
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semSessionOpen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2956
    :cond_0
    goto :goto_0

    .line 2954
    :catch_0
    move-exception v0

    .line 2955
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hRequestSessionOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist hResetAuthenticationTimeout()Z
    .locals 3

    .line 2973
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2975
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 2976
    invoke-interface {v0}, Landroid/hardware/face/IFaceService;->semResetAuthenticationTimeout()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2980
    :cond_0
    goto :goto_0

    .line 2978
    :catch_0
    move-exception v0

    .line 2979
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hResetAuthenticationTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hResetTimeout([B)V
    .locals 7
    .param p1, "token"    # [B

    .line 2706
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_1

    .line 2708
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_0

    .line 2709
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->getSensorId()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$3100(Lcom/samsung/android/bio/face/SemBioFaceManager;)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2713
    :cond_0
    goto :goto_0

    .line 2711
    :catch_0
    move-exception v0

    .line 2712
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hResetTimeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist hUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;Ljava/lang/String;)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "receiver"    # Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 3061
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_2

    .line 3062
    if-eqz p4, :cond_1

    .line 3066
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 3067
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0, p4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$3402(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;)Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    .line 3068
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceReceiverHAL:Landroid/hardware/face/IFaceServiceReceiver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/hardware/face/IFaceService;->semUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3069
    return-void

    .line 3073
    :cond_0
    goto :goto_0

    .line 3071
    :catch_0
    move-exception v0

    .line 3072
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hUpdateTrustApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemBioFaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3063
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an UpdateTrustApp callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3075
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist halCancelAuthentication()V
    .locals 3

    .line 2875
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 2876
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 2878
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2881
    goto :goto_0

    .line 2879
    :catch_0
    move-exception v0

    .line 2880
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemBioFaceManager"

    const-string v2, "halCancelAuthentication: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2884
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist halCancelEnrollment()V
    .locals 3

    .line 2809
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 2810
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mServiceHAL:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 2812
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2815
    goto :goto_0

    .line 2813
    :catch_0
    move-exception v0

    .line 2814
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemBioFaceManager"

    const-string v2, "halCancelEnrollment: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2818
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist hasEnrolledTemplates()Z
    .locals 1

    .line 2667
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates()Z

    move-result v0

    return v0

    .line 2670
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2674
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 2675
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0

    .line 2677
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isHardwareDetected()Z
    .locals 1

    .line 2660
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 2661
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mFaceManagerHAL:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    return v0

    .line 2663
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method public synthetic blacklist lambda$hAuthenticate$1$SemBioFaceManager$FaceManagerCompat()V
    .locals 0

    .line 2903
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->halCancelAuthentication()V

    return-void
.end method

.method public synthetic blacklist lambda$hEnroll$0$SemBioFaceManager$FaceManagerCompat()V
    .locals 0

    .line 2833
    invoke-virtual {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->halCancelEnrollment()V

    return-void
.end method

.method public blacklist setActiveUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2682
    iget-boolean v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->mHasFaceHAL:Z

    if-eqz v0, :cond_0

    .line 2685
    return-void

    .line 2687
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$FaceManagerCompat;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->setActiveUser(I)V

    .line 2688
    return-void
.end method
