.class Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/apn/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .line 1616
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    .line 1617
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1618
    iput-object p3, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1623
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1625
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->access$300(Lcom/android/settings/network/apn/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    .line 1626
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$sfgetDEFAULTAPN_URI()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mgetUriForCurrSubId(Lcom/android/settings/network/apn/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method
