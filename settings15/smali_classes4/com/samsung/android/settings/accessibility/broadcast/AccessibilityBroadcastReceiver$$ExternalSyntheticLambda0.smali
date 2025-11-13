.class public final synthetic Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver;->HANDLERS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityShortcutReceiver;

    instance-of v2, v1, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityShortcutReceiver;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityShortcutReceiver;->refreshShortcut(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/AccessibilityNotificationUtil;->updateTapDurationNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityBroadcastReceiver;->HANDLERS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityShortcutReceiver;

    instance-of v2, v1, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityShortcutReceiver;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/broadcast/AccessibilityShortcutReceiver;->refreshShortcut(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/AccessibilityNotificationUtil;->updateTapDurationNotification(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
