.class public final Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable$illuminate$1$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;

    invoke-static {p1}, Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;->access$getRippleData$p(Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;)Lcom/android/systemui/media/controls/ui/drawable/RippleData;

    move-result-object p1

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/media/controls/ui/drawable/RippleData;->progress:F

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;->access$setRippleAnimation$p(Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable$illuminate$1$3;->this$0:Lcom/android/systemui/media/controls/ui/drawable/LightSourceDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
