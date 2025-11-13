.class public Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;
.super Ljava/lang/Object;
.source "Wiper.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist wipe(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;

    .line 39
    if-nez p0, :cond_0

    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 42
    return-void
.end method

.method public static blacklist wipe(Ljava/nio/CharBuffer;)V
    .locals 1
    .param p0, "cb"    # Ljava/nio/CharBuffer;

    .line 49
    if-nez p0, :cond_0

    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([C)V

    .line 52
    return-void
.end method

.method public static blacklist wipe([B)V
    .locals 1
    .param p0, "bytes"    # [B

    .line 19
    if-nez p0, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 22
    return-void
.end method

.method public static blacklist wipe([C)V
    .locals 1
    .param p0, "chars"    # [C

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 32
    return-void
.end method
