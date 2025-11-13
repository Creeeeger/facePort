.class public final Lcom/android/keyguard/ClockEventController$configListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$configListener$1;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDensityOrFontScaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$configListener$1;->this$0:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->updateFontSizes()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$configListener$1;->this$0:Lcom/android/keyguard/ClockEventController;

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onColorPaletteChanged(Landroid/content/res/Resources;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->updateColors()V

    return-void
.end method
