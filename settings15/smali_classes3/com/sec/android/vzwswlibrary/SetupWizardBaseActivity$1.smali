.class public final Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;->this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity$1;->this$0:Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0713f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/vzwswlibrary/SetupWizardBaseActivity;->mRootLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_0
    return-void
.end method
