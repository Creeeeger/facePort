.class Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
.super Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback$Stub;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUiVisibilityListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_SYSTEM_UI_VISIBILITY_CHANGED:I = 0x1


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

.field final synthetic blacklist this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1971
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 1972
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback$Stub;-><init>()V

    .line 1973
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    .line 1974
    if-nez p3, :cond_0

    iget-object v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 1975
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    nop

    .line 1976
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1987
    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;
    .locals 1

    .line 1990
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    return-object v0
.end method

.method public blacklist onDestroy()V
    .locals 1

    .line 2001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 2002
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    .line 2003
    return-void
.end method

.method public blacklist onSystemUiVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1996
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 1997
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1998
    return-void
.end method
