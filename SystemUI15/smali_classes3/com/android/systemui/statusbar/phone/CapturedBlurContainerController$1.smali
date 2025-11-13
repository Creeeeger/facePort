.class public final Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;->this$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "CapturedBlurContainerController"

    const-string v1, "Retry wallpaper screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$1;->this$0:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    sget-object v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->BOUNCER:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->captureAndSetBackground(Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;Z)V

    return-void
.end method
