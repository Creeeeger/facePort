.class public final Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

.field public final synthetic this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->callback:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Callback;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    check-cast p1, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;

    iget-object v2, p1, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->mItemsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/qs/bar/MicModeDetailAdapter;->updateDetailItem(Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->selectedMode:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getMicMode()I

    move-result v1

    if-eq p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getMicMode()I

    move-result v1

    iput v1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->selectedMode:I

    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getMicMode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "set mic mode to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicModeDetailItems"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMicInputControlMode(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->this$0:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Adapter$getView$3;->$item:Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;->getLoggingValue()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems;->context:Landroid/content/Context;

    const-string v2, "micmode_pref"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASMM1031"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VOICE_"

    invoke-static {v0, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "ASMM1029"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
