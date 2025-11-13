.class public abstract Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback;
.super Ljava/lang/Object;
.source "DeviceInjectorSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/DeviceInjectorSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatusCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/DeviceInjectorSession$StatusCallback$ErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_INJECTION_INVALID_ERROR:I = -0x1

.field public static final blacklist ERROR_INJECTION_SERVICE:I = 0x1

.field public static final blacklist ERROR_INJECTION_SESSION:I = 0x0

.field public static final blacklist ERROR_INJECTION_UNSUPPORTED:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onClose()V
.end method

.method public abstract blacklist onError(I)V
.end method

.method public abstract blacklist onInjectionPendingStarted(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist onInjectionPendingStopped(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist onInjectionStarted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist onInjectionStopped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract blacklist onSessionCreated(Landroid/hardware/camera2/DeviceInjectorSession;)V
.end method
