.class public final synthetic Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mGesturePreference:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->showOneHandModeDisablePopup()V

    return-void
.end method
