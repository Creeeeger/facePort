.class public final Lcom/android/systemui/keyguard/ui/view/layout/sections/SplitShadeNotificationStackScrollLayoutSection;
.super Lcom/android/systemui/keyguard/ui/view/layout/sections/NotificationStackScrollLayoutSection;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/statusbar/notification/stack/ui/view/SharedNotificationContainer;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/SharedNotificationContainerViewModel;Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/SharedNotificationContainerBinder;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/keyguard/ui/view/layout/sections/NotificationStackScrollLayoutSection;-><init>(Landroid/content/Context;Lcom/android/systemui/shade/NotificationPanelView;Lcom/android/systemui/statusbar/notification/stack/ui/view/SharedNotificationContainer;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/SharedNotificationContainerViewModel;Lcom/android/systemui/statusbar/notification/stack/ui/viewbinder/SharedNotificationContainerBinder;)V

    return-void
.end method


# virtual methods
.method public final applyConstraints(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    return-void
.end method
