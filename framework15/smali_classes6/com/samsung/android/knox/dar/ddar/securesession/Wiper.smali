.class public Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;
.super Ljava/lang/Object;
.source "Wiper.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist wipe(Ljava/nio/ByteBuffer;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    return-void
.end method

.method public static blacklist wipe(Ljava/nio/CharBuffer;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([C)V

    return-void
.end method

.method public static blacklist wipe([B)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static blacklist wipe([C)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method
