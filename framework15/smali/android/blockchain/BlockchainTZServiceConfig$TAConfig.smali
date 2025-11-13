.class public Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;
.super Ljava/lang/Object;
.source "BlockchainTZServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/blockchain/BlockchainTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TAConfig"
.end annotation


# instance fields
.field public blacklist maxRecvRespSize:I

.field public blacklist maxSendCmdSize:I

.field public blacklist processName:Ljava/lang/String;

.field public blacklist rootName:Ljava/lang/String;

.field public blacklist taTechnology:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    invoke-static {}, Landroid/blockchain/BlockchainTZServiceConfig;->-$$Nest$sfgetbQC()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    iput-object v1, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    invoke-static {}, Landroid/blockchain/BlockchainTZServiceConfig;->-$$Nest$sfgetbQC()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ffffffff000000000000000000000000"

    :goto_1
    iput-object v0, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iput p1, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iput p2, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iput-object p2, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iput-object p3, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iput p4, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iput p5, p0, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    return-void
.end method
