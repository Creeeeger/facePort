.class public final synthetic Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/gestures/SystemNavigationGestureSettings;

    iget-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->mLaunchSandboxIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
