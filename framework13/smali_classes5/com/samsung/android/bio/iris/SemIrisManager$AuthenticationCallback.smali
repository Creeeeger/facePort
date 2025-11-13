.class public abstract Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationCallback;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AuthenticationCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 1627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .line 1761
    return-void
.end method

.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 1667
    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .locals 0

    .line 1743
    return-void
.end method

.method public whitelist onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 1717
    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;)V
    .locals 0
    .param p1, "result"    # Lcom/samsung/android/bio/iris/SemIrisManager$AuthenticationResult;

    .line 1731
    return-void
.end method
