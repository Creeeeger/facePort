.class public Landroid/os/VintfObject;
.super Ljava/lang/Object;
.source "VintfObject.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "VintfObject"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "vintf_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist getHalNamesAndVersions()[Ljava/lang/String;
.end method

.method public static native blacklist getPlatformSepolicyVersion()Ljava/lang/String;
.end method

.method public static native blacklist getSepolicyVersion()Ljava/lang/String;
.end method

.method public static native blacklist getTargetFrameworkCompatibilityMatrixVersion()Ljava/lang/Long;
.end method

.method public static native blacklist getVndkSnapshots()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native blacklist report()[Ljava/lang/String;
.end method

.method private static blacklist runShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/UiAutomation;->executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->readAllBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    return-object v5

    :catchall_0
    move-exception v5

    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v5
.end method

.method public static native blacklist verifyBuildAtBoot()I
.end method
