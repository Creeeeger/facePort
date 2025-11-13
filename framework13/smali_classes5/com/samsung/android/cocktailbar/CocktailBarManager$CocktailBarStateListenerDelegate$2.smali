.class Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;
.super Landroid/os/Handler;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

.field final synthetic blacklist val$this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1761
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;->val$this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1764
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->-$$Nest$fgetmStateChangedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1765
    return-void

    .line 1767
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 1768
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 1769
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-eqz v1, :cond_1

    .line 1770
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate$2;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;->-$$Nest$fgetmStateChangedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 1773
    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_1
    return-void
.end method
