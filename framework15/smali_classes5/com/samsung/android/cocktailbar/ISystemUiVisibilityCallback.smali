.class public interface abstract Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback;
.super Ljava/lang/Object;
.source "ISystemUiVisibilityCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback$Stub;,
        Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ISystemUiVisibilityCallback"


# virtual methods
.method public abstract blacklist onSystemUiVisibilityChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
