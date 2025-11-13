.class public final Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $this_run:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/SwitchCompat;Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$1;->$this_run:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$1;->$this_run:Landroidx/appcompat/widget/SwitchCompat;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness$setExtraBrightnessLayoutClickListener$2$1;->this$0:Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-static {p0, v0}, Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;->access$putExtraBrightness(Lcom/android/systemui/settings/brightness/QuickBarBrightnessExtraBrightness;Z)V

    return-void
.end method
