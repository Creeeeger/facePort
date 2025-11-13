.class public Lcom/samsung/voicebargein/BargeInEngine;
.super Ljava/lang/Object;
.source "BargeInEngine.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/samsung/voicebargein/BargeInEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist init()I
    .locals 4

    .line 23
    const-string v0, "WARNING: Could not load libVoiceCommandEngine.so"

    const/4 v1, 0x0

    .line 26
    .local v1, "nResult":I
    :try_start_0
    sget-object v2, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    const-string v3, "Trying to load libVoiceCommandEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v3, "VoiceCommandEngine"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    const-string v3, "Loading libVoiceCommandEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 37
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v1, -0x1

    goto :goto_1

    .line 30
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v1, -0x1

    .line 39
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 40
    :goto_1
    return v1
.end method


# virtual methods
.method public blacklist asyncPrint(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 19
    return-void
.end method

.method public native blacklist phrasespotClose(J)V
.end method

.method public native blacklist phrasespotInit(Ljava/lang/String;)J
.end method

.method public native blacklist phrasespotPipe(J[SJJ[F)Ljava/lang/String;
.end method
