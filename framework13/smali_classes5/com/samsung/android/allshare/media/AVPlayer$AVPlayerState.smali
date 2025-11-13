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

.field public static final enum whitelist PAUSED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist PLAYING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 194
    new-instance v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    .line 199
    new-instance v1, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v3, "BUFFERING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    .line 204
    new-instance v3, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v5, "PLAYING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PLAYING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    .line 209
    new-instance v5, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PAUSED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    .line 220
    new-instance v7, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v9, "CONTENT_CHANGED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    .line 225
    new-instance v9, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    .line 189
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 231
    iput-object p3, p0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->enumString:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 241
    if-nez p0, :cond_0

    .line 242
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    .line 244
    :cond_0
    const-string v0, "BUFFERING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    .line 246
    :cond_1
    const-string v0, "CONTENT_CHANGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    .line 248
    :cond_2
    const-string v0, "PLAYING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 249
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PLAYING:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    .line 250
    :cond_3
    const-string v0, "PAUSED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->PAUSED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    .line 252
    :cond_4
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    .line 254
    :cond_5
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 255
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0

    .line 257
    :cond_6
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 189
    const-class v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 1

    .line 189
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->enumString:Ljava/lang/String;

    return-object v0
.end method
