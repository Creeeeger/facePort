.class public Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainDataStream"
.end annotation


# instance fields
.field private final blacklist mOperation:Landroid/security/KeyStoreOperation;


# direct methods
.method constructor blacklist <init>(Landroid/security/KeyStoreOperation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    return-void
.end method


# virtual methods
.method public blacklist finish([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v0, p1, p2}, Landroid/security/KeyStoreOperation;->finish([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist update([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v0, p1}, Landroid/security/KeyStoreOperation;->update([B)[B

    move-result-object v0

    return-object v0
.end method
