.class public final synthetic Lcom/android/wm/shell/common/DismissView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DismissView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DismissView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DismissView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DismissView;

    iput-boolean p2, p0, Lcom/android/wm/shell/common/DismissView$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/DismissView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DismissView;

    iget-boolean p0, p0, Lcom/android/wm/shell/common/DismissView$$ExternalSyntheticLambda0;->f$1:Z

    if-eqz p0, :cond_0

    iget v1, v0, Lcom/android/wm/shell/common/DismissView;->mAccessibilityTextResId:I

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lcom/android/wm/shell/common/DismissView;->mAccessibilityTextResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/wm/shell/common/DismissView;->$r8$clinit:I

    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DismissView;->updateResources(Z)V

    return-void
.end method
