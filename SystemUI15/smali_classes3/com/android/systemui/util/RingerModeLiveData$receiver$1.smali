.class public final Lcom/android/systemui/util/RingerModeLiveData$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/RingerModeLiveData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/RingerModeLiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/RingerModeLiveData$receiver$1;->this$0:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/util/RingerModeLiveData$receiver$1;->this$0:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/util/RingerModeLiveData;->access$setInitialSticky$p(Lcom/android/systemui/util/RingerModeLiveData;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/RingerModeLiveData$receiver$1;->this$0:Lcom/android/systemui/util/RingerModeLiveData;

    const-string p1, "android.media.EXTRA_RINGER_MODE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
