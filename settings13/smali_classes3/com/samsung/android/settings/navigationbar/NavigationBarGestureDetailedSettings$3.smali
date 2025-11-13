.class Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$3;
.super Landroid/view/IRotationWatcher$Stub;
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
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->-$$Nest$fgetmIndicatorView(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$3;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->-$$Nest$fgetmIndicatorView(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->setRotation(I)V

    :cond_0
    return-void
.end method
