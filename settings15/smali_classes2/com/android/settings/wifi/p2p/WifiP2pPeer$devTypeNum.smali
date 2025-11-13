.class public final enum Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "devTypeNum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v1, "pc"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v2, "keyboard"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v3, "printer"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v4, "camera"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v5, "storage"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v6, "network_infra"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v7, "tv"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v8, "soundbar"

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v9, "game_device"

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v10, "mobile"

    const/16 v12, 0xa

    invoke-direct {v9, v10, v11, v12}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-instance v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v11, "level_box"

    const/16 v13, 0xb

    invoke-direct {v10, v11, v12, v13}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    filled-new-array/range {v0 .. v10}, [Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->$VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    .locals 1

    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->$VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-object v0
.end method
