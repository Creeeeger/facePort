.class public interface abstract Lcom/samsung/android/vr/IGearVrStateCallbacks;
.super Ljava/lang/Object;
.source "IGearVrStateCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;,
        Lcom/samsung/android/vr/IGearVrStateCallbacks$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.vr.IGearVrStateCallbacks"


# virtual methods
.method public abstract blacklist onGearVrStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
