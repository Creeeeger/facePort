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
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 225
    new-instance v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v3, "FINISHED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->FINISHED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v3, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v5, "BUFFERING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->BUFFERING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v5, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v7, "PLAYING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PLAYING:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v7, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v9, "PAUSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->PAUSE:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    new-instance v9, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 224
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 224
    const-class v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 1

    .line 224
    sget-object v0, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->$VALUES:[Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method
