.class public interface abstract Lcom/samsung/android/dsms/aidl/IDsmsService;
.super Ljava/lang/Object;
.source "IDsmsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dsms/aidl/IDsmsService$Stub;,
        Lcom/samsung/android/dsms/aidl/IDsmsService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.dsms.aidl.IDsmsService"


# virtual methods
.method public abstract blacklist sendMessage(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
