.class final enum Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$4;
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

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType;-><init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$4-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/as/vibration/VibPickerListItemViewType$4;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getRoundMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 64
    sget p0, Lcom/android/settings/R$layout;->sec_vibpicker_footer:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
