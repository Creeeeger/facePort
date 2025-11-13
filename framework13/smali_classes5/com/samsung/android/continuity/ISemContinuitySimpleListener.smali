.class public interface abstract Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
.super Ljava/lang/Object;
.source "ISemContinuitySimpleListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/continuity/ISemContinuitySimpleListener$Stub;,
        Lcom/samsung/android/continuity/ISemContinuitySimpleListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.continuity.ISemContinuitySimpleListener"


# virtual methods
.method public abstract blacklist onNotify(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
