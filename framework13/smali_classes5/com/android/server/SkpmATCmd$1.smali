.class Lcom/android/server/SkpmATCmd$1;
.super Ljava/lang/Object;
.source "SkpmATCmd.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SkpmATCmd;->bindSkpmService()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/SkpmATCmd;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/SkpmATCmd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SkpmATCmd;

    .line 70
    iput-object p1, p0, Lcom/android/server/SkpmATCmd$1;->this$0:Lcom/android/server/SkpmATCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 73
    iget-object v0, p0, Lcom/android/server/SkpmATCmd$1;->this$0:Lcom/android/server/SkpmATCmd;

    invoke-static {p2}, Lcom/skms/android/agent/ISkpmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/skms/android/agent/ISkpmService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/SkpmATCmd;->-$$Nest$fputmSkpmService(Lcom/android/server/SkpmATCmd;Lcom/skms/android/agent/ISkpmService;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/SkpmATCmd$1;->this$0:Lcom/android/server/SkpmATCmd;

    invoke-static {v0}, Lcom/android/server/SkpmATCmd;->-$$Nest$fgetmSkpmService(Lcom/android/server/SkpmATCmd;)Lcom/skms/android/agent/ISkpmService;

    move-result-object v0

    const-string v1, "SkpmATCmd"

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "SKPM service is connected"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_0
    const-string v0, "SKPM service is not connected, mSkpmService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 82
    const-string v0, "SkpmATCmd"

    const-string v1, "SKPM service is disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method
