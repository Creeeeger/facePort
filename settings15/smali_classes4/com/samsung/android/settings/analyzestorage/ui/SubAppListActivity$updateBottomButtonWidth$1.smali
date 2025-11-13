.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $button:Landroid/widget/Button;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;


# direct methods
.method public constructor <init>(Landroid/widget/Button;Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;->$button:Landroid/widget/Button;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;->$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;->$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v1, 0x7f0700ab

    goto :goto_1

    :cond_1
    const v1, 0x7f0700ae

    :goto_1
    if-eqz v0, :cond_2

    const v0, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_2
    const v0, 0x3f4ccccd    # 0.8f

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;->$button:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setMinWidth(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->listview$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;->$button:Landroid/widget/Button;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$updateBottomButtonWidth$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->listview$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setMaxWidth(I)V

    :cond_3
    return-void
.end method
