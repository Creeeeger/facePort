.class public interface abstract Lcom/samsung/android/dsms/aidl/IDsmsInfoService;
.super Ljava/lang/Object;
.source "IDsmsInfoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dsms/aidl/IDsmsInfoService$Stub;,
        Lcom/samsung/android/dsms/aidl/IDsmsInfoService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.dsms.aidl.IDsmsInfoService"


# virtual methods
.method public abstract blacklist isCommercializedDevice()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
