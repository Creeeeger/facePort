.class public interface abstract Landroid/service/controls/IControlsProviderInfoSubscriber;
.super Ljava/lang/Object;
.source "IControlsProviderInfoSubscriber.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsProviderInfoSubscriber$Stub;,
        Landroid/service/controls/IControlsProviderInfoSubscriber$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.controls.IControlsProviderInfoSubscriber"


# virtual methods
.method public abstract blacklist onNext(Landroid/os/IBinder;Landroid/service/controls/ControlsProviderInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
