.class public interface abstract Lcom/samsung/android/core/IFoldStarCallback;
.super Ljava/lang/Object;
.source "IFoldStarCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/IFoldStarCallback$Stub;,
        Lcom/samsung/android/core/IFoldStarCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist BOUNDS_COMPAT_NONE:I = 0x0

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.core.IFoldStarCallback"

.field public static final blacklist DISPLAY_COMPAT_MODE:I = 0x1


# virtual methods
.method public abstract blacklist onBoundsCompatPackageAppeared(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
