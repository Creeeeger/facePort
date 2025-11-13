.class public final Lcom/android/wm/shell/windowdecor/DexMorePopup$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DexMorePopup;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DexMorePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup$2;->this$0:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup$2;->this$0:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->releaseView()V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup$2;->this$0:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup$2;->this$0:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsPopupShowing:Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
