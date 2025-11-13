.class final enum Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType$3;
.super Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/asbase/vibration/VibPickerListItemViewType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# virtual methods
.method public final getRoundMode()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public final getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const p0, 0x7f0d09e6

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/view/View;->semSetRoundedCorners(I)V

    const p2, 0x7f060738

    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-object p0
.end method
