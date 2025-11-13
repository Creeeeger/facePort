.class public final Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibilityUpdated(II)V
    .locals 3

    const-string v0, "onVisibilityUpdated() "

    const-string v1, ", "

    const-string v2, "KeyguardStatusBarViewController"

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconAreaView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a0c1e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconAreaView:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardLeftSideContainerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v1, 0x7f0a05a3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardLeftSideContainerView:Landroid/view/ViewGroup;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconAreaView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardLeftSideContainerView:Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mStatusIconAreaView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    if-eq p2, v1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardLeftSideContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p2, p1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->mKeyguardLeftSideContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p0, "onVisibilityUpdated() no views "

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
