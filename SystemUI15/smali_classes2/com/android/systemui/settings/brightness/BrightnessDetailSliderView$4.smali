.class public final Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView$4;->this$0:Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mUsingHighBrightnessDialogEnabled:Z

    iget p1, p0, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->mDualSeekBarThreshold:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessDetailSliderView;->setValue(I)V

    return-void
.end method
