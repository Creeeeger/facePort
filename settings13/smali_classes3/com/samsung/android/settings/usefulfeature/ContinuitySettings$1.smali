.class Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$1;
.super Landroid/database/ContentObserver;
.source "ContinuitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;Landroid/os/Handler;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->-$$Nest$fgetmUriContinuity(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->-$$Nest$fgetmUriContinuity(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 298
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings$1;->this$0:Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->getContinuitySettingValue(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;->-$$Nest$mupdateSettingMenuEnabled(Lcom/samsung/android/settings/usefulfeature/ContinuitySettings;Z)V

    :cond_1
    return-void
.end method
