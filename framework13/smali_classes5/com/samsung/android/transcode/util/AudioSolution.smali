.class public Lcom/samsung/android/transcode/util/AudioSolution;
.super Ljava/lang/Object;
.source "AudioSolution.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 23
    const-string v0, "AudioSolution"

    const-string/jumbo v1, "starting to loadLibrary v2"

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "snaace"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    const-string v0, "_SoundAlive_SRC384_ver320"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v0, "SoundAlive_VSP_ver316c_ARMCpp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    const-string v0, "audiosolution_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native blacklist NAACEncoderDeInit(J)Z
.end method

.method public native blacklist NAACEncoderExe(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method public native blacklist NAACEncoderInit(II)J
.end method

.method public native blacklist SRCCreate()J
.end method

.method public native blacklist SRCDestroy(J)V
.end method

.method public native blacklist SRCExe(J[B[BI)I
.end method

.method public native blacklist SRCExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method public native blacklist SRCInit(JIIIII)I
.end method

.method public native blacklist VSPCreate()J
.end method

.method public native blacklist VSPDestroy(J)V
.end method

.method public native blacklist VSPExe(J[B[BI)I
.end method

.method public native blacklist VSPExe2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method public native blacklist VSPExe_buffered(J[B[BI)I
.end method

.method public native blacklist VSPExe_buffered2(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)I
.end method

.method public native blacklist VSPInit(JII)V
.end method

.method public native blacklist VSPSetPar(JF)V
.end method
