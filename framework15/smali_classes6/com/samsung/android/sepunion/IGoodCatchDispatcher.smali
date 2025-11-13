.class public interface abstract Lcom/samsung/android/sepunion/IGoodCatchDispatcher;
.super Ljava/lang/Object;
.source "IGoodCatchDispatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/IGoodCatchDispatcher$Stub;,
        Lcom/samsung/android/sepunion/IGoodCatchDispatcher$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sepunion.IGoodCatchDispatcher"


# virtual methods
.method public abstract blacklist onStart(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStop(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
