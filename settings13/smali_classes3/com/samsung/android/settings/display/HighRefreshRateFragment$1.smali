.class Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;
.super Landroid/database/ContentObserver;
.source "HighRefreshRateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/HighRefreshRateFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/HighRefreshRateFragment;Landroid/os/Handler;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->-$$Nest$fputmMode(Lcom/samsung/android/settings/display/HighRefreshRateFragment;I)V

    const-string p1, "low_power"

    .line 104
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->-$$Nest$fgetmMode(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->-$$Nest$fputmMode(Lcom/samsung/android/settings/display/HighRefreshRateFragment;I)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-static {p2}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->-$$Nest$fgetmMode(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)I

    move-result p2

    invoke-static {p1, p2, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    const-string p1, "HighRefreshRateFragment"

    const-string p2, "onChange: change to normal mode"

    .line 108
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;->this$0:Lcom/samsung/android/settings/display/HighRefreshRateFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->-$$Nest$mrefreshUI(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)V

    return-void
.end method
