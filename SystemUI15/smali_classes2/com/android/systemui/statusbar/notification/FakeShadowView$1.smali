.class public final Lcom/android/systemui/statusbar/notification/FakeShadowView$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/FakeShadowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/FakeShadowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView$1;->this$0:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView$1;->this$0:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView$1;->this$0:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mFakeShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p1, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView$1;->this$0:Lcom/android/systemui/statusbar/notification/FakeShadowView;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/FakeShadowView;->mOutlineAlpha:F

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method
