.class public final Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;->this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;->this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    return-void
.end method
