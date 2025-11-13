.class public interface abstract Lcom/samsung/android/desktopmode/IBleAdvertiserService;
.super Ljava/lang/Object;
.source "IBleAdvertiserService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/IBleAdvertiserService$Stub;,
        Lcom/samsung/android/desktopmode/IBleAdvertiserService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.desktopmode.IBleAdvertiserService"


# virtual methods
.method public abstract blacklist needToKeepBinding()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
