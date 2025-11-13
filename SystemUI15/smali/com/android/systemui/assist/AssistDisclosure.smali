.class public final Lcom/android/systemui/assist/AssistDisclosure;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mShowRunnable:Lcom/android/systemui/assist/AssistDisclosure$1;

.field public mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

.field public mViewAdded:Z

.field public final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistDisclosure$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Lcom/android/systemui/assist/AssistDisclosure$1;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mWm:Landroid/view/WindowManager;

    return-void
.end method
