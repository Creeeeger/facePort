.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastTspVisibilityCommand:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;->mLastTspVisibilityCommand:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method
