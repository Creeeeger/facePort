.class public Lcom/samsung/android/media/fmradio/SemFmPlayerException;
.super Ljava/lang/Exception;
.source "SemFmPlayerException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist mThrowable:Ljava/lang/Throwable;

.field private blacklist msg:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmPlayerException;->msg:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/media/fmradio/SemFmPlayerException;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public whitelist test-api getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayerException;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmPlayerException;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method
