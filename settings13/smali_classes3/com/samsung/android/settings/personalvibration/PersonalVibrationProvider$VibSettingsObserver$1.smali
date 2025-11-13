.class Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver$1;
.super Ljava/lang/Object;
.source "PersonalVibrationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver$1;->this$1:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver$1;->this$1:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;

    iget-object p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibSettingsObserver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    invoke-static {p0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$mupdateSilentPatternName(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)V

    return-void
.end method
