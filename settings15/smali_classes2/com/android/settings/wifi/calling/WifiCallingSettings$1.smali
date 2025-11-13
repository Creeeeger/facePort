.class public final Lcom/android/settings/wifi/calling/WifiCallingSettings$1;
.super Lcom/android/settings/network/ActiveSubscriptionsListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettings;Landroid/os/Looper;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    invoke-direct {p0, p3, p2}, Lcom/android/settings/network/ActiveSubscriptionsListener;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 6

    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings$1;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettings;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSubscriptionChangeListener:Lcom/android/settings/network/ActiveSubscriptionsListener;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    sget-object v1, Lcom/android/settings/wifi/calling/WifiCallingSettings;->EMPTY_SUB_ID_LIST:[I

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->updateSubList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    :goto_1
    array-length v3, v1

    if-lez v3, :cond_5

    array-length v3, v0

    if-nez v3, :cond_3

    iput-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    goto :goto_2

    :cond_3
    array-length v3, v0

    array-length v4, v1

    if-ne v3, v4, :cond_5

    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mConstructionSubId:I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mConstructionSubId:I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iput-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSil:Ljava/util/List;

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Closed subId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mConstructionSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to subscription change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiCallingSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSubscriptionChangeListener:Lcom/android/settings/network/ActiveSubscriptionsListener;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/network/ActiveSubscriptionsListener;->monitorSubscriptionsChange(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettings;->mSubscriptionChangeListener:Lcom/android/settings/network/ActiveSubscriptionsListener;

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :goto_2
    return-void
.end method
