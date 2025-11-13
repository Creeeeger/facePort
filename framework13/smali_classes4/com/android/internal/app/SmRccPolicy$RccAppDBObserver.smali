.class Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;
.super Landroid/database/ContentObserver;
.source "SmRccPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SmRccPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RccAppDBObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/SmRccPolicy;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/SmRccPolicy;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    .line 108
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 109
    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 113
    if-nez p2, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    const-string/jumbo v0, "package_name"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, "action"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v2, "show"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "show":Ljava/lang/String;
    const-string/jumbo v3, "open"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "open":Ljava/lang/String;
    const-string/jumbo v4, "restrict"

    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "restrict":Ljava/lang/String;
    const-string v5, "insert"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 123
    .local v5, "msgInsert":Landroid/os/Message;
    const/16 v6, 0x14

    iput v6, v5, Landroid/os/Message;->what:I

    .line 124
    new-instance v6, Lcom/android/internal/app/SmRccPolicy$RccApp;

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/android/internal/app/SmRccPolicy$RccApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    iget-object v6, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {v6}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    .end local v5    # "msgInsert":Landroid/os/Message;
    goto/16 :goto_1

    :cond_1
    const-string v5, "delete"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 128
    .local v5, "msgDelete":Landroid/os/Message;
    const/16 v6, 0x1e

    iput v6, v5, Landroid/os/Message;->what:I

    .line 129
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 130
    iget-object v6, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {v6}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    .end local v5    # "msgDelete":Landroid/os/Message;
    goto/16 :goto_1

    :cond_2
    const-string/jumbo v5, "update_show"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 133
    .local v5, "msgShow":Landroid/os/Message;
    const/16 v6, 0x28

    iput v6, v5, Landroid/os/Message;->what:I

    .line 134
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 138
    :cond_3
    iget-object v6, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {v6}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    .end local v5    # "msgShow":Landroid/os/Message;
    goto :goto_1

    :cond_4
    const-string/jumbo v5, "update_open"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 140
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 141
    .local v5, "msgOpen":Landroid/os/Message;
    const/16 v6, 0x32

    iput v6, v5, Landroid/os/Message;->what:I

    .line 142
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 146
    :cond_5
    iget-object v6, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {v6}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v5    # "msgOpen":Landroid/os/Message;
    goto :goto_0

    .line 147
    :cond_6
    const-string/jumbo v5, "update_restrict"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 148
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 149
    .local v5, "msgRestrict":Landroid/os/Message;
    const/16 v6, 0x3c

    iput v6, v5, Landroid/os/Message;->what:I

    .line 150
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 154
    :cond_7
    iget-object v6, p0, Lcom/android/internal/app/SmRccPolicy$RccAppDBObserver;->this$0:Lcom/android/internal/app/SmRccPolicy;

    invoke-static {v6}, Lcom/android/internal/app/SmRccPolicy;->-$$Nest$fgetmHandler(Lcom/android/internal/app/SmRccPolicy;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 147
    .end local v5    # "msgRestrict":Landroid/os/Message;
    :cond_8
    :goto_0
    nop

    .line 156
    :goto_1
    return-void
.end method
