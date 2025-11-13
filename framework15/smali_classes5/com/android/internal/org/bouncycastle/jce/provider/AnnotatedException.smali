.class public Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
.super Ljava/lang/Exception;
.source "AnnotatedException.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jce/exception/ExtException;


# instance fields
.field private blacklist _underlyingException:Ljava/lang/Throwable;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method

.method blacklist getUnderlyingException()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->_underlyingException:Ljava/lang/Throwable;

    return-object v0
.end method
