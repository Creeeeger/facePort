.class Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;
.super Ljava/lang/Object;
.source "UnknownSourceAppBlockActivity.java"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onForegroundActivitiesChanged(IIZ)V
    .locals 3

    const/16 v0, 0x3e8

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v1}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$fgetmBrowserUidForLink(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)I

    move-result v1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$fputmIsBrowserClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;Z)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$fputmIsAppBlockActivityClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v1}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$fgetmBrowserUidForLink(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$fputmIsBrowserClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;Z)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$fgetmIsBrowserClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$fgetmIsAppBlockActivityClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v0}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$mrejectInstall(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;)V

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity$1;->this$0:Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;->-$$Nest$fputmIsAppBlockActivityClosed(Lcom/samsung/android/core/pm/install/UnknownSourceAppBlockActivity;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public whitelist onProcessDied(II)V
    .locals 0

    return-void
.end method
