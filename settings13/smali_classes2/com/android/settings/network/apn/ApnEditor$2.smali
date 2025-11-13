.class Lcom/android/settings/network/apn/ApnEditor$2;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnEditor;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$2;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 377
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SIMHOTSWAP"

    .line 378
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    invoke-static {}, Lcom/android/settings/network/apn/ApnEditor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FINISH : HOTSWAP"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$2;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
