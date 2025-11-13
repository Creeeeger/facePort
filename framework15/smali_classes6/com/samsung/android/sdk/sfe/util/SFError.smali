.class public Lcom/samsung/android/sdk/sfe/util/SFError;
.super Ljava/lang/Object;
.source "SFError.java"


# static fields
.field public static final blacklist E_ALREADY_INIT:I = 0x4

.field public static final blacklist E_ALREADY_SET:I = 0x5

.field public static final blacklist E_DATA_NOT_FOUND:I = 0x9

.field public static final blacklist E_INSTANCE_NOT_LOADED:I = 0x12

.field public static final blacklist E_INVALID_ARG:I = 0x7

.field public static final blacklist E_INVALID_STATE:I = 0x8

.field public static final blacklist E_OUT_OF_MEMORY:I = 0x2

.field public static final blacklist E_OUT_OF_RANGE:I = 0x3

.field public static final blacklist E_UNKNOWN:I = 0x1

.field public static final blacklist E_UNSUPPORTED_VERSION:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist Error_GetError()I
.end method

.method public static blacklist ThrowUncheckedException(I)V
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INSTANCE_NOT_LOADED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_UNSUPPORTED_VERSION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_DATA_NOT_FOUND"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_INVALID_STATE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "E_INVALID_ARG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_ALREADY_SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "E_ALREADY_INIT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "E_OUT_OF_RANGE"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "E_OUT_OF_MEMORY"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "E_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist getError()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->Error_GetError()I

    move-result v0

    return v0
.end method

.method private static blacklist isBuildTypeEngMode()Z
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
