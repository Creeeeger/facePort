.class public final Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewAlpha$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $a:F

.field public final synthetic $this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewAlpha$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewAlpha$1$1;->$a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewAlpha$1$1;->$this_apply:Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutRepository$updateKeyguardStatusBarViewAlpha$1$1;->$a:F

    iget v1, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->keyguardStatusBarViewAlpha:F

    cmpg-float v1, v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput p0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->keyguardStatusBarViewAlpha:F

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/phone/nio/KeyguardStatusBarNioLayoutModel;->isUpdatedModel:Z

    :goto_0
    return-void
.end method
