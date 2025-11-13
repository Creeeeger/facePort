.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public background:I

.field public createdPanelView:Landroid/view/View;

.field public decorView:Landroidx/appcompat/app/AppCompatDelegateImpl$ListMenuDecorView;

.field public final featureId:I

.field public frozenActionViewState:Landroid/os/Bundle;

.field public gravity:I

.field public isHandled:Z

.field public isOpen:Z

.field public isPrepared:Z

.field public listMenuPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

.field public listPresenterContext:Landroidx/appcompat/view/ContextThemeWrapper;

.field public menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field public refreshDecorView:Z

.field public refreshMenuContent:Z

.field public shownPanelView:Landroid/view/View;

.field public windowAnimations:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->featureId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$PanelFeatureState;->refreshDecorView:Z

    return-void
.end method
