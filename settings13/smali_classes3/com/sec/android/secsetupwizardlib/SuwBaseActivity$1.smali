.class Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;
.super Ljava/lang/Object;
.source "SuwBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;->this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "i",
            "i1",
            "i2",
            "i3"
        }
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity$1;->this$0:Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;

    invoke-virtual {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->isScrollBottomReached()Z

    return-void
.end method
