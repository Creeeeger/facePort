.class public interface abstract Lcom/samsung/android/sepunion/IPluginManager;
.super Ljava/lang/Object;
.source "IPluginManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/IPluginManager$Stub;,
        Lcom/samsung/android/sepunion/IPluginManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sepunion.IPluginManager"


# virtual methods
.method public abstract blacklist getCoverState()Lcom/samsung/android/cover/CoverState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
