.class public Lcom/samsung/android/speech/MMUIRecognizer;
.super Ljava/lang/Object;
.source "MMUIRecognizer.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist init()I
    .locals 4

    .line 21
    const-string v0, "WARNING: Could not load libsasr-jni.so"

    const/4 v1, 0x0

    .line 23
    .local v1, "nResult":I
    :try_start_0
    sget-object v2, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    const-string v3, "Trying to load libsasr-jni.so"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string/jumbo v3, "sasr-jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const-string v3, "Loading libsasr-jni.so done"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v1, -0x1

    goto :goto_1

    .line 26
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 27
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lcom/samsung/android/speech/MMUIRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v1, -0x1

    .line 32
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 33
    :goto_1
    return v1
.end method


# virtual methods
.method public native blacklist RECThread([S)I
.end method

.method public native blacklist ResetFx()I
.end method

.method public native blacklist SASRClose()I
.end method

.method public native blacklist SASRDoRecognition([F[Ljava/lang/String;Ljava/lang/String;[S[Ljava/lang/String;)I
.end method

.method public native blacklist SASRInit(Ljava/lang/String;)I
.end method

.method public native blacklist SASRLoadModel(Ljava/lang/String;)I
.end method

.method public native blacklist SASRReset()I
.end method

.method public native blacklist SaveChnUpdate(Ljava/lang/String;)I
.end method

.method public native blacklist SetSRLanguage(I)I
.end method
