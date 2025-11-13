.class public Landroid/security/keystore/BackendBusyException;
.super Ljava/security/ProviderException;
.source "BackendBusyException.java"


# instance fields
.field private final blacklist mBackOffHintMillis:J


# direct methods
.method public constructor whitelist <init>(J)V
    .locals 2

    const-string v0, "The keystore backend has no operation slots available. Retry later."

    invoke-direct {p0, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/security/keystore/BackendBusyException;->mBackOffHintMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Back-off hint cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/security/keystore/BackendBusyException;->mBackOffHintMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Back-off hint cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(JLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0, p3, p4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Landroid/security/keystore/BackendBusyException;->mBackOffHintMillis:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Back-off hint cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBackOffHintMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/security/keystore/BackendBusyException;->mBackOffHintMillis:J

    return-wide v0
.end method
