.class Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
.super Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailBarStateListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_LISTEN_COCKTAIL_BAR_STATE_CHANGE:I


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private blacklist mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

.field final synthetic blacklist this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateChangedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "stateChangedListener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1755
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 1756
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;-><init>()V

    .line 1757
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    .line 1758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .line 1759
    if-nez p3, :cond_0

    iget-object v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 1760
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    nop

    .line 1761
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1775
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1717
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 1718
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarStateCallback$Stub;-><init>()V

    .line 1719
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .line 1720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    .line 1721
    if-nez p3, :cond_0

    iget-object v0, p1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 1722
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    nop

    .line 1723
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1752
    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1779
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    return-object v0
.end method

.method public blacklist getStateChangedListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;
    .locals 1

    .line 1783
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    return-object v0
.end method

.method public blacklist onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1789
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1790
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1791
    return-void
.end method

.method public blacklist onDestroy()V
    .locals 1

    .line 1794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 1795
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;

    .line 1796
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->mStateChangedListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    .line 1797
    return-void
.end method
