.class Landroid/util/sysfwutil/DexObserver$1;
.super Landroid/os/UEventObserver;
.source "DexObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/sysfwutil/DexObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/sysfwutil/DexObserver;


# direct methods
.method constructor blacklist <init>(Landroid/util/sysfwutil/DexObserver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/sysfwutil/DexObserver;

    .line 67
    iput-object p1, p0, Landroid/util/sysfwutil/DexObserver$1;->this$0:Landroid/util/sysfwutil/DexObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 71
    const-string v0, "DexObserverFW"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UEventObserver, event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Landroid/util/sysfwutil/DexObserver$1;->this$0:Landroid/util/sysfwutil/DexObserver;

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/util/sysfwutil/DexObserver;->-$$Nest$msetDexState(Landroid/util/sysfwutil/DexObserver;ILandroid/os/UEventObserver$UEvent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method
