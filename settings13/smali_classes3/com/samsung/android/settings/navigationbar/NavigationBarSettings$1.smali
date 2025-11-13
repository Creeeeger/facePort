.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;
.super Landroid/database/ContentObserver;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/os/Handler;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 85
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_a11y_button"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez p1, :cond_1

    if-nez v2, :cond_1

    const-string p1, "NavigationBarSettings"

    const-string v0, "update button order by Accessibility."

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-$$Nest$fgetmGesturePreference(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateButtonOrder()V

    :cond_1
    return-void
.end method
