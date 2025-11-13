.class public final Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mEdgeHandleSizePercentUri:Landroid/net/Uri;

.field public final mEdgeHandlerPositionPercentUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;Landroid/os/Handler;)V
    .locals 3

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p2, "edge_handle_size_percent"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->mEdgeHandleSizePercentUri:Landroid/net/Uri;

    const-string v0, "edge_handler_position_percent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->mEdgeHandlerPositionPercentUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->mEdgeHandleSizePercentUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->mEdgeHandlerPositionPercentUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;->this$0:Lcom/android/wm/shell/pip/phone/PipController;

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->adjustPipBoundsForEdge(Landroid/graphics/Rect;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    :cond_2
    return-void
.end method
