.class public final synthetic Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsBouncerShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->BOUNCER:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->captureAndSetBackground(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsFullScreenBlurShowing:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->FULL_SCREEN:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->captureAndSetBackground(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;Z)V

    :cond_1
    return-void
.end method
