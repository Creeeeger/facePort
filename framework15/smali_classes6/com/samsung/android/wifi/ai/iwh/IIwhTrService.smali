.class public interface abstract Lcom/samsung/android/wifi/ai/iwh/IIwhTrService;
.super Ljava/lang/Object;
.source "IIwhTrService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Stub;,
        Lcom/samsung/android/wifi/ai/iwh/IIwhTrService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.ai.iwh.IIwhTrService"


# virtual methods
.method public abstract blacklist initialize(Ljava/lang/String;IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
