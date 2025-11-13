.class public final synthetic Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iput p2, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$$ExternalSyntheticLambda0;->f$1:I

    iget v1, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavMode:I

    if-eq p0, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->updateNavbarForTaskbar()Z

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p0, v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBar;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBar;->getView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
