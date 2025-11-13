.class public final Lcom/android/systemui/shade/SecQuickSettingsAffordance$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$settingsListener$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "split_quick_panel_reversed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$settingsListener$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-static {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->access$getSettingsHelper$p(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isReversed:Z

    iget-boolean p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->isReversed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnChangedCallback isReversed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecQuickSettingsAffordance"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->removeView()V

    :cond_0
    return-void
.end method
