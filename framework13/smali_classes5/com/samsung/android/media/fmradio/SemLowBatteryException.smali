.class public Lcom/samsung/android/media/fmradio/SemLowBatteryException;
.super Lcom/samsung/android/media/fmradio/SemFmPlayerException;
.source "SemLowBatteryException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/fmradio/SemFmPlayerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method
