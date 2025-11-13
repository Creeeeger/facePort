.class Lcom/samsung/android/allshare/ViewControllerImpl$1;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "ViewControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ViewControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ViewControllerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ViewControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/ViewControllerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 664
    iput-object p1, p0, Lcom/samsung/android/allshare/ViewControllerImpl$1;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 7
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 667
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 668
    .local v0, "resBundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    const-string v1, "BUNDLE_STRING_MAIN_TV_EVENT_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "strEventID":Ljava/lang/String;
    const-string v2, "BUNDLE_STRING_MAIN_TV_EVENT_XML"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "strXML":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TVControl] mAllShareEvent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewControllerImpl"

    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance v3, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;

    invoke-direct {v3}, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;-><init>()V

    .line 676
    .local v3, "lastChangeEvent":Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;
    invoke-virtual {v3, v2}, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->parseFromXML(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v3}, Lcom/samsung/android/allshare/ViewControllerImpl$LastChangeEvent;->getPowerOff()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PowerOFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 679
    iget-object v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl$1;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 680
    iget-object v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl$1;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/ViewControllerImpl;->disconnect()V

    .line 681
    iget-object v4, p0, Lcom/samsung/android/allshare/ViewControllerImpl$1;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/ViewControllerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ViewControllerImpl;)Lcom/samsung/android/allshare/media/ViewController$IEventListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/allshare/ViewControllerImpl$1;->this$0:Lcom/samsung/android/allshare/ViewControllerImpl;

    sget-object v6, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/allshare/media/ViewController$IEventListener;->onDisconnected(Lcom/samsung/android/allshare/media/ViewController;Lcom/samsung/android/allshare/ERROR;)V

    .line 684
    :cond_1
    return-void
.end method
