.class Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;
.super Landroid/os/Handler;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;

.field final synthetic blacklist val$this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;->val$this$0:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;->this$1:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->-$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;->onSystemUiVisibilityChanged(I)V

    :cond_1
    return-void
.end method
