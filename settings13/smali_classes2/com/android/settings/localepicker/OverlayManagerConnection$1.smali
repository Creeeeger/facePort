.class Lcom/android/settings/localepicker/OverlayManagerConnection$1;
.super Ljava/lang/Object;
.source "OverlayManagerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/localepicker/OverlayManagerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/OverlayManagerConnection;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 25
    iget-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fputmIsBound(Lcom/android/settings/localepicker/OverlayManagerConnection;Z)V

    .line 26
    iget-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    invoke-static {p2}, Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fputmLocaleOverlayManager(Lcom/android/settings/localepicker/OverlayManagerConnection;Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V

    .line 27
    iget-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    invoke-static {p1}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fgetmServiceConnectionStatus(Lcom/android/settings/localepicker/OverlayManagerConnection;)Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    invoke-static {p1}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fgetmServiceConnectionStatus(Lcom/android/settings/localepicker/OverlayManagerConnection;)Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    invoke-static {p0}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fgetmLocaleOverlayManager(Lcom/android/settings/localepicker/OverlayManagerConnection;)Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;->onServiceConnected(Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 32
    invoke-static {}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service has disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fputmLocaleOverlayManager(Lcom/android/settings/localepicker/OverlayManagerConnection;Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;)V

    .line 34
    iget-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fputmIsBound(Lcom/android/settings/localepicker/OverlayManagerConnection;Z)V

    .line 35
    iget-object p1, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    invoke-static {p1}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fgetmServiceConnectionStatus(Lcom/android/settings/localepicker/OverlayManagerConnection;)Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p0, p0, Lcom/android/settings/localepicker/OverlayManagerConnection$1;->this$0:Lcom/android/settings/localepicker/OverlayManagerConnection;

    invoke-static {p0}, Lcom/android/settings/localepicker/OverlayManagerConnection;->-$$Nest$fgetmServiceConnectionStatus(Lcom/android/settings/localepicker/OverlayManagerConnection;)Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/localepicker/OverlayManagerConnection$ServiceConnectionStatus;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
