.class final Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$backgroundInsets$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$backgroundInsets$2;->this$0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController$backgroundInsets$2;->this$0:Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;

    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewTransitionAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :cond_1
    return-object p0
.end method
