.class public final enum Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
.super Ljava/lang/Enum;
.source "AVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/AVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist BUFFERING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist CONTENT_CHANGED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist FINISHED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist PAUSED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist PLAYING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 7

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v1, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v2, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PLAYING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v3, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PAUSED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v4, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->FINISHED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v5, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v6, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "PLAYING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PLAYING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "PAUSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PAUSED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "FINISHED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->FINISHED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "CONTENT_CHANGED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-static {}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->$values()[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

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

    iput-object p3, p0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->enumString:Ljava/lang/String;

    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    :cond_0
    const-string v0, "BUFFERING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    :cond_1
    const-string v0, "CONTENT_CHANGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    :cond_2
    const-string v0, "PLAYING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PLAYING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    :cond_3
    const-string v0, "PAUSED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PAUSED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    :cond_4
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    :cond_5
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    :cond_6
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->enumString:Ljava/lang/String;

    return-object v0
.end method
