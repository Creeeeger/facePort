.class public Lcom/samsung/android/media/portrait/semportraiteditor/controllerinterface/PortraitController;
.super Ljava/lang/Object;
.source "PortraitController.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "portrait_controller_interface_jni.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v0, "portrait_controller_engine.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_1
    nop

    :goto_2
    :try_start_2
    const-string v0, "mpbase"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_3
    const-string v0, "arcsoft_photoeditor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_4
    nop

    :goto_5
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist addPortraitPreprocess()I
.end method

.method public static native blacklist create(I)I
.end method

.method public static native blacklist deInitialize()I
.end method

.method public static native blacklist destroy()I
.end method

.method public static native blacklist getParam(ILcom/samsung/android/media/portrait/semportraiteditor/controllerinterface/PortraitData;)I
.end method

.method public static native blacklist getVersion()Ljava/lang/String;
.end method

.method public static native blacklist initialize()I
.end method

.method public static native blacklist process(I)I
.end method

.method public static native blacklist setParam(ILcom/samsung/android/media/portrait/semportraiteditor/controllerinterface/PortraitData;)I
.end method
