.class public final Lcom/google/android/setupcompat/internal/TemplateLayout$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupcompat/internal/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout$1;->this$0:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout$1;->this$0:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout$1;->this$0:Lcom/google/android/setupcompat/internal/TemplateLayout;

    iget-object v1, v1, Lcom/google/android/setupcompat/internal/TemplateLayout;->preDrawListener:Lcom/google/android/setupcompat/internal/TemplateLayout$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout$1;->this$0:Lcom/google/android/setupcompat/internal/TemplateLayout;

    iget v0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->xFraction:F

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->setXFraction(F)V

    const/4 p0, 0x1

    return p0
.end method
