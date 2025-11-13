.class Landroid/util/sysfwutil/DexObserver$2;
.super Ljava/lang/Thread;
.source "DexObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/sysfwutil/DexObserver;->onUpdateDexMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/sysfwutil/DexObserver;


# direct methods
.method constructor blacklist <init>(Landroid/util/sysfwutil/DexObserver;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/sysfwutil/DexObserver;
    .param p2, "name"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Landroid/util/sysfwutil/DexObserver$2;->this$0:Landroid/util/sysfwutil/DexObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 195
    iget-object v0, p0, Landroid/util/sysfwutil/DexObserver$2;->this$0:Landroid/util/sysfwutil/DexObserver;

    invoke-static {v0}, Landroid/util/sysfwutil/DexObserver;->-$$Nest$fgetmListeners(Landroid/util/sysfwutil/DexObserver;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/sysfwutil/DexConnectionListener;

    .line 196
    .local v1, "li":Landroid/util/sysfwutil/DexConnectionListener;
    invoke-interface {v1}, Landroid/util/sysfwutil/DexConnectionListener;->onConnect()V

    .line 197
    .end local v1    # "li":Landroid/util/sysfwutil/DexConnectionListener;
    goto :goto_0

    .line 198
    :cond_0
    return-void
.end method
