.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthClient;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v0, Landroid/app/SemStatusBarManager;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/SemStatusBarManager;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
