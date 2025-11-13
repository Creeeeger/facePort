.class Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;
.super Landroid/os/Handler;
.source "MDEServiceBindingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mde/MDEServiceBindingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;Landroid/os/Looper;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    .line 61
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 66
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 74
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "version"

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage : version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "id_list"

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 78
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : idList is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 80
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "idList is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Lcom/samsung/android/settings/mde/ShortcutLoader;

    iget-object v3, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-static {v3}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/samsung/android/settings/mde/ShortcutLoader;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-nez v4, :cond_2

    const-string v4, "/"

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    array-length v4, v3

    const/4 v6, 0x1

    if-le v4, v6, :cond_2

    const/4 v4, 0x0

    .line 94
    aget-object v5, v3, v4

    .line 95
    aget-object v3, v3, v6

    goto :goto_1

    :cond_2
    move-object v3, v5

    .line 99
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handleMessage : packageName is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handleMessage : shortcutId is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->getInstance()Lcom/samsung/android/settings/mde/MDESuggestionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/mde/MDESuggestionManager;->getDismissedSuggestions()Ljava/util/ArrayList;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 110
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is dismissed."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/settings/mde/ShortcutLoader;->loadShortcut(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-nez v4, :cond_6

    .line 117
    invoke-static {}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage : shortcut is null. packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", shortcutId = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 122
    :cond_6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 125
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-static {p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fgetmCallbacks(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    .line 126
    invoke-interface {p1, v0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;->onSuggestionsUpdated(Ljava/util/List;)V

    goto :goto_2

    .line 69
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$CallbackHandler;->this$0:Lcom/samsung/android/settings/mde/MDEServiceBindingManager;

    invoke-static {p0}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager;->-$$Nest$fgetmCallbacks(Lcom/samsung/android/settings/mde/MDEServiceBindingManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;

    .line 70
    invoke-interface {p1}, Lcom/samsung/android/settings/mde/MDEServiceBindingManager$Callback;->onRequestUpdated()V

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method
