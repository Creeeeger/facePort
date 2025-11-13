.class public final Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;->onConditionChanged()V

    :cond_0
    return-void
.end method
