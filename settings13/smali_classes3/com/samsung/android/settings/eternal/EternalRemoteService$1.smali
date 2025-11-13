.class Lcom/samsung/android/settings/eternal/EternalRemoteService$1;
.super Ljava/lang/Object;
.source "EternalRemoteService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/eternal/EternalRemoteService;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/eternal/EternalRemoteService;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->getInstance()Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/EternalRemoteService$1;->this$0:Lcom/samsung/android/settings/eternal/EternalRemoteService;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/eternal/defaultvalue/DefaultValueManager;->fetchCreateDefaultValues(Landroid/content/Context;)V

    return-void
.end method
