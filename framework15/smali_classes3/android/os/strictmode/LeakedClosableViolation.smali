.class public final Landroid/os/strictmode/LeakedClosableViolation;
.super Landroid/os/strictmode/Violation;
.source "LeakedClosableViolation.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/strictmode/Violation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/os/strictmode/LeakedClosableViolation;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
