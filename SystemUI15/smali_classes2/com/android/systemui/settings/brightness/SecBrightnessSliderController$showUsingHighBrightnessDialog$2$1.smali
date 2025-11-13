.class public final Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController$showUsingHighBrightnessDialog$2$1;->this$0:Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/SecBrightnessSliderController;->view:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, -0x2

    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method
