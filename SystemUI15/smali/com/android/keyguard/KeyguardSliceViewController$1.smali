.class public final Lcom/android/keyguard/KeyguardSliceViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSliceViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSliceViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSliceViewController$1;->this$0:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController$1;->this$0:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSliceViewController;->access$000(Lcom/android/keyguard/KeyguardSliceViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSliceView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSliceViewController$1;->this$0:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSliceViewController;->access$100(Lcom/android/keyguard/KeyguardSliceViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSliceView;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSliceView;->mRow:Lcom/android/keyguard/KeyguardSliceView$Row;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;

    const v2, 0x7f140492

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
