.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$1;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;Landroid/os/Handler;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 651
    iget-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-static {p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$mgetBrightness(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)I

    move-result p1

    .line 655
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$1;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;

    invoke-static {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->-$$Nest$fgetmOnBrightnessChangeListener(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Landroidx/core/util/Consumer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
