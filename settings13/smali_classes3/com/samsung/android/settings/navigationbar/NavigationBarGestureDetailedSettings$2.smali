.class Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;
.super Landroid/database/ContentObserver;
.source "NavigationBarGestureDetailedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;Landroid/os/Handler;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->-$$Nest$fgetmBackGesturePref(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->-$$Nest$fgetmBackGesturePref(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->getProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
