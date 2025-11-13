.class public final Lcom/android/systemui/blur/SecCoverBlurController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

.field public final mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/blur/QSColorCurve;

    invoke-direct {v0, p1}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    iput-object p2, p0, Lcom/android/systemui/blur/SecCoverBlurController;->mRootView:Landroid/view/View;

    return-void
.end method
