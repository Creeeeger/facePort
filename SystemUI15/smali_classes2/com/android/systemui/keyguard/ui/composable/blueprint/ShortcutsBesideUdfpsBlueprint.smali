.class public final Lcom/android/systemui/keyguard/ui/composable/blueprint/ShortcutsBesideUdfpsBlueprint;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/ui/composable/blueprint/ComposableLockscreenSceneBlueprint;


# instance fields
.field public final ambientIndicationSectionOptional:Ljava/util/Optional;

.field public final bottomAreaSection:Lcom/android/systemui/keyguard/ui/composable/section/BottomAreaSection;

.field public final id:Ljava/lang/String;

.field public final lockSection:Lcom/android/systemui/keyguard/ui/composable/section/LockSection;

.field public final notificationSection:Lcom/android/systemui/keyguard/ui/composable/section/NotificationSection;

.field public final settingsMenuSection:Lcom/android/systemui/keyguard/ui/composable/section/SettingsMenuSection;

.field public final statusBarSection:Lcom/android/systemui/keyguard/ui/composable/section/StatusBarSection;

.field public final topAreaSection:Lcom/android/systemui/keyguard/ui/composable/section/TopAreaSection;

.field public final viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;Lcom/android/systemui/keyguard/ui/composable/section/StatusBarSection;Lcom/android/systemui/keyguard/ui/composable/section/LockSection;Ljava/util/Optional;Lcom/android/systemui/keyguard/ui/composable/section/BottomAreaSection;Lcom/android/systemui/keyguard/ui/composable/section/SettingsMenuSection;Lcom/android/systemui/keyguard/ui/composable/section/TopAreaSection;Lcom/android/systemui/keyguard/ui/composable/section/NotificationSection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/LockscreenContentViewModel;",
            "Lcom/android/systemui/keyguard/ui/composable/section/StatusBarSection;",
            "Lcom/android/systemui/keyguard/ui/composable/section/LockSection;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/systemui/keyguard/ui/composable/section/BottomAreaSection;",
            "Lcom/android/systemui/keyguard/ui/composable/section/SettingsMenuSection;",
            "Lcom/android/systemui/keyguard/ui/composable/section/TopAreaSection;",
            "Lcom/android/systemui/keyguard/ui/composable/section/NotificationSection;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p1, "shortcuts-besides-udfps"

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/composable/blueprint/ShortcutsBesideUdfpsBlueprint;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/composable/blueprint/ShortcutsBesideUdfpsBlueprint;->id:Ljava/lang/String;

    return-object p0
.end method
