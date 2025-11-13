.class Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;
.super Ljava/lang/Object;
.source "NotificationTemplateView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_text_color_inversion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->-$$Nest$fputmIsAdaptiveTextColor(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;Z)V

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->-$$Nest$fgetmViewOpacity(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->-$$Nest$msetTextInversion(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;F)V

    return-void
.end method
