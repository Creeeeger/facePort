.class public interface abstract Lcom/samsung/android/mateservice/IMateService;
.super Ljava/lang/Object;
.source "IMateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/IMateService$Stub;,
        Lcom/samsung/android/mateservice/IMateService$Default;
    }
.end annotation


# static fields
.field public static final greylist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.mateservice.IMateService"


# virtual methods
.method public abstract greylist executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
