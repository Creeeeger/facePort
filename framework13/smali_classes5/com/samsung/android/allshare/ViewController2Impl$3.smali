.class Lcom/samsung/android/allshare/ViewController2Impl$3;
.super Ljava/lang/Object;
.source "ViewController2Impl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/ViewController2Impl;->connect(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ViewController2Impl;

.field final synthetic blacklist val$port:I

.field final synthetic blacklist val$serverIp:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ViewController2Impl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ViewController2Impl;

    .line 325
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    iput-object p2, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->val$serverIp:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 329
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->val$serverIp:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->val$port:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fputmSocket(Lcom/samsung/android/allshare/ViewController2Impl;Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fputmConnectResult(Lcom/samsung/android/allshare/ViewController2Impl;Z)V

    .line 335
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 330
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 331
    .local v1, "e":Ljava/net/UnknownHostException;
    iget-object v2, p0, Lcom/samsung/android/allshare/ViewController2Impl$3;->this$0:Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/ViewController2Impl;->-$$Nest$fputmConnectResult(Lcom/samsung/android/allshare/ViewController2Impl;Z)V

    .line 332
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 336
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :goto_0
    nop

    .line 338
    :goto_1
    return-void
.end method
