.class final enum Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$3;
.super Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;
.source "VibPickerListItemViewType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$3-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$3;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getRoundMode()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 48
    sget p0, Lcom/android/settings/R$layout;->sec_vibpicker_list_item_single_choice:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0xc

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 51
    sget p2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    .line 52
    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 51
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    return-object p0
.end method
