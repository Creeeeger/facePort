.class public final synthetic Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    sget p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mHBMText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    sget p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onBrightnessChanged()  brightnessValue: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BrightnessSeekBarPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    iget-object p0, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getCurrentProgress()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->animateSliderTo(I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
