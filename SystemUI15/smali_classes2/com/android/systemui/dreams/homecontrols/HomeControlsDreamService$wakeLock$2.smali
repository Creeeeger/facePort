.class final Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$wakeLock$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$wakeLock$2;->this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$wakeLock$2;->this$0:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setMaxTimeout(J)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object p0

    const-string v0, "HomeControlsDreamService"

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setLevelsAndFlags(I)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    return-object p0
.end method
