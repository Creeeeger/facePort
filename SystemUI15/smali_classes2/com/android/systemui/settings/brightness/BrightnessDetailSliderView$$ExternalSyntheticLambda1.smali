.class public final synthetic Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_brightness_mode"

    const/4 p2, 0x1

    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
