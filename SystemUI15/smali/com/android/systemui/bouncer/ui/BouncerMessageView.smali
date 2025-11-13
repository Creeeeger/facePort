.class public final Lcom/android/systemui/bouncer/ui/BouncerMessageView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public primaryMessage:Lcom/android/keyguard/KeyguardSecMessageAreaController;

.field public primaryMessageView:Lcom/android/keyguard/BouncerKeyguardMessageArea;

.field public secondaryMessage:Lcom/android/keyguard/KeyguardSecMessageAreaController;

.field public secondaryMessageView:Lcom/android/keyguard/BouncerKeyguardMessageArea;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0d0066

    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d0066

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a01c3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    iput-object v0, p0, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->primaryMessageView:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    const v0, 0x7f0a01c5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/BouncerKeyguardMessageArea;

    iput-object v0, p0, Lcom/android/systemui/bouncer/ui/BouncerMessageView;->secondaryMessageView:Lcom/android/keyguard/BouncerKeyguardMessageArea;

    return-void
.end method
