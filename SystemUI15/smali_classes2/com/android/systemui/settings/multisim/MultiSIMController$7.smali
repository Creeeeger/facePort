.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$7;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$7;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    return-void
.end method
