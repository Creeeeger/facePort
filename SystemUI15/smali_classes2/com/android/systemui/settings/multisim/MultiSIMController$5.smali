.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$5;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isRestrictionsForMmsUse()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mMultiSimDataCrossSlotObserver onChange() "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    const-string v1, "MultiSIMController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$5;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method
