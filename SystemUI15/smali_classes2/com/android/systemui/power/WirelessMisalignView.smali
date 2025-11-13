.class public Lcom/android/systemui/power/WirelessMisalignView;
.super Landroid/widget/RelativeLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mBackgroundArea:Landroid/widget/LinearLayout;

.field public mButton:Landroid/widget/Button;

.field public mCenterImageView:Landroid/widget/ImageView;

.field public mListener:Lcom/android/systemui/power/WirelessMisalignListener;

.field public final mOnClickListener:Lcom/android/systemui/power/WirelessMisalignView$1;

.field public mTextContainerLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/power/WirelessMisalignView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/power/WirelessMisalignView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/systemui/power/WirelessMisalignView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/WirelessMisalignView$1;-><init>(Lcom/android/systemui/power/WirelessMisalignView;)V

    iput-object p1, p0, Lcom/android/systemui/power/WirelessMisalignView;->mOnClickListener:Lcom/android/systemui/power/WirelessMisalignView$1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "PowerUI.WirelessMisalignView"

    const-string v0, "onClick : misalign view gone"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignViewVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mListener:Lcom/android/systemui/power/WirelessMisalignListener;

    check-cast p0, Lcom/android/systemui/power/SecPowerUI;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "PowerUI"

    const-string v0, "onWirelessMisalignCompleted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->removeMisalignView()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const-string v0, "PowerUI.WirelessMisalignView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a071b

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mBackgroundArea:Landroid/widget/LinearLayout;

    const v0, 0x7f0a071d

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mTextContainerLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a026b

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mCenterImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a071c

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/power/WirelessMisalignView;->mOnClickListener:Lcom/android/systemui/power/WirelessMisalignView$1;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mOnClickListener:Lcom/android/systemui/power/WirelessMisalignView$1;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isFlipSubDisplayOn(Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->WINDOW_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/power/WirelessMisalignView;->mBackgroundArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_0
    return-void
.end method

.method public final setWirelessMisalignViewVisibility(I)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setWirelessMisalignViewVisibility : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.WirelessMisalignView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
