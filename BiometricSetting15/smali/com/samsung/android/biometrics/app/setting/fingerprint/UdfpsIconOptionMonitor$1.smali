.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor$1;
.super Landroid/database/ContentObserver;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->updateValue()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
