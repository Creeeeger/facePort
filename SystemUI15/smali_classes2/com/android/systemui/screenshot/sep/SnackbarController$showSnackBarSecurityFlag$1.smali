.class public final Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/sep/SnackbarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/sep/SnackbarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;->this$0:Lcom/android/systemui/screenshot/sep/SnackbarController;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissed(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SnackbarController$showSnackBarSecurityFlag$1;->this$0:Lcom/android/systemui/screenshot/sep/SnackbarController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/sep/SnackbarController;->cb:Lcom/android/systemui/screenshot/sep/SnackbarController$DismissedCallback;

    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->detachSemScreenshotLayoutToWindow()V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/systemui/screenshot/ScreenshotController;->mIsSnackBarShowing:Z

    return-void
.end method
