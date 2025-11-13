.class public interface abstract Lcom/samsung/android/vr/IARStateCallbacks;
.super Ljava/lang/Object;
.source "IARStateCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/IARStateCallbacks$Stub;,
        Lcom/samsung/android/vr/IARStateCallbacks$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.vr.IARStateCallbacks"


# virtual methods
.method public abstract blacklist onARStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
