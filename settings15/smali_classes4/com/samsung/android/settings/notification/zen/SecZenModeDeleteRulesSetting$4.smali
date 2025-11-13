.class public final Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 8

    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting$4;->this$0:Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;

    iget-object p2, p0, Lcom/samsung/android/settings/notification/zen/SecZenModeDeleteRulesSetting;->mSelectedZenRuleTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-le p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p0, p0

    const v0, 0x3e3851eb    # 0.17999999f

    mul-float/2addr v0, p0

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr p0, v2

    const/high16 v2, 0x43160000    # 150.0f

    div-float/2addr v2, v0

    int-to-float p1, p1

    sub-float/2addr p1, p0

    mul-float/2addr p1, v2

    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_0

    const-wide v6, 0x406fe00000000000L    # 255.0

    cmpg-double p0, v2, v6

    if-gtz p0, :cond_0

    const/high16 p0, 0x437f0000    # 255.0f

    div-float v1, p1, p0

    goto :goto_0

    :cond_0
    cmpg-double p0, v2, v4

    if-gez p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    return-void
.end method
