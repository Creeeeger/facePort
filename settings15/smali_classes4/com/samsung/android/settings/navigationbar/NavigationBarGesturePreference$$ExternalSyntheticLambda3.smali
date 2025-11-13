.class public final synthetic Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateRadioButtonSelectState()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    return-void
.end method
