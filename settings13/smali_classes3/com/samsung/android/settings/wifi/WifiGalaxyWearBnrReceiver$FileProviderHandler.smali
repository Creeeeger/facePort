.class Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;
.super Ljava/lang/Object;
.source "WifiGalaxyWearBnrReceiver.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileProviderHandler"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;Landroid/content/Context;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;Landroid/content/Context;Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;-><init>(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v2, "WifiGalaxyWearBnrReceiver"

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "handleMessage :: Config File Request "

    .line 119
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->-$$Nest$mdoBnr(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;)V

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->-$$Nest$mgetUri(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;)Landroid/net/Uri;

    move-result-object p0

    .line 122
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->-$$Nest$smsendBroadCastIntent(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "handleMessage :: Config File Process Done "

    .line 125
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->-$$Nest$mrevokePermission(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->-$$Nest$mgetBnrFilePath(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;)Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver$FileProviderHandler;->this$0:Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;->-$$Nest$mremoveBnrFile(Lcom/samsung/android/settings/wifi/WifiGalaxyWearBnrReceiver;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
