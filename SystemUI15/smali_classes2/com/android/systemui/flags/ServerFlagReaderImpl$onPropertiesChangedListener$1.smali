.class public final Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/ServerFlagReaderImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;->this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;->this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    iget-boolean v1, v0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->isTestHarness:Z

    if-eqz v1, :cond_0

    const-string p0, "Ignore server flag changes in Test Harness mode."

    iget-object p1, v0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;->this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    iget-object v1, v1, Lcom/android/systemui/flags/ServerFlagReaderImpl;->namespace:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl$onPropertiesChangedListener$1;->this$0:Lcom/android/systemui/flags/ServerFlagReaderImpl;

    iget-object p0, p0, Lcom/android/systemui/flags/ServerFlagReaderImpl;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease$1;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/flags/Flag;

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease$1;->this$0:Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mBooleanCache:Ljava/util/Map;

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v0, :cond_a

    goto :goto_4

    :cond_6
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mStringCache:Ljava/util/Map;

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mStringCache:Ljava/util/Map;

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v3, v0

    goto :goto_4

    :cond_8
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mIntCache:Ljava/util/Map;

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    :goto_2
    move v0, v4

    :goto_3
    iget-object v2, v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mIntCache:Ljava/util/Map;

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v6

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_a

    goto :goto_4

    :cond_a
    move v3, v4

    :goto_4
    if-eqz v3, :cond_2

    iget-object v0, v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->mRestarter:Lcom/android/systemui/flags/Restarter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server flag change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/android/systemui/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/flags/Restarter;->restartSystemUI(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
