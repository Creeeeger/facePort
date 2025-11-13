.class public final Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;->this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;->this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    return-void
.end method
