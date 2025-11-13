.class Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController$1;
.super Landroid/database/ContentObserver;
.source "SecMotionAndGestureBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;Landroid/os/Handler;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController$1;->this$0:Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/SecMotionAndGestureBaseController;->updatePreference()V

    return-void
.end method
