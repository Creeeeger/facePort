.class public final Lcom/android/systemui/settings/brightness/BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final autoBrightnessContainer:Lkotlin/jvm/functions/Function0;

.field public final autoBrightnessSwitch:Lkotlin/jvm/functions/Function0;

.field public final context:Landroid/content/Context;

.field public final isSwitchChecked:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessObserver;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/brightness/BrightnessObserver;->autoBrightnessContainer:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/settings/brightness/BrightnessObserver;->autoBrightnessSwitch:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/systemui/settings/brightness/BrightnessObserver;->isSwitchChecked:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    sget-object p1, Lcom/android/systemui/settings/brightness/SecBrightnessController;->Companion:Lcom/android/systemui/settings/brightness/SecBrightnessController$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/settings/brightness/SecBrightnessController;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/settings/brightness/SecBrightnessController;->SCREEN_DISPLAY_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessObserver;->autoBrightnessContainer:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessObserver;->autoBrightnessSwitch:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessObserver;->isSwitchChecked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_2
    return-void
.end method
