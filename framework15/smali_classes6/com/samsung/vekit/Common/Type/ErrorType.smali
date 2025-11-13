.class public final enum Lcom/samsung/vekit/Common/Type/ErrorType;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist AUDIO_RENDER_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist AUDIO_SEEK_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist PLAYER_PAUSE_EXPORT_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist PLAYER_PAUSE_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist PLAYER_RESUME_EXPORT_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist PLAYER_START_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist STOPPED_ON_CODEC_RECLAIMED:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist STOPPED_ON_ERROR:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist VIDEO_ENCODE_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

.field public static final enum blacklist VIDEO_SEEK_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/ErrorType;
    .locals 10

    sget-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->PLAYER_START_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ErrorType;->PLAYER_PAUSE_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ErrorType;->STOPPED_ON_CODEC_RECLAIMED:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v3, Lcom/samsung/vekit/Common/Type/ErrorType;->STOPPED_ON_ERROR:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v4, Lcom/samsung/vekit/Common/Type/ErrorType;->PLAYER_PAUSE_EXPORT_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v5, Lcom/samsung/vekit/Common/Type/ErrorType;->PLAYER_RESUME_EXPORT_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v6, Lcom/samsung/vekit/Common/Type/ErrorType;->VIDEO_ENCODE_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v7, Lcom/samsung/vekit/Common/Type/ErrorType;->AUDIO_RENDER_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v8, Lcom/samsung/vekit/Common/Type/ErrorType;->VIDEO_SEEK_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

    sget-object v9, Lcom/samsung/vekit/Common/Type/ErrorType;->AUDIO_SEEK_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

    filled-new-array/range {v0 .. v9}, [Lcom/samsung/vekit/Common/Type/ErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "PLAYER_START_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->PLAYER_START_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "PLAYER_PAUSE_FAILED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->PLAYER_PAUSE_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "STOPPED_ON_CODEC_RECLAIMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->STOPPED_ON_CODEC_RECLAIMED:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "STOPPED_ON_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->STOPPED_ON_ERROR:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "PLAYER_PAUSE_EXPORT_FAILED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->PLAYER_PAUSE_EXPORT_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "PLAYER_RESUME_EXPORT_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->PLAYER_RESUME_EXPORT_FAILED:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "VIDEO_ENCODE_FAIL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->VIDEO_ENCODE_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "AUDIO_RENDER_FAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->AUDIO_RENDER_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "VIDEO_SEEK_FAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->VIDEO_SEEK_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    const-string v1, "AUDIO_SEEK_FAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->AUDIO_SEEK_FAIL:Lcom/samsung/vekit/Common/Type/ErrorType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ErrorType;->$values()[Lcom/samsung/vekit/Common/Type/ErrorType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ErrorType;

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

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/ErrorType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Common/Type/ErrorType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/ErrorType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/ErrorType;->$VALUES:[Lcom/samsung/vekit/Common/Type/ErrorType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/ErrorType;

    return-object v0
.end method
