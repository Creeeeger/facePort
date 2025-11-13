.class public final Lcom/android/systemui/controls/BaseActivity$callback$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/BaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/BaseActivity$callback$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 2

    const-string v0, "BaseActivity"

    const-string v1, "handleOnBackPressed called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/controls/BaseActivity$callback$1;->this$0:Lcom/android/systemui/controls/BaseActivity;

    invoke-virtual {p0}, Lcom/android/systemui/controls/BaseActivity;->onBackKeyPressed()V

    return-void
.end method
