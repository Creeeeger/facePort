.class public final synthetic Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    sget p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->START_POINT_FOR_LIMIT_WARNING:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
