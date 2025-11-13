.class public final Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$H;->this$0:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->handleHide$2()V

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowContextRootDisplayAreaId:I

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->handleHide$2()V

    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mDisplayContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mConfirm:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$3;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v7, 0x1000120

    const/4 v8, -0x3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x7e1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    not-int v2, v2

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20020010

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x103030e

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->createWindowManager(I)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/systemui/statusbar/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Fail to show the immersive confirmation window because of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImmersiveModeConfirm"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
