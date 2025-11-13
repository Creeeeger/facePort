.class Landroid/appwidget/AppWidgetHost$Callbacks;
.super Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Callbacks"
.end annotation


# instance fields
.field private final greylist-max-o mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 87
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 89
    return-void
.end method

.method private static greylist-max-o isLocalBinder()Z
    .locals 2

    .line 146
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist appWidgetRemoved(I)V
    .locals 3
    .param p1, "appWidgetId"    # I

    .line 120
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 121
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 125
    return-void
.end method

.method public greylist-max-o providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 107
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 111
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 112
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 116
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 117
    return-void
.end method

.method public greylist-max-o providersChanged()V
    .locals 2

    .line 128
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 129
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public greylist-max-o updateAppWidget(ILandroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .line 92
    invoke-static {}, Landroid/appwidget/AppWidgetHost$Callbacks;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 95
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 96
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 98
    const-string v1, "AppWidgetHost"

    const-string v2, "Handler is not available."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 102
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 103
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method

.method public greylist-max-o viewDataChanged(II)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "viewId"    # I

    .line 136
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 137
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 142
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 143
    return-void
.end method
