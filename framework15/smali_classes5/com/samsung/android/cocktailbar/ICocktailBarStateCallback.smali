.class public interface abstract Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback;
.super Ljava/lang/Object;
.source "ICocktailBarStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;,
        Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ICocktailBarStateCallback"


# virtual methods
.method public abstract blacklist onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
