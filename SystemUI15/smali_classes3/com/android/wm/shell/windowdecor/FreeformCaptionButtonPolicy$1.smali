.class public final Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$pinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy;Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy$1;->val$pinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformCaptionButtonPolicy$1;->val$pinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method
