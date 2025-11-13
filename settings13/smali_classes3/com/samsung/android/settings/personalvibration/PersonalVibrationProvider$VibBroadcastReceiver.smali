.class Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonalVibrationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver;-><init>(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 654
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 655
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 656
    iget-object p0, p0, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider$VibBroadcastReceiver;->this$0:Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;

    invoke-static {p0}, Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;->-$$Nest$mupdateSilentPatternName(Lcom/samsung/android/settings/personalvibration/PersonalVibrationProvider;)V

    :cond_0
    return-void
.end method
