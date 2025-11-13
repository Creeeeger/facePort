.class final enum Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
.super Ljava/lang/Enum;
.source "SECAVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SECAVPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum blacklist BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum blacklist FINISHED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum blacklist PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum blacklist PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum blacklist STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field public static final enum blacklist UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 6

    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->FINISHED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v2, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v3, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v4, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    sget-object v5, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "FINISHED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->FINISHED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "PLAYING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "PAUSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$values()[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method
