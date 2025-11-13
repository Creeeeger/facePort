.class public final Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSelectedInternal:Landroid/widget/LinearLayout;

.field public final mSelectedMic:Landroid/widget/LinearLayout;

.field public final mSelectedMicAndInternal:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const p1, 0x7f130fe7

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getSelected(I)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedInternal:Landroid/widget/LinearLayout;

    const p1, 0x7f130fe8

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getSelected(I)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedMic:Landroid/widget/LinearLayout;

    const p1, 0x7f130fe5

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getSelected(I)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedMicAndInternal:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter$1;->$SwitchMap$com$android$systemui$screenrecord$ScreenRecordingAudioSource:[I

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f130fe8

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getOption(II)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f130fe5

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getOption(II)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f130fe7

    const p2, 0x7f130fe6

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->getOption(II)Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public final getOption(II)Landroid/widget/LinearLayout;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7f0d034d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0a34

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0a0a33

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p0
.end method

.method public final getSelected(I)Landroid/widget/LinearLayout;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7f0d034e

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0a34

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter$1;->$SwitchMap$com$android$systemui$screenrecord$ScreenRecordingAudioSource:[I

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedMic:Landroid/widget/LinearLayout;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedMicAndInternal:Landroid/widget/LinearLayout;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/ScreenRecordingAdapter;->mSelectedInternal:Landroid/widget/LinearLayout;

    return-object p0
.end method
