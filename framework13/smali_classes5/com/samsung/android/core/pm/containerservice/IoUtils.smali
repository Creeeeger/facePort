.class public final Lcom/samsung/android/core/pm/containerservice/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static blacklist closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/lang/AutoCloseable;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0

    .line 17
    :catch_1
    move-exception v0

    .line 18
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 22
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method
