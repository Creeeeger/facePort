.class public final Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mFail:Landroid/widget/ImageView;

.field public final mIgnore:Landroid/widget/ImageView;

.field public final mStandBy:Landroid/widget/ImageView;

.field public mState:I

.field public final mSuccess:Landroid/widget/ImageView;

.field public final mTimeUp:Landroid/widget/ImageView;

.field public final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mState:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d044d

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mView:Landroid/view/View;

    const v0, 0x7f0a0fd2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mStandBy:Landroid/widget/ImageView;

    const v0, 0x7f0a0fd3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mSuccess:Landroid/widget/ImageView;

    const v0, 0x7f0a0fcf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mIgnore:Landroid/widget/ImageView;

    const v0, 0x7f0a0fd4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mTimeUp:Landroid/widget/ImageView;

    const v0, 0x7f0a0fcd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mFail:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mSuccess:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mFail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mStandBy:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final success()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mIgnore:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mStandBy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/touchsettings/IgnoreRepeatedTouchesExperienceCircleView;->mSuccess:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
