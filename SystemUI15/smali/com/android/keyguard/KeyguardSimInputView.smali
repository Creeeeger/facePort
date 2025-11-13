.class public abstract Lcom/android/keyguard/KeyguardSimInputView;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public disableESimButton:Lcom/android/keyguard/KeyguardEsimArea;

.field public simImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onFinishInflate()V

    const v0, 0x7f0a05c2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimInputView;->simImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a058a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardEsimArea;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimInputView;->disableESimButton:Lcom/android/keyguard/KeyguardEsimArea;

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputView;->onFinishInflate()V

    return-void
.end method
