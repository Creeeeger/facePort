.class public interface abstract Landroid/hardware/fingerprint/SemFingerprintViewListener;
.super Ljava/lang/Object;
.source "SemFingerprintViewListener.java"


# static fields
.field public static final blacklist EVT_AUTHENTICATION_SUCCEEDED:I = 0x64

.field public static final blacklist EVT_DISMISS:I = 0x3

.field public static final blacklist EVT_SHOW:I = 0x2

.field public static final blacklist EVT_STARTED:I = 0x0

.field public static final blacklist EVT_STOPPED:I = 0x1


# virtual methods
.method public blacklist onAuthenticationSucceeded()V
    .locals 0

    return-void
.end method

.method public abstract blacklist onDismiss()V
.end method

.method public blacklist onEvent(I)V
    .locals 0

    return-void
.end method

.method public abstract blacklist onShow()V
.end method

.method public abstract blacklist onStarted()V
.end method

.method public abstract blacklist onStopped()V
.end method
