.class public final Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->extraBrightnessSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-static {p0, v0}, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->access$putExtraBrightness(Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;Z)V

    :cond_0
    return-void
.end method
