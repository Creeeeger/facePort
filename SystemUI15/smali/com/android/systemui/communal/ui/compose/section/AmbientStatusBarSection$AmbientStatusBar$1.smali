.class final Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$1;->this$0:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d002f

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection$AmbientStatusBar$1;->this$0:Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/section/AmbientStatusBarSection;->factory:Lcom/android/systemui/ambient/statusbar/dagger/AmbientStatusBarComponent$Factory;

    invoke-interface {p0, p1}, Lcom/android/systemui/ambient/statusbar/dagger/AmbientStatusBarComponent$Factory;->create(Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarView;)Lcom/android/systemui/ambient/statusbar/dagger/AmbientStatusBarComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/ambient/statusbar/dagger/AmbientStatusBarComponent;->getController()Lcom/android/systemui/ambient/statusbar/ui/AmbientStatusBarViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-object p1
.end method
