.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mContext:Landroid/content/Context;

.field public final mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 15
    .line 16
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final putIntDb(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0, p2, p3, p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
