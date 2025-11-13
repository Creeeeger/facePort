.class public interface abstract Lcom/samsung/android/sepunion/IFriendsManagerService;
.super Ljava/lang/Object;
.source "IFriendsManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/IFriendsManagerService$Stub;,
        Lcom/samsung/android/sepunion/IFriendsManagerService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.sepunion.IFriendsManagerService"


# virtual methods
.method public abstract blacklist executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
