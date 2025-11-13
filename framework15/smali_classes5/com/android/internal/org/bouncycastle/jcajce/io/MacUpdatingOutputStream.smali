.class Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;
.super Ljava/io/OutputStream;
.source "MacUpdatingOutputStream.java"


# instance fields
.field private blacklist mac:Ljavax/crypto/Mac;


# direct methods
.method constructor blacklist <init>(Ljavax/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;->mac:Ljavax/crypto/Mac;

    return-void
.end method


# virtual methods
.method public whitelist test-api write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;->mac:Ljavax/crypto/Mac;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method public whitelist test-api write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method public whitelist test-api write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/io/MacUpdatingOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
