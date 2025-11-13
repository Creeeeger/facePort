.class public interface abstract Lcom/samsung/android/contextengine/ISemContextEngineManager;
.super Ljava/lang/Object;
.source "ISemContextEngineManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextengine/ISemContextEngineManager$Stub;,
        Lcom/samsung/android/contextengine/ISemContextEngineManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.contextengine.ISemContextEngineManager"


# virtual methods
.method public abstract blacklist setDefault()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
