.class public final Lcom/android/settings/biometrics/activeunlock/ActiveUnlockSummaryListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContentListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/activeunlock/ActiveUnlockStatusPreferenceController$1;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;

    const-string v5, "com.android.settings.summary"

    const-string v3, "ActiveUnlockSummaryListener"

    const-string v4, "getSummary"

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$OnContentChangedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockSummaryListener;->mContentListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;

    return-void
.end method
