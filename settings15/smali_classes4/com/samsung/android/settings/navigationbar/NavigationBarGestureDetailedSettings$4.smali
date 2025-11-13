.class public final Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;
.super Landroid/view/IRotationWatcher$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRotationChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    if-eqz p0, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRotation:I

    :cond_0
    return-void
.end method
