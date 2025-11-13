.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;-><init>()V

    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$onFinishInflate$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-class v0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method
