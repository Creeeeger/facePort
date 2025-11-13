.class final enum Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;
.super Ljava/lang/Enum;
.source "EncodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/core/EncodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ASYNC_CODEC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

.field public static final enum blacklist VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

.field public static final enum blacklist VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;
    .locals 2

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    sget-object v1, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    filled-new-array {v0, v1}, [Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    const-string v1, "VIDEO_DECODER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_DECODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    new-instance v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    const-string v1, "VIDEO_ENCODER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->VIDEO_ENCODER:Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-static {}, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->$values()[Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->$VALUES:[Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;
    .locals 1

    const-class v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;
    .locals 1

    sget-object v0, Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->$VALUES:[Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/transcode/core/EncodeBase$ASYNC_CODEC_TYPE;

    return-object v0
.end method
