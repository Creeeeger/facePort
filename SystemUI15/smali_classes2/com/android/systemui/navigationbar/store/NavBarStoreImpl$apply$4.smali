.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public final synthetic $vis:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$4;->$navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    iput p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$4;->$vis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$4;->$navBar:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$apply$4;->$vis:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
