.class public final synthetic Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1$onReceive$1;->$tmp0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor$broadcastReceiver$1$onReceive$1;->$tmp0:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "PanelAffordanceCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v2, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
