.class public final Lcom/android/systemui/keyguard/ui/view/layout/blueprints/DefaultKeyguardBlueprint;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/shared/model/KeyguardBlueprint;


# instance fields
.field public final id:Ljava/lang/String;

.field public final sections:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/DefaultKeyguardBlueprint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/DefaultKeyguardBlueprint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/layout/sections/AccessibilityActionsSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;Ljava/util/Optional;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultSettingsPopupMenuSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusBarSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultNotificationStackScrollLayoutSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/AodNotificationIconsSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection;Lcom/android/systemui/communal/ui/view/layout/sections/CommunalTutorialIndicatorSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/ClockSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/KeyguardSliceViewSection;Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/AccessibilityActionsSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultIndicationAreaSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultDeviceEntrySection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultShortcutsSection;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/keyguard/shared/model/KeyguardSection;",
            ">;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultSettingsPopupMenuSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusViewSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultStatusBarSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultNotificationStackScrollLayoutSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/AodNotificationIconsSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/AodBurnInSection;",
            "Lcom/android/systemui/communal/ui/view/layout/sections/CommunalTutorialIndicatorSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/ClockSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/SmartspaceSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/KeyguardSliceViewSection;",
            "Lcom/android/systemui/keyguard/ui/view/layout/sections/DefaultUdfpsAccessibilityOverlaySection;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "default"

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/DefaultKeyguardBlueprint;->id:Ljava/lang/String;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/android/systemui/keyguard/shared/model/KeyguardSection;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x0

    move-object v3, p5

    invoke-virtual {p5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    const/16 v2, 0x9

    aput-object p14, v1, v2

    const/16 v2, 0xa

    aput-object p11, v1, v2

    const/16 v2, 0xb

    aput-object p12, v1, v2

    const/16 v2, 0xc

    aput-object p13, v1, v2

    const/16 v2, 0xd

    aput-object p15, v1, v2

    const/16 v2, 0xe

    aput-object p3, v1, v2

    const/16 v2, 0xf

    aput-object p16, v1, v2

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/DefaultKeyguardBlueprint;->sections:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/DefaultKeyguardBlueprint;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getSections()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/blueprints/DefaultKeyguardBlueprint;->sections:Ljava/util/List;

    return-object p0
.end method
