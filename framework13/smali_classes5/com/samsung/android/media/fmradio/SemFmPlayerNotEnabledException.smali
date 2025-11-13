.class public Lcom/samsung/android/media/fmradio/SemFmPlayerNotEnabledException;
.super Lcom/samsung/android/media/fmradio/SemFmPlayerException;
.source "SemFmPlayerNotEnabledException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/fmradio/SemFmPlayerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method
