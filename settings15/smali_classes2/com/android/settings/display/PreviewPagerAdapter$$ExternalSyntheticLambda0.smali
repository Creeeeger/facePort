.class public final synthetic Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/display/PreviewPagerAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/display/PreviewPagerAdapter;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/PreviewPagerAdapter;

    iput p2, p0, Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/display/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/settings/display/PreviewPagerAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/ViewStub;->getVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/android/settings/display/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object p1, p1, v1

    const/4 p2, 0x1

    aput-boolean p2, p1, p0

    return-void
.end method
