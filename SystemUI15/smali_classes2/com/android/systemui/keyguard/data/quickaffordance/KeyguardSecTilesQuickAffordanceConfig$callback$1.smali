.class public final Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardSecTilesQuickAffordanceConfig$callback$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3

    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const-string/jumbo v0, "spec name: "

    const-string v1, ", tile state: "

    const-string v2, "KeyguardSecTilesQuickAffordanceConfig"

    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->updateShortcutIcons()V

    return-void
.end method
