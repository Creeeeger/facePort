.class public Lcom/samsung/voicebargein/BargeInEngine;
.super Ljava/lang/Object;
.source "BargeInEngine.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/voicebargein/BargeInEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist init()I
    .locals 4

    const-string v0, "WARNING: Could not load libVoiceCommandEngine.so"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    const-string v3, "Trying to load libVoiceCommandEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "VoiceCommandEngine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    const-string v3, "Loading libVoiceCommandEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/samsung/voicebargein/BargeInEngine;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    nop

    :goto_1
    return v1
.end method


# virtual methods
.method public blacklist asyncPrint(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public native blacklist phrasespotClose(J)V
.end method

.method public native blacklist phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native blacklist phrasespotPipe(J[SJJ[F)Ljava/lang/String;
.end method
