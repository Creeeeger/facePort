.class public Lcom/samsung/android/settings/bixby/target/PinWindows;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "PinWindows.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    .line 11
    const-class v0, Lcom/samsung/android/settings/bixby/target/PinWindows;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/PinWindows;->TAG:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/PinWindows;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doGetAction()Landroid/os/Bundle;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/PinWindows;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public doSetAction(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 26
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/PinWindows;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->setLockToAppEnabled(Landroid/content/Context;Z)V

    const-string p1, "success"

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
