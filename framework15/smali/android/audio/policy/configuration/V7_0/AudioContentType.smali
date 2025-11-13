.class public final enum Landroid/audio/policy/configuration/V7_0/AudioContentType;
.super Ljava/lang/Enum;
.source "AudioContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum blacklist AUDIO_CONTENT_TYPE_MOVIE:Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum blacklist AUDIO_CONTENT_TYPE_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum blacklist AUDIO_CONTENT_TYPE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum blacklist AUDIO_CONTENT_TYPE_SPEECH:Landroid/audio/policy/configuration/V7_0/AudioContentType;

.field public static final enum blacklist AUDIO_CONTENT_TYPE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioContentType;


# instance fields
.field private final blacklist rawName:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/audio/policy/configuration/V7_0/AudioContentType;
    .locals 5

    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    sget-object v1, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_SPEECH:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    sget-object v2, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    sget-object v3, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_MOVIE:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    sget-object v4, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/audio/policy/configuration/V7_0/AudioContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v1, "AUDIO_CONTENT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_UNKNOWN:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v1, "AUDIO_CONTENT_TYPE_SPEECH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_SPEECH:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v1, "AUDIO_CONTENT_TYPE_MUSIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v1, "AUDIO_CONTENT_TYPE_MOVIE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_MOVIE:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    const-string v1, "AUDIO_CONTENT_TYPE_SONIFICATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->AUDIO_CONTENT_TYPE_SONIFICATION:Landroid/audio/policy/configuration/V7_0/AudioContentType;

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioContentType;->$values()[Landroid/audio/policy/configuration/V7_0/AudioContentType;

    move-result-object v0

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioContentType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->rawName:Ljava/lang/String;

    return-void
.end method

.method static blacklist fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioContentType;
    .locals 5

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioContentType;->values()[Landroid/audio/policy/configuration/V7_0/AudioContentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioContentType;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioContentType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/audio/policy/configuration/V7_0/AudioContentType;
    .locals 1

    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioContentType;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioContentType;

    return-object v0
.end method


# virtual methods
.method public blacklist getRawName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioContentType;->rawName:Ljava/lang/String;

    return-object v0
.end method
