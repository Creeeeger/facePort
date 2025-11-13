.class public final Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mOnGlobalLayoutListener:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusSubTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ca5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ca4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->mStatusViewLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
