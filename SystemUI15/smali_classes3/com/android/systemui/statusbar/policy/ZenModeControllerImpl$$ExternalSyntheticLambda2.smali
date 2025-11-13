.class public final synthetic Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final synthetic f$1:Landroid/database/ContentObserver;

.field public final synthetic f$2:Landroid/database/ContentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/database/ContentObserver;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda2;->f$2:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda2;->f$1:Landroid/database/ContentObserver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$$ExternalSyntheticLambda2;->f$2:Landroid/database/ContentObserver;

    const-string/jumbo v2, "zen_mode"

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Ljava/lang/String;Landroid/database/ContentObserver;)V

    const-string/jumbo v1, "zen_mode_config_etag"

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Ljava/lang/String;Landroid/database/ContentObserver;)V

    return-void
.end method
