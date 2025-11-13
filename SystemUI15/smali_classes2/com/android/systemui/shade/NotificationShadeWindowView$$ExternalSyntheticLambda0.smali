.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/view/FloatingActionMode;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/view/FloatingActionMode;

    sget v0, Lcom/android/systemui/shade/NotificationShadeWindowView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow()V

    const/4 p0, 0x1

    return p0
.end method
