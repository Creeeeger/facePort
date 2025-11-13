.class public final Lcom/android/systemui/volume/view/icon/SubVolumeIcon;
.super Lcom/android/systemui/volume/view/icon/VolumeIcon;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/view/icon/VolumeIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/Button;

    const-string p0, "android.widget.Button"

    return-object p0
.end method

.method public final getScreenState()Lcom/android/systemui/volume/view/icon/ScreenState;
    .locals 0

    sget-boolean p0, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_SUB_LARGE_DISPLAY:Lcom/android/systemui/volume/view/icon/ScreenState;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/volume/view/icon/ScreenState;->SCREEN_SUB_DISPLAY:Lcom/android/systemui/volume/view/icon/ScreenState;

    :goto_0
    return-object p0
.end method

.method public final inflateIconView(Z)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {p1}, Lcom/android/systemui/volume/view/icon/VolumeIcons;->isForMediaIcon(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0d0566

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0560

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_3

    :cond_1
    iget p1, p0, Lcom/android/systemui/volume/view/icon/VolumeIcon;->stream:I

    invoke-static {p1}, Lcom/samsung/systemui/splugins/volume/VolumePanelValues;->isRing(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_2

    const p1, 0x7f0d0567

    goto :goto_1

    :cond_2
    const p1, 0x7f0d0561

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_4

    const p1, 0x7f0d0564

    goto :goto_2

    :cond_4
    const p1, 0x7f0d055e

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    if-eqz p1, :cond_6

    const p1, 0x7f0d0565

    goto :goto_4

    :cond_6
    const p1, 0x7f0d055f

    :goto_4
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_5
    return-object p0
.end method

.method public final initVolumeIconColor(III)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-boolean p2, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_WATCHFACE_VOLUME_DIALOG:Z

    const p3, 0x7f060976

    if-eqz p2, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const v0, 0x7f06096f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const p3, 0x7f06096e

    :goto_1
    invoke-virtual {v0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060971

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/volume/view/icon/VolumeIcon;->initVolumeIconColor(III)V

    return-void
.end method
