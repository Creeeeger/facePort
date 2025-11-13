.class public interface abstract Lcom/samsung/android/edge/IEdgeLightingResponse;
.super Ljava/lang/Object;
.source "IEdgeLightingResponse.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/IEdgeLightingResponse$Stub;,
        Lcom/samsung/android/edge/IEdgeLightingResponse$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.edge.IEdgeLightingResponse"


# virtual methods
.method public abstract blacklist onFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
