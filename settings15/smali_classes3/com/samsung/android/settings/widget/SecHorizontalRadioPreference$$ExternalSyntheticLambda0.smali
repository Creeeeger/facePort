.class public final synthetic Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_3
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_4

    const p0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
