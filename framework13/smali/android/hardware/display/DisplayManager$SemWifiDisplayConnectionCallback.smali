.class public interface abstract Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SemWifiDisplayConnectionCallback"
.end annotation


# static fields
.field public static final whitelist REASON_NOT_DEFINED:I = 0x1

.field public static final whitelist REASON_NO_HDCP_KEY:I = 0x3

.field public static final whitelist REASON_RTSP_TIME_OUT:I = 0x2


# virtual methods
.method public abstract whitelist onFailure(I)V
.end method

.method public abstract whitelist onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation
.end method
