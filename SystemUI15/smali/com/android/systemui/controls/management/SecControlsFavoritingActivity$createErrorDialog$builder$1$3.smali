.class public final Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$3;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity$createErrorDialog$builder$1$3;->this$0:Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget p2, Lcom/android/systemui/controls/management/SecControlsFavoritingActivity;->$r8$clinit:I

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
