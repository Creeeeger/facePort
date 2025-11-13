.class public final Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$4;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$4;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->qsDetailControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSDetailController;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager$4;->this$0:Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/interfaces/connectivity/SoundCraftManager;->soundCraftQpDetailAdapter:Lcom/android/systemui/audio/soundcraft/view/SoundCraftQpDetailAdapter;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/SecQSDetailController;->closeTargetDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V

    return-void
.end method
