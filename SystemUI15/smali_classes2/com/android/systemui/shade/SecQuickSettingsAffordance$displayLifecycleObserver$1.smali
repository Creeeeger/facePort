.class public final Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayLifecycleObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/SecQuickSettingsAffordance;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayLifecycleObserver$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 2

    const-string v0, "onFolderStateChanged isOpened = "

    const-string v1, "SecQuickSettingsAffordance"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->INIT_PROPERTY_FIELDS:[Lcom/android/systemui/util/AnimHelper$AnimationType;

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsAffordance$displayLifecycleObserver$1;->this$0:Lcom/android/systemui/shade/SecQuickSettingsAffordance;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecQuickSettingsAffordance;->removeView()V

    return-void
.end method
