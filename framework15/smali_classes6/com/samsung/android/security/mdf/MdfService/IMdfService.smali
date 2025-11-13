.class public interface abstract Lcom/samsung/android/security/mdf/MdfService/IMdfService;
.super Ljava/lang/Object;
.source "IMdfService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/mdf/MdfService/IMdfService$Stub;,
        Lcom/samsung/android/security/mdf/MdfService/IMdfService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.security.mdf.MdfService.IMdfService"


# virtual methods
.method public abstract blacklist initCCMode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
