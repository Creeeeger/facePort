.class public interface abstract Landroid/app/INotificationPlayerOnCompletionListener;
.super Ljava/lang/Object;
.source "INotificationPlayerOnCompletionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationPlayerOnCompletionListener$Stub;,
        Landroid/app/INotificationPlayerOnCompletionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationPlayerOnCompletionListener"


# virtual methods
.method public abstract blacklist onCompletion()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
