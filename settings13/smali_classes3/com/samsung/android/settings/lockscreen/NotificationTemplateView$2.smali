.class Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;
.super Landroid/database/ContentObserver;
.source "NotificationTemplateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;Landroid/os/Handler;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$2;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->-$$Nest$fgetmInvertTextRunnable(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
