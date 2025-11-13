.class public final Lcom/android/systemui/shade/SecQuickSettingsAffordance$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_doOnPreDraw:Landroid/view/View;

.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;->$this_doOnPreDraw:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "SecQuickSettingsAffordance"

    const-string v1, "doOnPreDraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isVisibleView:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->updateLayoutVisibility()V

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$updateLayoutAndAnimators$$inlined$doOnPreDraw$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->showing(Ljava/lang/Runnable;)V

    return-void
.end method
