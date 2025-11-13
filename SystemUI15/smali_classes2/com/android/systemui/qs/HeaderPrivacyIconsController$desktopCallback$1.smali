.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/DesktopManager$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrivacyItemStateRequested()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$desktopCallback$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/util/DesktopManager;->notifyPrivacyItemsChanged(Z)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/util/DesktopManager;->notifyPrivacyItemsChanged(Z)V

    :goto_0
    return-void
.end method
