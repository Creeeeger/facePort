.class public final Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_text_color_inversion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView$1;->this$0:Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->mIsAdaptiveTextColor:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/NotificationTemplateView;->setTextInversion()V

    return-void
.end method
