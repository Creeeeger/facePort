.class public final Lcom/android/systemui/navigationbar/NavigationBar$8;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$8;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockTaskModeChanged(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$8;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    const-wide/16 v0, 0x1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayId:I

    invoke-virtual {v2, p1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1700(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mScreenPinningActive:Z

    iput-boolean v0, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningActive:Z

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    return-void
.end method
