.class public interface abstract Lcom/samsung/android/service/sats/ISatsService;
.super Ljava/lang/Object;
.source "ISatsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/sats/ISatsService$Stub;,
        Lcom/samsung/android/service/sats/ISatsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.sats.ISatsService"


# virtual methods
.method public abstract blacklist executePseudoDrkAtCommnd(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
