.class public final enum Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
.super Ljava/lang/Enum;
.source "WifiP2pPeer.java"


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
.field private static final synthetic $VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum camera:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum game_device:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum keyboard:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum network_infra:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum printer:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum soundbar:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum storage:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

.field public static final enum tv:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 137
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v1, "pc"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->pc:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 138
    new-instance v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v4, "keyboard"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->keyboard:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 139
    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v6, "printer"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->printer:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 140
    new-instance v6, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v8, "camera"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->camera:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 141
    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v10, "storage"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->storage:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 142
    new-instance v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v12, "network_infra"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->network_infra:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 143
    new-instance v12, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v14, "tv"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->tv:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 144
    new-instance v14, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v13, "soundbar"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->soundbar:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 145
    new-instance v13, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v15, "game_device"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->game_device:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 146
    new-instance v15, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string/jumbo v11, "mobile"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mobile:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    .line 147
    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    const-string v9, "level_box"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->level_box:Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    new-array v5, v5, [Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v14, v5, v0

    const/16 v0, 0x8

    aput-object v13, v5, v0

    const/16 v0, 0x9

    aput-object v15, v5, v0

    aput-object v11, v5, v7

    .line 136
    sput-object v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->$VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    .locals 1

    .line 136
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;
    .locals 1

    .line 136
    sget-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->$VALUES:[Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer$devTypeNum;->mValue:I

    return p0
.end method
