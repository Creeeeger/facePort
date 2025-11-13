.class Landroid/blockchain/BlockchainTZServiceConfig$1;
.super Landroid/blockchain/IBlockchainClient$Stub;
.source "BlockchainTZServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/blockchain/BlockchainTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/blockchain/BlockchainTZServiceConfig;


# direct methods
.method constructor blacklist <init>(Landroid/blockchain/BlockchainTZServiceConfig;)V
    .locals 0
    .param p1, "this$0"    # Landroid/blockchain/BlockchainTZServiceConfig;

    .line 49
    iput-object p1, p0, Landroid/blockchain/BlockchainTZServiceConfig$1;->this$0:Landroid/blockchain/BlockchainTZServiceConfig;

    invoke-direct {p0}, Landroid/blockchain/IBlockchainClient$Stub;-><init>()V

    return-void
.end method
