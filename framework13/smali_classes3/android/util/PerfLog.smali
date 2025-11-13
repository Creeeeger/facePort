.class public Landroid/util/PerfLog;
.super Ljava/lang/Object;
.source "PerfLog.java"


# static fields
.field public static final blacklist AMPSS_THRESHOLD:I = 0x80000


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final native blacklist OLOG(IIIILjava/lang/String;)V
.end method

.method static final native blacklist OLOG(IILjava/lang/String;)V
.end method

.method static final native blacklist OLOG(IISLjava/lang/String;)V
.end method

.method static final native blacklist OLOG(IISSLjava/lang/String;)V
.end method

.method static final native blacklist OLOG(Ljava/lang/String;)V
.end method

.method public static final blacklist d(ILjava/lang/String;)V
    .locals 1
    .param p0, "logid"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/util/PerfLog;->OLOG(IILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public static final blacklist d(ISLjava/lang/String;)V
    .locals 1
    .param p0, "logid"    # I
    .param p1, "param1"    # S
    .param p2, "message"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Landroid/util/PerfLog;->OLOG(IISLjava/lang/String;)V

    .line 54
    return-void
.end method

.method public static final blacklist d(ISSLjava/lang/String;)V
    .locals 1
    .param p0, "logid"    # I
    .param p1, "param1"    # S
    .param p2, "param2"    # S
    .param p3, "message"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2, p3}, Landroid/util/PerfLog;->OLOG(IISSLjava/lang/String;)V

    .line 65
    return-void
.end method

.method public static final blacklist d(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .line 31
    invoke-static {p0}, Landroid/util/PerfLog;->OLOG(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static final blacklist e(IIILjava/lang/String;)V
    .locals 1
    .param p0, "logid"    # I
    .param p1, "param1"    # I
    .param p2, "param2"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2, p3}, Landroid/util/PerfLog;->OLOG(IIIILjava/lang/String;)V

    .line 79
    return-void
.end method
