.class Lcom/samsung/android/allshare/ProviderImpl$1;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "ProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ProviderImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ProviderImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ProviderImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 133
    iput-object p1, p0, Lcom/samsung/android/allshare/ProviderImpl$1;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 5
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/allshare/ProviderImpl$1;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/ProviderImpl;->-$$Nest$fgetmProviderEventListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "actionID":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 142
    .local v1, "resBundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 143
    return-void

    .line 144
    :cond_1
    const-string v2, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "errStr":Ljava/lang/String;
    const-string v3, "com.sec.android.allshare.event.EVENT_PROVIDER_CONTENTS_UPDATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 147
    if-nez v2, :cond_2

    .line 148
    iget-object v3, p0, Lcom/samsung/android/allshare/ProviderImpl$1;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-static {v3}, Lcom/samsung/android/allshare/ProviderImpl;->-$$Nest$fgetmProviderEventListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v4}, Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;->onContentUpdated(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    .line 151
    .local v3, "error":Lcom/samsung/android/allshare/ERROR;
    iget-object v4, p0, Lcom/samsung/android/allshare/ProviderImpl$1;->this$0:Lcom/samsung/android/allshare/ProviderImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/ProviderImpl;->-$$Nest$fgetmProviderEventListener(Lcom/samsung/android/allshare/ProviderImpl;)Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/Provider$IProviderEventListener;->onContentUpdated(Lcom/samsung/android/allshare/ERROR;)V

    .line 154
    .end local v3    # "error":Lcom/samsung/android/allshare/ERROR;
    :cond_3
    :goto_0
    return-void
.end method
