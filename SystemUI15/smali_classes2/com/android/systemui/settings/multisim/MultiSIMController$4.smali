.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$4;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$4;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$4;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCurrentDefaultSlot(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PreferedVoiceObserver onChange():"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$4;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    const-string v0, "MultiSIMController"

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method
