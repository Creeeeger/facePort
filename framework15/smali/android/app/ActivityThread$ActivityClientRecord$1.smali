.class Landroid/app/ActivityThread$ActivityClientRecord$1;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Landroid/view/ViewRootImpl$ActivityConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThread$ActivityClientRecord;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread$ActivityClientRecord;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V
    .locals 6

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received empty ActivityWindowInfo update for r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityThread"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-static {v0}, Landroid/app/ActivityThread$ActivityClientRecord;->-$$Nest$fgetmActivityWindowInfo(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/window/ActivityWindowInfo;

    move-result-object p3

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v0, v0, Landroid/app/ActivityThread$ActivityClientRecord;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/ActivityThread$ActivityClientRecord$1;->this$0:Landroid/app/ActivityThread$ActivityClientRecord;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received config update for non-existing activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
