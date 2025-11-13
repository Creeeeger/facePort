.class public final Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final context:Landroid/content/Context;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final footerActionsInteractor:Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractor;

.field public final globalActionsDialogLiteProvider:Ljavax/inject/Provider;

.field public final showPowerButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractor;Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractor;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p5, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method
