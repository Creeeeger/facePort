.class public interface abstract Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;
.super Ljava/lang/Object;
.source "ICocktailBarShowCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback$Stub;,
        Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ICocktailBarShowCallback"


# virtual methods
.method public abstract blacklist onShown(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
