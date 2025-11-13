.class public final synthetic Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x42

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_5

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    goto :goto_0

    :cond_3
    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsTouchEffectEnabled:Z

    if-nez p0, :cond_4

    const p0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    move v1, p3

    :cond_5
    :goto_0
    return v1
.end method
