.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# instance fields
.field public badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public buttonClickCallback:Landroid/view/View$OnClickListener;

.field public launchButton:Landroid/widget/Button;

.field public launchButtonLayout:Landroid/widget/LinearLayout;

.field public noSpinner:Landroid/widget/TextView;

.field public previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

.field public spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

.field public spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

.field public spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->initView()V

    return-void
.end method


# virtual methods
.method public final initView()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0372

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v1, 0x7f0a02e7

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    iput-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    const v1, 0x7f0a0300

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    sget-object v1, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    const v2, 0x7f070271

    invoke-static {v1, v3, v2}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    const v1, 0x7f0a05f0

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->launchButtonLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a05ef

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->launchButton:Landroid/widget/Button;

    const p0, 0x3fa66666    # 1.3f

    const v1, 0x7f070252

    invoke-static {v0, v1, p0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    return-void
.end method
