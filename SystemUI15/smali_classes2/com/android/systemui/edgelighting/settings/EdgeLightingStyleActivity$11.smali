.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_5

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    sget-object v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f130589

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurThickness:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f13058a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurTransparency:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1305ba

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mLightingController:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingController;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->getEdgeLightingColor()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showPreviewEdgeLighting([I)V

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->-$$Nest$mupdatePreviewEdgeLighting(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mCurDuration:I

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting(I)V

    return-void
.end method
