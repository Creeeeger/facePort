.class public final Lcom/android/systemui/screenshot/sep/SnackbarController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cb:Lcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;

.field public final context:Landroid/content/Context;

.field public final displayId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->context:Landroid/content/Context;

    iput p2, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->displayId:I

    iput-object p3, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->cb:Lcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;

    return-void
.end method


# virtual methods
.method public final showScreenshotError(Landroid/view/View;Lcom/android/systemui/screenshot/sep/SemScreenshotResult;)V
    .locals 4

    iget p2, p2, Lcom/android/systemui/screenshot/sep/SemScreenshotResult;->failedReason:I

    and-int/lit8 v0, p2, 0x10

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f130534

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iget v3, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->displayId:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiWindowModeStates(I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f130533

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {v2, p1, p2, v1, v1}, Lcom/google/android/material/snackbar/Snackbar;->makeInternal(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;-><init>(Lcom/android/systemui/screenshot/sep/SnackbarController;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)V

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_2
    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f130531

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2, v1, v1}, Lcom/google/android/material/snackbar/Snackbar;->makeInternal(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f131440

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarMdm$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarMdm$1;-><init>(Lcom/android/systemui/screenshot/sep/SnackbarController;Landroid/view/View;)V

    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarMdm$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarMdm$2;-><init>(Lcom/android/systemui/screenshot/sep/SnackbarController;)V

    invoke-virtual {p2, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)V

    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->cb:Lcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->detachSemScreenshotLayoutToWindow()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/screenshot/ScreenshotController;->mIsSnackBarShowing:Z

    :goto_0
    return-void
.end method
