.class public Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
.super Ljava/lang/Object;
.source "KeyParameter.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist key:[B


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public blacklist getKey()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->key:[B

    return-object v0
.end method
