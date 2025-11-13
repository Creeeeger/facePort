.class public final Lcom/android/systemui/globalactions/presentation/features/FakeFeatures$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures$1;->this$0:Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures$1;->this$0:Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "onReceive: "

    const-string v3, ","

    invoke-static {v2, p1, v3, v0, v3}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FakeFeatures"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.android.systemui.globalactions.ACTION_UPDATE_SYSTEM_FEATURE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures$1;->this$0:Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->updateFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.android.systemui.globalactions.ACTION_REMOVE_SYSTEM_FEATURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures$1;->this$0:Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->sConditionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/features/FakeFeatures;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string p1, "removed"

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
